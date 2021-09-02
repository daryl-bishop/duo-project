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
		sh 'pip3 install -r bae-cne-sfia2-brief/frontend/requirements.txt'
		sh 'cd bae-cne-sfia2-brief/frontend && python3 -m pytest --cov application'
		sh 'pip3 install -r bae-cne-sfia2-brief/backend/requirements.txt'
		sh 'cd bae-cne-sfia2-brief/backend && python3 -m pytest --cov application'
	    }
	}
	stage ('Build') {	    
	   steps {
		sh 'cd bae-cne-sfia2-brief'
		script {
                    if (env.changes == 'true'){
                        frontimage = docker.build("daryl7817/frontend")
			backimage = docker.build("daryl7817/backend")
			    }
		      }
     	         }	
	 }
	stage ('Push') {
	    steps {
		script {
		    if (env.changes == 'true'){
                	docker.withRegistry('https://registry.hub.docker.com', 'dockerhub_id'){
                            frontimage.push("latest")
			    backimage.push("latest")
		    }
		}
	    }
	}
    }
	stage ('Deploy') {
	    steps {
		sh 'cd bae-cne-sfia2-brief && docker stack deploy --compose-file docker-compose.yaml project-stack'
	    }
	}
    }
}
