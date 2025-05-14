provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "7a043cbf9234db968bc46481f7e22f55bef9313f"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-05-14 16:42:38"
    git_last_modified_by = "43653319+flmngwllm@users.noreply.github.com"
    git_modifiers        = "43653319+flmngwllm"
    git_org              = "flmngwllm"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "102e97b6-87da-4c7c-ac06-516ca1e5f942"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
