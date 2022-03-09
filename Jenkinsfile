pipeline {
	agent {
		node {
			label "devServer"
		}
	}
	stages {
		stage('checkout') {
			steps {
				checkout([$class: 'GitSCM', branches: [[name: '**']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sravan07/Spring-Boot-Demo.git']]])
			}
		}
		stage('build') {
			steps {
				echo "hello"
				echo "hi"
				echo "bye"
			}
		}
	}


}
