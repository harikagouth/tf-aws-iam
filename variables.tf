# /variables.tf

variable "iam_name" {
  description = "The IAM role name."
  type        = string
  default     = ""
}

variable "iam_assume_role_policy" {
  description = "The assume role policy document for the IAM role."
  type        = string
  default     = ""
}

variable "iam_policy_names" {
  description = "A list of names for the IAM policies."
  type        = list(string)
  default     = []
}

variable "iam_role_policies" {
  description = "A list of policy documents for the role."
  type        = list(string)
  default     = []
}

variable "create_iam_role" {
  description = "Whether to create the IAM role. (Default: true)"
  type        = bool
  default     = true
}

variable "create_iam_policy" {
  description = "Whether to create the IAM role policies. (Default: true)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "(Optional) Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}