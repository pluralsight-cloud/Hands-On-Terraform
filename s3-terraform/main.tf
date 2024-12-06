provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket_name

  # Enable versioning
  versioning {
    enabled = true
  }

  # Enable lifecycle rules
  lifecycle_rule {
    id      = "log"
    enabled = true

    transition {
      days          = 30
      storage_class = "GLACIER"
    }

    expiration {
      days = 365
    }
  }
}


# Output the bucket name
output "bucket_name" {
  value = aws_s3_bucket.example_bucket.bucket
}
