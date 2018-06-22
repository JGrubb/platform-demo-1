#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Deploy'){
            steps{
                sh 'env'
                script {
                	def projects = readFile("${WORKSPACE}/projects.txt").split('\n')
                	for (int i = 0; i < projects.size(); ++i) {
                		sh "platform push -p ${projects[i]} --target ${env.BRANCH_NAME} -W -y --activate"
                	}
                }
            }
        }
    }
}
