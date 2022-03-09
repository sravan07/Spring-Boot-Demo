pipeline {
	agent {
		node {
			label "devServer"
		}
	}
	stages {
		
stage('Initialize') {
            steps {
                //enable remote triggers
                script {
                    properties([pipelineTriggers([pollSCM('')])])
                }
                //define scm connection for polling
                git branches: [[name: '**']], url: 'https://github.com/sravan07/Spring-Boot-Demo.git'
            }
}

		
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
				echo "End"
			}
		}
	}


}
