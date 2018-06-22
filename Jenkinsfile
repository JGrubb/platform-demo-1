pipeline {
    agent any
    stages {
        stage('Deploy'){
            steps{
                sh 'env'
                new File('projects.txt').eachLine { line ->
                	sh "platform push -p ${line} --target ${env.BRANCH_NAME} -W -y --activate"
                }
            }
        }
    }
}
