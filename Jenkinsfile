node {
    def IMAGE = "wartesttrigger:version-${env.BUILD_ID}"
    
    
    stage('Clone') {
        checkout scm
    }
    
    stage('Maven package') {
        sh 'mvn package'
    }
    
    def img = stage('Build') {
        docker.build("$IMAGE", '.')
    }
    
    stage('Run') {
        img.withRun("--name run-$BUILD_ID -p 8081:8080") { c ->
            sh 'docker ps'
        }
    }
}
