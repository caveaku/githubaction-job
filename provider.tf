provider "aws" {
  region = var.region
}

variable "region" {
  description = "The AWS region to provision the resources."
  type        = string
  default     = "us-east-1"
}
