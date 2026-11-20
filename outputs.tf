output "iam_username" {
  description = "Created IAM username"
  value       = aws_iam_user.s3_reader.name
}

output "iam_user_arn" {
  description = "IAM user ARN"
  value       = aws_iam_user.s3_reader.arn
}

output "s3_policy_arn" {
  description = "S3 read-only policy ARN"
  value       = aws_iam_policy.s3_read.arn
}
