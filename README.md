# terraform-aws-cloudwatch-event-target
Terraform Module for AWS Cloudwatch Event Target

## Usage Example

`main.tf #contents`

```bash
module "aws_cloudwatch_event_target" {
  source = "git::https://github.com/Voyanta/terraform-aws-cloudwatch-event-target"
  target_arn = module.aws_lambda.lambda_arn
}
```

`backend.tf #contents`

```bash
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "your-org"

    workspaces {
      prefix = "new-project-"
    }
  }
}
```

`data.tf #contents`

```bash
data "aws_vpc" "vpc" {
  filter {
    name   = "tag:Name"
    values = ["vpc tag value"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}
```

---

* rule_name
* target_arn - target arn needed - if linking to lambda module for lambda ARN, set like this: target_arn = module.aws_lambda.lambda_arn

## Notes

This module creates a [cloudwatch event target](https://console.aws.amazon.com/cloudwatch/home?region=us-east-1#rules:) | [terraform cloudwatch event target doc](https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html)