pipeline {
    agent any

    environment {
        MSBUILD_PATH = "C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe"
        PROJECT_PATH = "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame"
        NUNIT_CONSOLE_PATH = "C:\\Program Files\\NUnit.Console-3.15.4\\bin\\net6.0\\nunit3-console.exe"
        SNYK_PATH = "C:\\Users\\marti\\Downloads\\snyk-win.exe"
        STAGING_SSH_KEY_PATH = "C:\\Users\\marti\\Downloads\\jenkins-linux.ppk"
        STAGING_SERVER = "ec2-user@54.253.240.3"
        STAGING_DIRECTORY = "/home/ec2-user/Staging/"
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
                script {
                    // Using NUnit to run unit tests
                    def nunitTestCmd = "\"${NUNIT_CONSOLE_PATH}\" \"${PROJECT_PATH}\"/UnitTest/bin/Release/net6.0/UnitTest.dll"
                    def nunitTestResult = bat(script: nunitTestCmd, returnStatus: true)

                    if (nunitTestResult != 0) {
                                    currentBuild.result = "FAILURE"
                                    echo "NUnit Test failed."
                                    emailext body: "NUnit test failed for ${env.JOB_NAME}",
                                            subject: "NUnit Test Failure",
                                            to: "martindolores65@gmail.com"
                                } else {
                                    echo "NUnit Test Success."
                                    emailext body: "NUnit test success for ${env.JOB_NAME}",
                                            subject: "NUnit Test Success",
                                            to: "martindolores65@gmail.com"
                    }
                }
            }
        }

        stage('Code Analysis') {
            steps {
                script {
                    // Using SonarQube to run Code Analysis
                    withCredentials([string(credentialsId: 'sonarqube-token', variable: 'SONAR_TOKEN')]) {
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
                        dir(PROJECT_PATH)
                        {
                            bat "${SNYK_PATH} auth ${SNYK_TOKEN}"
                            
                            def snykTestCmd = "${SNYK_PATH} test --all-projects"
                            def snykTestResult = bat(script: snykTestCmd, returnStatus: true)
                            
                            if (snykTestResult != 0) {
                                currentBuild.result = "FAILURE"
                                echo "Snyk Security scan failed."
                                emailext body: "Snyk security scan failed for ${env.JOB_NAME}",
                                        subject: "Snyk Security Scan Failure",
                                        to: "martindolores65@gmail.com"
                            } else {
                                echo "Snyk Security scan success."
                                emailext body: "Snyk security scan success for ${env.JOB_NAME}",
                                        subject: "Snyk Security Scan Success",
                                        to: "martindolores65@gmail.com"
                            }
                        }
                    }
                }
            }
        }

        stage('Deploy to Staging') {
            steps {
                script {
                    // Deploying to EC2 Staging Instance
                    bat "echo y | plink -i \"${STAGING_SSH_KEY_PATH}\" ${STAGING_SERVER} exit"
                    bat "plink -i \"${STAGING_SSH_KEY_PATH}\" ${STAGING_SERVER} sudo rm -r /home/ec2-user/Staging/SimpleReactionGame"
                    bat "pscp -i \"${STAGING_SSH_KEY_PATH}\" -batch -r \"${PROJECT_PATH}\" ${STAGING_SERVER}:${STAGING_DIRECTORY}"
                }
            }
        }

        stage('Integration Tests on Staging') {
            steps {
                script {
                    // Running tests using dotnet test on Staging
                    def nunitStageTestCmd = "plink -i \"${STAGING_SSH_KEY_PATH}\" ${STAGING_SERVER} \"cd ${STAGING_DIRECTORY}/SimpleReactionGame && dotnet test\""
                    def nunitStageTestResult = bat(script: nunitStageTestCmd, returnStatus: true)

                    if (nunitTestResult != 0) {
                                currentBuild.result = "FAILURE"
                                echo "NUnit Stage Test failed."
                                emailext body: "NUnit stage test failed for ${env.JOB_NAME}",
                                        subject: "NUnit Stage Test Failure",
                                        to: "martindolores65@gmail.com"
                            } else {
                                echo "NUnit Stage Test Success."
                                emailext body: "NUnit stage test success for ${env.JOB_NAME}",
                                        subject: "NUnit Stage Test Success",
                                        to: "martindolores65@gmail.com"
                    }
                }
            }
        }

        stage('Deploy to Production') {
            steps {
                script {
                    // Deploying to EC2 Production Instance
                    bat "echo y | plink -i \"${PROD_SSH_KEY_PATH}\" ${PROD_SERVER} exit"
                    bat "plink -i \"${PROD_SSH_KEY_PATH}\" ${PROD_SERVER} sudo rm -r /home/ec2-user/Production/SimpleReactionGame"
                    bat "pscp -i \"${PROD_SSH_KEY_PATH}\" -batch -r \"${PROJECT_PATH}\" ${PROD_SERVER}:${PROD_DIRECTORY}"
                }
            }
        }
    }
}
