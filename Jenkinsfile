pipeline{
    agent any
    environment {
    AWS_ACCOUNT_NAME="sachin-2023"
    AWS_REGION="us-east-1"
    REPO_NAME="istio-dev"
    IMAGE_TAG="${BUILD_ID}"
    AWS_ACCOUNT_ID="472132854555"
    REPOSITORY_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${REPO_NAME}"
    ECR_REGISTRY: ${{ steps.login-ecr.outputs.registry }}
    }
    stages{
        stage("Logging into ECR"){
            steps{
                script{
               sh "aws ecr get-login-password --region ${AWS_REGION} | sudo docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
               }
            }
        }

        stage("building docker image"){
            steps{
                script{
                 sh "sudo docker build -t ${REPO_NAME}:${IMAGE_TAG} ."
                }
            }
        }

        stage("pushing image to ECR"){
            steps{
                script{
                    sh "sudo docker tag ${REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:${IMAGE_TAG}"
                    sh "sudo docker push ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${REPO_NAME}:${IMAGE_TAG}"
                }
            }
        }

        stage("deploy to K8s"){
            steps{
                script{
                sh "kubectl set image deployment.apps/node-app node-app=$ECR_REGISTRY/$REPOSITORY_URI:$IMAGE_TAG"
                }
            }
       }
    }
}
