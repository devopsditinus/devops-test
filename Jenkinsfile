pipeline {
    agent any 
    
    stages{
        stage("Clone Code"){
            steps{
                echo "Cloning the Code"
                git url:"https://github.com/devopsditinus/devops-test.git", branch: "dev"
            }
        }
        stage("Build"){
            steps{
                echo "Building the image"
                  sh "docker build . -t devops-dev"
            }
        }
        stage("Push to Docker Hub"){
            steps{
                echo "Pushing the image to Docker hub"
               withCredentials([usernamePassword(credentialsId:"dockerHUB",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag devops-dev ${env.dockerHubUser}/devops-dev:test2"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/devops-dev:test2"
                }
            }
        }  
        stage("Deploy"){
            steps{
                echo "Deploying the Container"
                sh "docker-compose down && docker-compose up --build -d --remove-orphans"
                
            }
        }
    }
    
    post {
                always{
                  emailext (
                      subject: "Pipeline Status: ${BUILD_NUMBER}", 
                      body: ''' <html> 
                      		<body>
					<p>Build Status: ${BUILD_STATUS}</p>
					<p>Build Number: ${BUILD_NUMBER}</p>
					<p>Check the <a href="${BUILD_URL}">console output</a>.</p> 
				</body>
			    </html>''',
                      to: 'devinder@ditinustechnology.com',
                      from: 'ditinustechnology3@gmail.com',
                      replyTo: 'ditinustechnology3@gmail.com',
                      mimeType: 'text/html'
                      
              )
              
              }
          }
    
 }
