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

Firstly initialise the Terraform provider by doing: 

```
terraform init
```

Then run a plan, it will ask you for the required variables. You can also see the variables listed in the [variables.tf](./variables.tf) file.

```
terraform plan
```

If the plan looks good then run the apply, entering the same variables when requested.
```
terraform apply
```

If you wish to remove all the infrastructure created by Terraform you can do:

```
terraform destroy
```

## Notes

This sample code provides sample terraform code and does NOT currently utilise terraform best practices such as remote state or modules.