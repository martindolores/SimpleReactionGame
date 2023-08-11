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
                    // Run SonarScanner analysis using the installed global tool
                    //bat '"C:\\Program Files (x86)\\SonarScanner\\sonar-scanner-5.0.1.3006-windows\\bin\\sonar-scanner.bat" -D"sonar.organization=martindolores" -D"sonar.projectKey=martindolores_SimpleReactionGame" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"'

                    def sonarScannerCmd = "\"C:\\Program Files (x86)\\SonarScanner\\sonar-scanner-5.0.1.3006-windows\\bin\\sonar-scanner.bat\""
                        def sonarAnalysisCmd = "${sonarScannerCmd} -D\"sonar.organization=martindolores\" -D\"sonar.projectKey=martindolores_SimpleReactionGame\" -D\"sonar.sources=.\" -D\"sonar.host.url=https://sonarcloud.io\""
                        def sonarScannerExitCode = bat(script: sonarAnalysisCmd, returnStatus: true)

                        if (sonarScannerExitCode != 0) {
                            error 'SonarQube analysis failed'
                        }

                        // Check SonarQube quality gate status
                        def qualityGateStatus = getQualityGateStatus()

                        if (qualityGateStatus != 'OK') {
                        error 'Quality gate status is not OK'
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

def getQualityGateStatus() {
    def apiUrl = 'https://sonarcloud.io/api/qualitygates/project_status'
    def projectKey = 'martindolores_SimpleReactionGame' 
    def apiParams = "?projectKey=${projectKey}"
    
    def response = httpRequest(
        url: "${apiUrl}${apiParams}",
        authentication: '8993981e71a41eb797c328634b1c1082050e483f',
        httpMode: 'GET'
    )

    if (response.status != 200) {
        error "Failed to retrieve quality gate status from SonarQube API"
    }

    def jsonResponse = readJSON(text: response.content)
    return jsonResponse.projectStatus.status
}