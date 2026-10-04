resource "aws_s3_bucket" "terraform_statefile" {
  bucket = "terraform-state-file.07"

  tags = {
    Name = "terraform-state-file.07"
  }
}

resource "aws_s3_bucket_versioning" "terraform_statefile" {
  bucket = aws_s3_bucket.terraform_statefile.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "terraform_statefile" {
  bucket = aws_s3_bucket.terraform_statefile.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}