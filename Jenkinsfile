pipeline {
    agent any
    
    tools {
        MSBuild "MSBuild"
    }
        

    stages {
        stage('Build') {
            steps {
                script {
                    msbuild(
                        tools: [msbuildInstallationName: 'MSBuild'],  // Specify the name of your MSBuild installation
                        projects: 'C:\Users\marti\Documents\Study\Deakin\2023\T1\Professional Practice In Information Technology\Task 6.2C\SimpleReactionGame\SimpleReactionGame.sln',  // Path to your solution file
                        targets: 'Build',  // The target you want to build, e.g., 'Build' or 'Rebuild'
                        properties: [
                            'Configuration': 'Release',  // Build configuration
                            'Platform': 'AnyCPU'  // Build platform
                        ]
                    )
                }
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
