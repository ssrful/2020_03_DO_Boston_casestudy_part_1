pipeline {
	agent any
	environment {
		//Docker Hub repository User ID and Image name
		DOCKER_HUB_REPO = "ssrful/capstone"
		//Registry Credentials
		REGISTRY_ID = 'dockerhub_id'
		//Container Image name
		dockerImage = 'capstone'
}
	stages {
		stage('Pulling image from GitHub') {
			steps {
				sh 'git clone https://github.com/ssrful/2020_03_DO_Boston_casestudy_part_1.git'
			}
		}
	stage('Building the Image') {
	//This step will build Image in Docker with UserID/ProjectName
		steps{
			script {
				sh 'docker image build -t $DOCKER_HUB_REPO:latest .'
				sh 'docker image tag $DOCKER_HUB_REPO:latest $DOCKER_HUB_REPO:$BUILD_NUMBER'
				echo "Docker Image Build was successful"
			}			
		}
	}
	stage('Deploy to Docker') {
	//This step will push the successful image to Docker Hub
		steps{
			script {
				docker.withRegistry( '', REGISTRY_ID ) {
					sh 'docker push $DOCKER_HUB_REPO:$BUILD_NUMBER'
					sh 'docker push $DOCKER_HUB_REPO:latest'
					echo "Image was successfully pushed to Docker Hub. Yaaay!"
				}
			}
		}
	}
	//Lastly let's deploy the application via ansible to Kubernetes
	stage('Deploy to Kubernetes/Ansible') {
		steps {
			script {
				sh 'ansible-playbook deployment.yaml'
			}
		}
	}
	}
}