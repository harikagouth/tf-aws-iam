# /outputs.tf

output "iam_role_name" {
  description = "The name of the IAM role."
  value       = var.create_iam_role ? aws_iam_role.this[0].name : ""
  depends_on  = [aws_iam_role.this]
}

output "iam_role_arn" {
  description = "The ARN of the IAM role."
  value       = var.create_iam_role ? aws_iam_role.this[0].arn : ""
  depends_on  = [aws_iam_role.this]
}

output "iam_role_id" {
  description = "The ID of the IAM role."
  value       = var.create_iam_role ? aws_iam_role.this[0].id : ""
  depends_on  = [aws_iam_role.this]
}

output "iam_policy_names" {
  description = "The names of the IAM policies."
  value       = var.create_iam_policy && length(var.iam_role_policies) > 0 ? aws_iam_role_policy.this[*].name : []
  depends_on  = [aws_iam_role_policy.this]
}

output "iam_policy_ids" {
  description = "The IDs of the IAM policies."
  value       = var.create_iam_policy && length(var.iam_role_policies) > 0 ? aws_iam_role_policy.this[*].id : []
  depends_on  = [aws_iam_role_policy.this]
}