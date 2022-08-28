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

### step 1
- [ ] checkout git branch `main`, workflow with `terraform apply`

### step 2
- [ ] enhance the lambda payload code in archive as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-and-upload-lambda-function-archive
- [ ] ⚠️ the trick using `aws s3 ls $(terraform output -raw lambda_bucket_name)`

### step 3
- [ ] create the lambda function as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-the-lambda-function *AND use Node.js 16 instead of Node.js 12*.
- [ ] check the invoke answer (see below)
- `aws lambda invoke --region=eu-west-1 --function-name=$(terraform output -raw function_name) response.json`
- [ ] 👨🏻‍💻 code incl. steps before will be in git branch `add_lambda_function`

### step 4
- [ ] create an HTTP API with API Gateway 2 as documented https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#create-an-http-api-with-api-gateway, cross check with documentation at https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api
- [ ] Check result of the API Gateway: `curl "$(terraform output -raw base_url)/hello"`
- [ ] 👨🏻‍💻 code incl. steps before will be in git branch `add_api_gateway`

### step 5
- [ ] update your code according https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws#update-your-lambda-function
- [ ] Check result of the API Gateway: `curl "$(terraform output -raw base_url)/hello?Name=TerraformExercise"`
- [ ] 👨🏻‍💻 code incl. steps before will be in git branch `update_lambda_function`

### step 6
- [ ] do not destroy your infrastructure yet

### step 7
- [ ] Try yourself: Add a AWS WAF in Front of your API Gateway and the Lambda function
- [ ] Hint: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association
- [ ] 👨🏻‍💻 Cheat: code incl. steps before will be in git branch `add_aws_waf_trial`
- [ ] 👨🏻‍💻 Real Teaser & Cheat: code incl. steps before will be in git branch `add_aws_waf_success`

### step 8
- [ ] Try yourself: Add a storage with DynamoDB to the lambda function
- [ ] Hint: https://medium.com/swlh/deploy-aws-lambda-and-dynamodb-using-terraform-6e04f62a3165


---

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg