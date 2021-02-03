timestamps {

node () {

	stage ('pythonflask - Checkout') {
 	 checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '', url: 'https://github.com/ssrful/2020_03_DO_Boston_casestudy_part_1.git']]]) 
	}
	stage ('pythonflask - Build') {
 	
 	powershell "python web.py"
	}
}
}