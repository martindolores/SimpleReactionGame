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
                // Run StyleCop analysis
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\Roslyn\\csc.exe" /t:RunCodeAnalysis=true /p:RunCodeAnalysis=true /p:Configuration=Release /p:StyleCopEnabled=true "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln"'
                
                // Check the exit code of the previous command and fail the build if non-zero
                script {
                    def styleCopExitCode = currentBuild.resultIsBetterOrEqualTo("FAILURE") ? 1 : 0
                    if (styleCopExitCode != 0) {
                        error 'StyleCop analysis detected violations. Build failed.'
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
