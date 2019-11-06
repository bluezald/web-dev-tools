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
- **Launch Configurations** - an instance configuration template that an Auto Scaling group uses to launch EC2 instances.
- **Auto Scaling Group** - expands or shrinks a pool of instances based on pre-defined rules

- Create an AMI from the EC2 instance
  - Select your EC2 instance, click on Actions and then Image -> Create Image
- **Security Groups**:
  - an `inbound` firewall protects the network against incoming traffic from the internet or other network segments, namely disallowed connections, malware and denial-of-service attacks. An `outbound` firewall protects against outgoing traffic originating inside an enterprise network. Often, a single firewall can serve both functions.

### S3 (Simple Storage Service) - Hosting service
  - max file size is 5 TB
  - S3 Object - file + metadata = max object size is 5 TB
  - Buckets:
    - foundational structure
    - root resource
  - Cross Region Replication - Replication enables automatic, asynchronous copying of objects across Amazon S3 buckets. Buckets that are configured for object replication can be owned by the same AWS account or by different accounts. You can copy objects between different AWS Regions or within the same Region.

- CLI to upload files to `S3`
```
aws s3 cp <local_folder> s3://<bucket>/<remote_folder> --recursive --exclude "<pattern>"
```
- Enabling CORS in `S3` for all domains
```xml
<CORSConfiguration>
<CORSRule>
  <AllowedOrigin>*</AllowedOrigin>
  <AllowedMethod>GET</AllowedMethod>
  <MaxAgeSeconds>3000</MaxAgeSeconds>
</CORSRule>
</CORSConfiguration>
```
- Enabling CORS with specific domain and methods
```xml
<CORSConfiguration>
 <CORSRule>
   <AllowedOrigin>http://www.example.com</AllowedOrigin>
   <AllowedMethod>PUT</AllowedMethod>
   <AllowedMethod>POST</AllowedMethod>
   <AllowedMethod>DELETE</AllowedMethod>
   <AllowedHeader>*</AllowedHeader>
  <MaxAgeSeconds>3000</MaxAgeSeconds>
 </CORSRule>
</CORSConfiguration>
```

### RDS (Relational Database Service)
  - Managed database
  - RDS dbs run on EC2 instances
  - When you create an RDS it also creates an EC2 instance
  - Options:
    - MySQL
    - PostgreSQL
    - Microsoft SQL Server
    - MariaDB
    - Oracle Database
    - Amazon Aurora

### Route53 - DNS Service
  - setup URL resolution to AWS's resources directly

## Extended Services

### CloudFormation
- Duplicate Infrastructure
- CloudFormation Template
- Automate the creation of infrastructure

### Elastic Beanstalk
  - simply upload your code and Elastic Beanstalk automatically handles the deployment, from capacity provisioning, load balancing, auto-scaling to application health monitoring.
  - 

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
  - each VPC has one routing table
  - Maximum 5 VPC's in one account
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