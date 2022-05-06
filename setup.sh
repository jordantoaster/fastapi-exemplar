# Enable Passing AWS Credentials to Docker Container (default profile)
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
# Build The Container
docker-compose up --build