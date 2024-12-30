# rtlh-tf-iam
Terraform repo for the iam role and policy module

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=5.23.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=5.23.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_iam_policy"></a> [create\_iam\_policy](#input\_create\_iam\_policy) | Whether to create the IAM role policies. (Default: true) | `bool` | `true` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Whether to create the IAM role. (Default: true) | `bool` | `true` | no |
| <a name="input_iam_assume_role_policy"></a> [iam\_assume\_role\_policy](#input\_iam\_assume\_role\_policy) | The assume role policy document for the IAM role. | `string` | `""` | no |
| <a name="input_iam_name"></a> [iam\_name](#input\_iam\_name) | The IAM role name. | `string` | `""` | no |
| <a name="input_iam_policy_names"></a> [iam\_policy\_names](#input\_iam\_policy\_names) | A list of names for the IAM policies. | `list(string)` | `[]` | no |
| <a name="input_iam_role_policies"></a> [iam\_role\_policies](#input\_iam\_role\_policies) | A list of policy documents for the role. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_policy_ids"></a> [iam\_policy\_ids](#output\_iam\_policy\_ids) | The IDs of the IAM policies. |
| <a name="output_iam_policy_names"></a> [iam\_policy\_names](#output\_iam\_policy\_names) | The names of the IAM policies. |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | The ARN of the IAM role. |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | The ID of the IAM role. |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | The name of the IAM role. |
<!-- END_TF_DOCS -->
