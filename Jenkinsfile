pipeline {
    agent any
    
    tools {
        msbuild "MSbuild"
    }
        

    stages {
        stage('Build') {
            steps {
                script {
                    bat 'dotnet build'
                }
            }
        }
    //     stage('Unit and Integration Tests') {
    //         steps {
    //             echo ""
    //         }
    //     }
    //     stage('Code Analysis') {
    //         steps {
    //             echo ""
    //         }
    //     }
    //     stage('Security Scan') {
    //         steps {
    //             echo ""
    //         }
    //     }
    //     stage('Deploy to Staging') {
    //         steps {
    //             script {
    //                 echo ""
    //             }
    //         }
    //     }
    //     stage('Deploy to Production') {
    //         steps {
    //             echo ""
    //         }
    //     }
    // }
}
