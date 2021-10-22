variable "env" {
  description = "Environment to deploy to"
  type        = string
  default     = "dev"
}

variable "kms_master_key_id" {
  description = "KMS used to encrypt the SNS topic."
  type        = string
  default     = ""
}

variable "name" {
  description = "The name of the SNS topic to create"
  type        = string
}

variable "policy" {
  description = "The fully-formed AWS policy as JSON"
  type        = string
  default     = null
}

variable "region" {
  description = "Deployment region for AWS"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "Tagging required for the resource"
  type        = map(any)
  default     = {}
}
