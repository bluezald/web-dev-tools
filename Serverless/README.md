# Serverless
- SaaS - Self-service with 0 operations
- an event driven, utility based, stateless, code execution environment in which you write code and consume services
- Easily create server code without worrying about managing servers yourself

### Evolution of Serverless Functions
- Mainframe era
    - Large space requirement
    - Installation
    - Maintenance and Cost
    - Inflexibility
- Personal Computing
- The Cloud - Amazon EC2
- Serverless Functions
    - Event Driven
    - Code focused
    - Managed Machines

#### Benefits
- Cost and Utilization
- Managed machines
- Service integrations
- Scaling

### Drawbacks
- Debugging
- Control

### What you do in Serverless Systems
- Write less code - // the more code you have the more risk you have
- Define Trigger
- Connect managed services together
- Pay for consumption instead of allocation

### What you Do Not Do
- Pre-provision infrastructure
- Patch infrastructure
- Define Scaling policies
- Store state alongside compute

### Challenges
- Limited lifetime of functions (instance of a function is short-lived)
- Dependency on Remote Storage
- Limits exist for memory size
- Vendor Lock-in

## Use-Cases
- 3-Tier
- Web APIs
- Stream Processing
- Data Pipelines
- Batch Processing
- Infrastructure automation

## FaaS
- When deployed as PaaS, an application is typically running on at least one server at all times. With FaaS, it may not be running at all until the function needs to be executed. It starts the function within a few milliseconds and then shuts it down.
- Both provide the ability to easily deploy an application and scale it, without having to provision or configure servers.
- References:
    - https://stackify.com/function-as-a-service-serverless-architecture/

# AWS

## AWS Lambda
- Why Learn?
    - Focus on application
    - opportunity on IoT
    - Growing relevance
- Pick a Function Runtime
    - Python 2.7
    - Node.js
    - Java
    - C#
- Size Limitations: Uncompressed code and dependencies < 250 MB
- Resource Limitations:
    - Ephemeral Storage
    - Max Execution of < 300 seconds in all Lambda functions
    - Concurrent Lambda functions < 100
- Workarounds:
    - Load and store files in S3 and process files in chunks
    - Chain functions together
- Memory, CPI and VPC Considerations
    - Memory - 128 MB - 1.5 GB
    - CPU proportionally scales with memory
    - Virtual Private Cloud

## SES
- Simple Email Service

### IAM (Identity and Access Management)
- Strong Pass
- 2FA
- Root account caution - make another admin account instead of using root

- Create policies: https://awspolicygen.s3.amazonaws.com/policygen.html
Sample Policy:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1572419268820",
      "Action": "ses:*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
```