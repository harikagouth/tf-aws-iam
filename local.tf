# /local.tf

locals {
  workspace         = split("-", terraform.workspace)
  domain            = local.workspace[2]
  iam_role_name     = format("role-%s-%s-aws-%s-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], local.workspace[5], var.iam_name)
  iam_shr_role_name = format("role-%s-%s-aws-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], var.iam_name)

  iam_policy_names     = [for name in var.iam_policy_names : format("policy-%s-%s-aws-%s-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], local.workspace[5], name)]
  iam_shr_policy_names = [for name in var.iam_policy_names : format("policy-%s-%s-aws-%s-%s", local.workspace[1], local.workspace[2], local.workspace[4], name)]
}