variable "iam_user_name" {
  description = "Name of the IAM user"
  type        = string
  default     = "HanumaKumar-terraform-s3-reader"
}

variable "s3_read_policy" {
  description = "S3 read-only IAM policy"
  type        = string

  default = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}
