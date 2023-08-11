pipeline {
    agent any

    environment {
        SOLUTION_PATH = 'C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\SimpleReactionGame.sln'
        UNIT_TEST_DLL_PATH = 'C:\\Users\\marti\\Documents\\Study\\Deakin\\2023\\T1\\Professional Practice In Information Technology\\Task 6.2C\\SimpleReactionGame\\UnitTests\\bin\\Release\\net6.0\\UnitTests.dll'
    }

    stages {
        stage('Build') {
            steps {
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\MSBuild\\Current\\Bin\\MSBuild.exe" ${env.SOLUTION_PATH} /t:Build /p:Configuration=Release'
            }
        }
        stage('Unit and Integration Tests') {
            steps {
                bat '"C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\IDE\\CommonExtensions\\Microsoft\\TestWindow\\vstest.console.exe" ${env.UNIT_TEST_DLL_PATH}'
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
