node {
    docker.image('maven:3-alpine').inside {
        stage('Build')
        checkout scm
        sh 'mvn -B -DskipTests clean package'
    }
}