pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                //Cleaning Solution
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln" /t:Clean /p:Configuration=Release'
                
                //Build main solution
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln" /t:Build /p:Configuration=Release'

                //Build test solution
                bat bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\UnitTests\\UnitTests.csproj" /t:Build /p:Configuration=Release'
            }
        }
        stage('Unit and Integration Tests') {
            steps {
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\IDE\\CommonExtensions\\Microsoft\\TestWindow\\vstest.console.exe" "C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\UnitTests\\bin\\Release\\net6.0\\UnitTests.dll"'
            }
        }
        stage('Code Analysis') {
            steps {
                echo ""
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
