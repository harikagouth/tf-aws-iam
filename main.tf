# /main.tf

resource "aws_iam_role" "this" {
  count = var.create_iam_role ? 1 : 0

  name               = local.domain == "shr" ? local.iam_shr_role_name : local.iam_role_name
  assume_role_policy = length(var.iam_assume_role_policy) > 0 ? var.iam_assume_role_policy : null
  tags               = var.tags
}

resource "aws_iam_role_policy" "this" {
  count = var.create_iam_policy && length(var.iam_role_policies) > 0 ? length(var.iam_role_policies) : 0

  name   = local.domain == "shr" ? local.iam_shr_policy_names[count.index] : local.iam_policy_names[count.index]
  role   = aws_iam_role.this[0].name
  policy = var.iam_role_policies[count.index]
}