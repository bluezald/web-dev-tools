# Serverless Application Model
  - simplifies the deployment of serverless resources

## Serverless Resources:
- Lambda
- API Gateway
- DynamoDB Tables

- builts upon the Cloudformation templates
- https://github.com/awslabs/serverless-application-model

### Deploying Serverless Application using a SAM template
```sh
aws cloudformation deploy --template-file sam-template.yaml --stack-name my-serverless-app --capabilities CAPABILITY_IAM
```

**Intrinsinc Function Reference**
  - Use intrinsic functions in your templates to assign values to properties that are not available until runtime.

## template2
- Credits to this [code](https://github.com/byumark/sam-library-lambda) for the code in template 2