# tf-e4-serverless-api-gateway
Learn Terraform Exercise using lambda api-gateway and additional features.

Example and code bases on:
* https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway
* https://github.com/hashicorp/learn-terraform-lambda-api-gateway

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

Goals of this Exercise:

- [ ] Learn to setup and deploy serverless functions
- [ ] Learn to use and configure API Gateways

## 🚧 -> 🚀

Terraform workflow:

```
terraform fmt
terraform init
terraform validate
terraform plan -out my-tf-plan.tfplan
terraform apply my-tf-plan.tfplan
terraform destroy
```

## step by step

- [ ] checkout git branch `main`, workflow with `terraform apply`

- [ ] enhance the lambda payload code in archive as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-and-upload-lambda-function-archive
- [ ] ⚠️ the trick using `aws s3 ls $(terraform output -raw lambda_bucket_name)`

- [ ] create the lambda function as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-the-lambda-function *AND use Node.js 16 instead of Node.js 12*.
- [ ] check the invoke answer (see below) -> A: Check Lambda Invoke Answer
- [ ] code incl. steps before will be in git branch `add_lambda_function`

- [ ] create an HTTP API with API Gateway 2 as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-an-http-api-with-api-gateway, cross check with documentation at https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api
- [ ] Check result of the API Gateway: `curl "$(terraform output -raw base_url)/hello"`

## A: Check Lambda Invoke Answer
`aws lambda invoke --region=eu-west-1 --function-name=$(terraform output -raw function_name) response.json`





---

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg