# Terraform compliance

## What is terraform compliance?

terraform-compliance is a lightweight, security and compliance focused test framework against terraform to enable 
negative testing capability for your infrastructure-as-code.

For more information, see https://terraform-compliance.com/

## What is in this repo?

A set of cucumber style feature files that describe various terraform compliance scenarios. 
These rules are considered 'global' and all terraform builds should adhere to them.

If you wish to add project specific compliance rules, you can create them in your project's repo and reference them 
in your pipelines along with the rules defined in this repo.

## How do I check my terraform code against these rules?

Terraform compliance tests should be part of your build pipelines. 
These tests run against the terraform plan output. 

```bash
terraform init && terraform plan -lock -target=module.dev -out=plan-dev.out
terraform-compliance -f git:https://bitbucket.org/adaptavistlabs/terraform-compliance.git -p plan-dev.out
```   