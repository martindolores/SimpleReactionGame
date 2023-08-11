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
                    // Download and extract the Codacy Analysis CLI
                    bat 'curl -L https://github.com/codacy/codacy-analysis-cli/archive/master.tar.gz | tar xvz'
                
                    // Change to the extracted directory
                    bat 'cd codacy-analysis-cli-*'
                
                    // Install the Codacy Analysis CLI using 'make'
                    bat 'sudo make install'

                    // Configure Codacy CLI
                    bat 'codacy-analysis-cli auth login --token mq1FWIRqwn0TS7uNEnvU'

                    // Run Codacy analysis
                    bat 'codacy-analysis-cli analyze --projectToken mq1FWIRqwn0TS7uNEnvU --force'

                    // Get the number of Codacy issues from the report
                    def numIssues = bat(script: 'codacy-analysis-cli report issues -t YOUR_PROJECT_TOKEN -f json | jq length', returnStdout: true).trim()

                    // Check if the number of issues exceeds the threshold (e.g., 50)
                    if (numIssues.toInteger() > 50) {
                        currentBuild.result = 'FAILURE'  // Mark the build as failed
                        error "Number of Codacy issues (${numIssues}) exceeds the threshold (50)"
                    }
                }
            }
        }
        stage('Security Scan') {
            steps {
                echo ""
            }
        }
        stage('Deploy to Staging') {
            steps {
                script {
                    echo ""
                }
            }
        }
        stage('Deploy to Production') {
            steps {
                echo ""
            }
        }
    }
}
