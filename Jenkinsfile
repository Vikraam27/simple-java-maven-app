node {
    docker.image('maven:3.8.5-eclipse-temurin-8-alpine').inside {
        stage('Build') {
            checkout scm
            sh 'mvn -B -DskipTests clean package'
        }
        stage('Test') {
            checkout scm
            sh 'mvn test'
            junit 'target/surefire-reports/*.xml'
        }
        stage('Deliver') {
            checkout scm
            sh './jenkins/scripts/deliver.sh'
            input message: 'Lanjutkan ke tahap Deploy? (Klik "Proceed" untuk melanjutkan)' 
        }
    }

    stage('Deploy') {
        checkout scm
        sshagent(credentials:['Login_Cloud_Server']){
            sh 'ssh  -o StrictHostKeyChecking=no  vikram@35.219.77.187 "sh ./a428-cicd-labs/jenkins/scripts/deploy.sh"'
        }
    }
}