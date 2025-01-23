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
        img.withRun("--name run-$BUILD_ID") { c ->
            sh 'docker ps'
        }
    }

    stage('PRE-Deployment') {
        sh "sed -i 's|IMAGE_TAG|${IMAGE}:${TAG}|g' docker-compose.yml"        
    }

    stage('Cleanup And Deploy') {

        sh "rm -rf /tmp/mydata || true"
        // Ensure only one instance is running
        sh "docker-compose down"
        
        // Re-run with updated image
        sh "docker-compose up -d nginx"
    }

    stage('Add my app HTTP Conf') {
        sh "docker cp nginx/conf.d/my-app-80.conf nginx:/etc/nginx/conf.d/my-app.conf"
    
         sh "docker-compose exec -T nginx nginx -s reload"
    }


    stage('Add Certif') {

        sh "docker-compose run --rm certbot certonly --webroot -w /var/www/certbot -d abm-app.ddns.net --email ahmad.benmaallem@gmail.com --agree-tos --non-interactive"
    }

    stage('Add App conf and reload nginx') {

        sh "docker cp nginx/conf.d/my-app-443.conf nginx:/etc/nginx/conf.d/my-app.conf"

        sh "docker-compose exec -T nginx nginx -s reload"
    }

    stage('Clean Up Old App Builded Images') {
         steps {
            script {
                // Get the list of all images tagged with the pattern 'abmtrigger:version-*'
                def images = sh(script: "docker images --filter 'reference=abmtrigger:version-*' --format '{{.Repository}}:{{.Tag}}'", returnStdout: true).trim().split("\n")
            
                // Get the currently used image tag (for the current build)
                def currentImage = "${IMAGE}:${TAG}"

                // Remove old images except the current one
                images.each { image ->
                    if (image != currentImage) {
                        sh "docker rmi $image || true"  // Remove old image, ignore errors if the image is in use
                    }
                }
            }
        }
    }
       
}
