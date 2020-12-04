variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "rule_name" {
  type = string
  default = ""
}
variable "target_arn" {
  description = "if target is lambda, then lambda ARN will be used"
  type = string
  default     = ""
}
