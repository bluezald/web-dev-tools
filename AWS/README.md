# AWS
- collection of cloud computing services
- where each service can work together or independently

- **Why depend on AWS:** Low Cost and Scalability
- **Why Deploy Globally:** Reduced Latency

- Similar Products: Azure, Google Cloud Platform, Heroku

## Core Services
****
### **EC2 (Elastic Cloud Compute)** - Like a virtual machine
  - Basically computing - endless versatile resource
  - Computing can be increased or decreased
  - EBS (Elastic Block Storage) - for EC@ file systems

- **Pricing**
  - EC2 instances are charged by the hour
  - prices changed based on instance type / AMI type
  - Licensed EC2 costs more than EC2 running Linux

#### AMI (Amazon Machine Image)
  - OS and software used on an EC2 instance
  - Amazon updates the image software but your running instance's software will not be updated. What you can do is to run another instance and manually migrate your application to the new instance

#### EBS (Elastic Block Storage)

- **Elastic IP** - Public IP Address you can add or remove

#### Deploy Application to EC2 instance
- Make sure you have the key-pair of your instance
```sh
chmod 400 keys.pem # Restrict to use the keys only to this user
```
```sh
ssh -i keys.pem ec2-user@13.251.162.166 # or your public ip address
# by default the user to ssh in ec2 is ec2-user
```
- Copy the files of your web-app to ec2
```sh
scp -r -i keys.pem ./art-toolset/ ec2-user@13.251.162.166:/home/ec2-user/art-toolset
# 3 parameters
# - the pem file
# - the directory to copy (the web app)
# - the directory of your ec2 instance
```
- Make sure to remove node_modules folder also, before copying to your instance

- **Load Balancer** - routing appliance that maintains a consistend DNS entry and balances requests to mulitple instances
- **Auto Scaling Group** - expands or shrinks a pool of instances based on pre-defined rules

- Create an AMI from the EC2 instance
  - Select your EC2 instance, click on Actions and then Image -> Create Image

### S3 (Simple Storage Service) - Hosting service
  - max file size is 5 TB
  - Buckets:
    - foundational structure
    - root resource

### RDS (Relational Database Service)
  - Managed database
  - RDS dbs run on EC2 instances

### Route53 - DNS Service
  - setup URL resolution to AWS's resources directly

## Extended Services

### Elastic Beanstalk
  - simply upload your code and Elastic Beanstalk automatically handles the deployment, from capacity provisioning, load balancing, auto-scaling to application health monitoring.

### Lambda - run small pieces of code without servers
  - FaaS - function as a service
  - No server management required

- **Function Structure**
  - Bundle of Code
  - Platform Type
  - Triggers
  - Configuration

### DynamoDB - Managed NoSQL
  - Unlimited, elastic storage
  - no hardware choices
  - Maximum 5 VPC's in one account

### VPC (Virtual Private Cloud)
  - easily secure access to AWS resources
  - Basic VPC Configuration is Free
  - each VPC has one routing table
  - **Network Access Control List** - IP Filtering

  - **Subnet**
    - additional isolated area

### CloudFront
  - CDN
  - Structure:
    - Distribution
    - Original Content
    - Unique CloudFront URL will be generated

### CloudWatch
  - Monitoring resources
  - Alarm when some metrics are triggered

#### SNS (Simple Notification Service)

## AWS CLI
```
pip install awscli
```