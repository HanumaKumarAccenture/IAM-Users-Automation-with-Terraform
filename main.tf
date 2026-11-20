terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
resource "aws_iam_user" "s3_reader" {
  name = var.iam_user_name
}

resource "aws_iam_policy" "s3_read" {
  name        = "HanumaKumarS3ReadOnlyPolicy"
  description = "Allows read-only access to S3"
  policy      = var.s3_read_policy
}

resource "aws_iam_user_policy_attachment" "s3_reader_attach" {
  user       = aws_iam_user.s3_reader.name
  policy_arn = aws_iam_policy.s3_read.arn
}
