pipeline {
    agent any
    environment {
	DOCKER_LOGIN = credentials('dockerhub_id')
	changes = 'true'	
	DATABASE_URI = credentials('DATABASE_URI')
	SECRET_KEY = credentials('SECRET_KEY')
    }
    stages {
	stage ('Testing') {
	    steps {
		sh 'pwd'
		sh 'pip3 install -r frontend/requirements.txt'
		sh 'cd frontend && python3 -m pytest --cov application > front-report.xml'
		sh 'pip3 install -r backend/requirements.txt'
		sh 'cd backend && python3 -m pytest --cov application > back-report.xml'
	    }
	}
	
	stage ('Build') {	    
	   steps {
		sh 'docker-compose build' 
     	         }	
	 }
	stage ('Push') {
	    steps {
		sh 'docker-compose push'
	    	}
    }
	stage ('Deploy') {
	    steps {
		sh 'docker stack deploy --compose-file docker-compose.yaml project-stack'
	    }
	}
    }
	post {
        always {
	    archiveArtifacts artifacts: 'frontend/**/*.xml, backend/**/*.xml', fingerprint: true
	}
    }


 }

