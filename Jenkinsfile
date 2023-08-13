pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                cleanWs()

                //Cleaning Solution and Build main solution
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln" /t:Clean /p:Configuration=Release'
                bat '"C:\\Program Files (x86)\\NuGet\\nuget.exe" restore "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln"'
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln" /t:Build /p:Configuration=Release'
            }
        }
        stage('Unit and Integration Tests') {
            steps {
                bat '"C:\\Program Files\\NUnit.Console-3.15.4\\bin\\net6.0\\nunit3-console.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\UnitTest\\bin\\Release\\net6.0\\UnitTest.dll"'
            }
        }
        stage('Code Analysis') {
            steps {
                script {
                    def projectDir = "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame"
                    def sonarToken
                        withCredentials([string(credentialsId: 'sonarqube-token', variable: 'SONAR_TOKEN')]) {
                            sonarToken = SONAR_TOKEN
                        }

                    dir(projectDir) {
                        // Install sonarscanner
                        def installSonarScannerCmd = "dotnet tool install --global dotnet-sonarscanner"
                        bat(script: installSonarScannerCmd, returnStatus: true)
                        
                        // Begin SonarScanner analysis
                        def sonarBeginCmd = "dotnet sonarscanner begin /k:SimpleReactionGame /d:sonar.login=\"${sonarToken}\""
                        bat(script: sonarBeginCmd, returnStatus: true)

                        // Build the project
                        def buildCmd = "dotnet build SimpleReactionGame.sln"
                        bat(script: buildCmd, returnStatus: true)

                        // End SonarScanner analysis
                        def sonarEndCmd = "dotnet sonarscanner end /d:sonar.login=\"${sonarToken}\""
                        bat(script: sonarEndCmd, returnStatus: true)
                    }
                }
            } 
        }
        stage('Security Scan') {
            steps {
                script {
                    def projectDir = "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame"

                    dir(projectDir) {

                        def snykToken 
                        withCredentials([string(credentialsId: 'snyk-token', variable: 'SNYK_TOKEN')]) {
                            snykToken = SNYK_TOKEN
                        }
                        def snkyAuthCmd = "C:\\Users\\marti\\Downloads\\snyk-win.exe auth ${snykToken}" 
                        def snkyAuthResukt = bat(script: snkyAuthCmd, returnStatus: true)
                        
                        // Run the Snyk security test using the Snyk CLI
                        def snykCliCmd = "C:\\Users\\marti\\Downloads\\snyk-win.exe test --all-projects"
                        def snykCliResult = bat(script: snykCliCmd, returnStatus: true)
                        
                        if (snykCliResult != 0) {
                            error 'Snyk CLI command failed'
                        }
                    }
                }
            }
        }
        stage('Deploy to Staging') {
            steps {
                script {
                    echo "Copying files to the EC2 instance..."
                    bat 'scp -i "C:/Users/marti/Downloads/jenkins-linux.pem" -r "C:/Users/marti/Documents/Study/Deakin/2023/T1/Professional Practice In Information Technology/Task 6.2C/SimpleReactionGame" ec2-user@54.253.240.3:/home/ec2-user/Staging'
                    echo "Files copied successfully."
                }
            }
        }
        stage('Integration Tests on Staging') {
            steps {
                echo ""
            }
        }
        stage('Deploy to Production') {
            steps {
                echo ""
            }
        }
    }
}