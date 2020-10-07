# Terraform 

## Introduction

This is a sample repository for provisioning an RDS instance using Terraform

## Pre-Requisites

The code in [main.tf](./main.tf) assumes you have set an AWS credential for a profile called "terraform".

Such that you should have the following file:

```
~/.aws/credentials
```

And it should have contents similar to the following:

```
[terraform]
aws_access_key_id=SOMEAWSACCESSKEYID
aws_secret_access_key=SOMEAWSSECRET
```

Notice the contents in the square brackets matches exactly the name of the profile on line 13 of the [main.tf](./main.tf)

## Instructions

```
terraform init
```

```
terraform plan
```

```
terraform apply
```

## Notes

This sample code provides sample terraform code and does NOT currently utilise terraform best practices such as remote state or modules.