#!/usr/bin/env groovy
pipeline {
    agent any
    stages {
        stage('Deploy'){
            steps{
                sh 'env'
                def projects = readFile("${WORKSPACE}/projects.txt")
                projects.eachLine { line ->
                	sh "platform push -p ${line} --target ${env.BRANCH_NAME} -W -y --activate"
                }
            }
        }
    }
}
