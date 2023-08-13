pipeline {
    agent any

    environment {
        MSBUILD_PATH = "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe"
        PROJECT_PATH = "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame"
        NUNIT_CONSOLE_PATH = "C:\\Program Files\\NUnit.Console-3.15.4\\bin\\net6.0\\nunit3-console.exe"
        SNYK_PATH = "C:\\Users\\marti\\Downloads\\snyk-win.exe"
        STAGING_SSH_KEY_PATH = "C:\\Users\\marti\\Downloads\\jenkins-linux.ppk"
        STAGING_SERVER = "ec2-user@54.253.240.3"
        STAGING_DIRECTORY = "/home/ec2-user/Staging/SimpleReactionGame"
        PROD_SSH_KEY_PATH = "C:\\Users\\marti\\Downloads\\jenkins-prod.ppk"
        PROD_SERVER = "ec2-user@13.211.239.85"
        PROD_DIRECTORY = "/home/ec2-user/Production"
    }

    stages {
        stage('Build') {
            steps {
                cleanWs()

                // Cleaning Solution and Build main solution using MSBuild (Microsoft Build)
                bat "\"${MSBUILD_PATH}\" \"${PROJECT_PATH}\"/SimpleReactionGame.sln /t:Clean /p:Configuration=Release"
                bat "\"${MSBUILD_PATH}\" \"${PROJECT_PATH}\"/SimpleReactionGame.sln /t:Build /p:Configuration=Release"
            }
        }

        stage('Unit and Integration Tests') {
            steps {
                // Using NUnit to run unit tests
                bat "\"${NUNIT_CONSOLE_PATH}\" \"${PROJECT_PATH}\"/UnitTest/bin/Release/net6.0/UnitTest.dll"
            }
        }

        stage('Code Analysis') {
            steps {
                script {
                    // Using SonarQube to run Code Analysis
                    withCredentials([string(credentialsId: 'sonarqube-token', variable: 'SONAR_TOKEN')]) {
                        bat "dotnet tool install --global dotnet-sonarscanner"
                        bat "dotnet sonarscanner begin /k:SimpleReactionGame /d:sonar.login=\"${SONAR_TOKEN}\""
                        bat "dotnet build \"${PROJECT_PATH}\""
                        bat "dotnet sonarscanner end /d:sonar.login=\"${SONAR_TOKEN}\""
                    }
                }
            }
        }

        stage('Security Scan') {
            steps {
                script {
                    // Using Snyk to run Security Code Scan
                    withCredentials([string(credentialsId: 'snyk-token', variable: 'SNYK_TOKEN')]) {
                        bat "${SNYK_PATH} auth ${SNYK_TOKEN}"
                        bat "${SNYK_PATH} test --all-projects"
                        bat 'exit 0'  // Ignore Snyk exit code for now
                    }
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                script {
                    // Deploying to EC2 Staging Instance
                    bat "echo y | plink -i \"${STAGING_SSH_KEY_PATH}\" ${STAGING_SERVER} exit"
                    bat "pscp -i \"${STAGING_SSH_KEY_PATH}\" -batch -r \"${PROJECT_PATH}\" ${STAGING_SERVER}:${STAGING_DIRECTORY}"
                }
            }
        }

        stage('Integration Tests on Staging') {
            steps {
                script {
                    // Running tests using dotnet test on Staging
                    bat "plink -i \"${STAGING_SSH_KEY_PATH}\" ${STAGING_SERVER} \"cd ${STAGING_DIRECTORY} && dotnet test\""
                }
            }
        }

        stage('Deploy to Production') {
            steps {
                script {
                    // Deploying to EC2 Production Instance
                    bat "echo y | plink -i \"${PROD_SSH_KEY_PATH}\" ${PROD_SERVER} exit"
                    bat "pscp -i \"${PROD_SSH_KEY_PATH}\" -batch -r \"${PROJECT_PATH}\" ${PROD_SERVER}:${PROD_DIRECTORY}"
                }
            }
        }
    }
}
