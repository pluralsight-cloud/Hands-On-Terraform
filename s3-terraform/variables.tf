variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "my-unique-bucket-name2123213"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}