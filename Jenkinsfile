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
                // Run SonarScanner analysis using the installed global tool
                //bat '"C:\\Program Files (x86)\\SonarScanner\\sonar-scanner-5.0.1.3006-windows\\bin\\sonar-scanner.bat" -D"sonar.organization=martindolores" -D"sonar.projectKey=martindolores_SimpleReactionGame" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"'

                script {
                    def sonarScannerResult = bat(returnStatus: true, script: '"C:\\Program Files (x86)\\SonarScanner\\sonar-scanner-5.0.1.3006-windows\\bin\\sonar-scanner.bat" -D"sonar.organization=martindolores" -D"sonar.projectKey=martindolores_SimpleReactionGame" -D"sonar.sources=." -D"sonar.host.url=https://sonarcloud.io"')

                    // Check the Sonar analysis result
                    if (sonarScannerResult != 0) {
                        error 'Sonar analysis failed'
                    } else {
                        def sonarIssues = bat(script: '"C:\\Program Files (x86)\\SonarScanner\\sonar-scanner-5.0.1.3006-windows\\bin\\sonar-scanner.bat" -D"sonar.organization=martindolores" -D"sonar.projectKey=martindolores_SimpleReactionGame" -D"sonar.host.url=https://sonarcloud.io" -D"sonar.login=$SONAR_TOKEN" -D"sonar.language=cs" -D"sonar.issue.ignore.allfile=false" -D"sonar.issue.ignore.block=false" -D"sonar.issue.ignore.header=false" -D"sonar.issue.ignore.inline=false" -D"sonar.issue.ignore.multiline=false" -D"sonar.issue.ignore.parameter=false" -D"sonar.issue.ignore.trailingfalse" -D"sonar.issue.ignore.unknown=false" -D"sonar.analysis.mode=issues" -D"sonar.scm.disabled=true" -D"sonar.scm.provider=git" -D"sonar.branch.name=main" -D"sonar.scanner.skip=false" -D"sonar.working.directory=\\\\.scannerwork" -D"sonar.gitlab.project_id=0" -D"sonar.gitlab.ref_name=main"', returnStatus: true)
                        if (sonarIssues > 0) {
                            error 'Sonar analysis detected bugs'
                        }
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
