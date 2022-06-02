# fastapi-exemplar

This repository shows how to create a basic FastAPI application and deploy it on AWS in a Severless first approach.

## Prerequsiites

- AWS credentials configured in the CLI

- Python 3.7+ installed.

- AWS CLI setup

- AWS SAM installed:

```
brew tap aws/tap 
brew install aws-sam-cli
```

- Docker running (to run SAM app locally)

## Run SAM Locally

```make run_local``` - the console will output a URL you can use.

## Deploy

```make deploy``` - This outputs in the console the API gateway URL to hit the API.

## Teardown

```make teardown```

## Note

- The error "Code storage limit exceeded" may occur on deploy, if the total amount of Lambda code in the account exceeds 75GB - default bv account. I deleted a few old/dead functions to resolve.

- SAM will use the default AWS profile that is configured.

- If deployment fails and the stack is stuck after a rollback, you can use ```make teardown``` to remove it and try again later.

- A good example on how I could extend: https://thecodinginterface.com/blog/aws-sam-serverless-rest-api-with-flask/ - dynamodb etc.

- Had to delete the local ```.aws-sam``` to pick up a change once.

- API is kind of being defined twice in template and in the app, could be improved.

- For some reason it likes to append "lists" to the output from a deploy action, meh, im tired. fix later. 