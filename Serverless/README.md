# Serverless
- SaaS - Self-service with 0 operations
- an event driven, utility based, stateless, code execution environment in which you write code and consume services
- Easily create server code without worrying about managing servers yourself

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