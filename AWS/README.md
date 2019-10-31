# AWS
- collection of cloud computing services
- where each service can work together or independently

- **Why depend on AWS:** Low Cost and Scalability
- **Why Deploy Globally:** Reduced Latency

- Similar Products: Azure, Google Cloud Platform, Heroku

## Core Services

### **EC2 (Elastic Cloud Compute)** - Like a virtual machine
  - Basically computing - endless versatile resource
  - Computing can be increased or decreased
  - EBS (Elastic Block Storage) - for EC@ file systems

- **Pricing**
  - EC2 instances are charged by the hour
  - prices changed based on instance type / AMI type

#### AMI (Amazon Machine Image)
  - OS and software used on an EC2 instance
  - Amazon updates the image software but your running instance's software will not be updated. What you can do is to run another instance and manually migrate your application to the new instance

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

### VPC (Virtual Private Cloud)
  - easily secure access to AWS resources
  - Basic VPC Configuration is Free

### CloudFront
  - CDN
  - Structure:
    - Distribution
    - Original Content
    - Unique CloudFront URL will be generated

### CloudWatch
  - Monitoring resources
  - Alarm when some metrics are triggered

## AWS CLI
```
pip install awscli
```