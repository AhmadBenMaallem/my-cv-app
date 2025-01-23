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
        sh "mkdir -p ./data/certbot/conf ./data/certbot/www"
        sh "chmod -R 777 ./nginx ./data"
        
    }

    stage('Cleanup And Deploy') {
        // Ensure only one instance is running
        sh "docker-compose down"
        
        // Re-run with updated image
        sh "docker-compose up -d nginx"
    }

    stage('Add Certif') {
        sh "docker-compose run --rm certbot certonly --webroot -w /var/www/certbot -d abm-app.ddns.net --email ahmad.benmaallem@gmail.com --agree-tos --non-interactive"
    }

    stage('Add App conf and reload nginx') {
        sh "cp ./app-nginx-conf/my-app.conf ./nginx/conf.d/."

        sh "docker-compose exec nginx nginx -s reload"
    }    
       
}
