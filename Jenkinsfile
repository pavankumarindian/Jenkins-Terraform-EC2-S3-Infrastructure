pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        AWS_REGION = 'ap-south-1'
        S3_BUCKET = 'my-s3bucket-for-tf-state'
        TF_VAR_key_name = 'demo-key'
        TF_VAR_instance_type = 't2.micro'
        GITHUB_REPO_URL = 'https://github.com/pavankumarindian/Jenkins-Terraform-EC2-S3-Infrastructure.git'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: GITHUB_REPO_URL
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init -input=false'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh "terraform plan \
                        -var 'region=${AWS_REGION}' \
                        -var 's3_bucket=${S3_BUCKET}' \
                        -var 'key_name=${TF_VAR_key_name}' \
                        -var 'instance_type=${TF_VAR_instance_type}'"
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    sh "terraform apply -auto-approve \
                        -var 'region=${AWS_REGION}' \
                        -var 's3_bucket=${S3_BUCKET}' \
                        -var 'key_name=${TF_VAR_key_name}' \
                        -var 'instance_type=${TF_VAR_instance_type}'"
                }
            }
        }
    }
}
