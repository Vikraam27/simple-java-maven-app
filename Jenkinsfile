node {
    docker.image('maven:3.8.5-eclipse-temurin-8-alpine').inside {
        stage('Build')
        checkout scm
        sh 'mvn -B -DskipTests clean package'
    }
}