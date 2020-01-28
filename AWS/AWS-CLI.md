# AWS CLI
```
pip install awscli
```
## Configure
- Once the cli is installed, make sure to configure it
```
aws configure
```

- Configuring multiple profiles: https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html

## S3
```sh
aws s3 cp /source /destination
# can be use to have a local soure to s3 destination
# can be use to have a remote soure to local destination
# can be use to have a remote soure in s3 to remote destination in s3
```

```sh
aws s3 sync /source /destination
# recursively copies files from the source to destination
```