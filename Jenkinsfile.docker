node {
    def TAG = "version-${env.BUILD_ID}"
    def IMAGE = "abmtrigger"
    def NETWORK_NAME="my-app-net"
    
    stage('Clone') {
        checkout scm
    }
    
    stage('Maven package') {
        sh 'mvn package'
    }
    
    def img = stage('Build') {
        docker.build("$IMAGE:$TAG", '.')
    }
    
    stage('Run') {
        img.withRun("--name run-$BUILD_ID -p 8082:8080") { c ->
            sh 'docker ps'
        }
    }
    
    stage('Deploy Docker Container') {
  
        // Stop and remove any running container of the same name
        sh "docker ps --all -q -f name=${IMAGE} | xargs -r docker stop | xargs -r docker rm"

        // Create netowrk if not exist
        sh "docker network create ${NETWORK_NAME} || true "
        // Run the Docker container
        sh "docker run -d --name ${IMAGE} -p 8080:8080 --network ${NETWORK_NAME} ${IMAGE}:${TAG}"
            
        }    
}
