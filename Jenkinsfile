pipeline{
    agent any
    environment {
    AWS_ACCOUNT_NAME="sachin-2023"
    AWS_REGION="us-east-1"
    REPO_NAME="istio-dev"
    IMAGE_TAG="${BUILD_ID}"
    AWS_ACCOUNT_ID="096422254148"
    REPOSITORY_URI="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com/${REPO_NAME}"
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
                 dockerImage = docker.build "${REPO_NAME}:${IMAGE_TAG}"
                }
            }
        }

        stage("pushing image to ECR"){
            steps{
                script{
                    sh "sudo docker tag ${REPO_NAME}:${IMAGE_TAG} ${REPOSITORY_URI}:${IMAGE_TAG}"
                }
            }
        }
    }
}