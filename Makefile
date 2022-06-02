run_local:
	sam build -t 'template.yaml'
	sam local start-api

deploy:
	export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
	export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
	aws s3api create-bucket --bucket test-bucket-jmcd
	sam deploy --stack-name FastAPIOnLambda --s3-bucket test-bucket-jmcd --capabilities CAPABILITY_IAM

teardown:
	sam delete --stack-name FastAPIOnLambda