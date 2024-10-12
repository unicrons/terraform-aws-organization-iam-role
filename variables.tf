
variable "stack_set_name" {
  description = "CloudFormation StackSet name."
  type        = string
}

variable "stack_set_description" {
  description = "CloudFormation StackSet description."
  type        = string
}

variable "auto_deployment" {
  description = "Enable StackSet automatic deployment for new Organization Accounts."
  type        = bool
  default     = true
}

variable "retain_stacks" {
  description = "Whether or not to retain stacks when the account is removed."
  type        = bool
  default     = true
}

variable "managed_execution" {
  description = "Allow CloudFormation StackSets operations in parallel."
  type        = bool
  default     = true
}

variable "max_concurrent_count" {
  description = "Maximum number of accounts in which to perform this operation at one time."
  type        = number
  default     = null
}

variable "max_concurrent_percentage" {
  description = "Maximum percentage of accounts in which to perform this operation at one time."
  type        = number
  default     = null
}

variable "failure_tolerance_count" {
  description = "Number of accounts, per region, for which this operation can fail before CloudFormation stops the operation in that region."
  type        = number
  default     = null
}

variable "failure_tolerance_percentage" {
  description = "Percentage of accounts, per region, for which this stack operation can fail before CloudFormation stops the operation in that region."
  type        = number
  default     = null
}

variable "concurrency_mode" {
  description = "CloudFormation StackSet concurrency level during operations."
  type        = string
  default     = null
}

variable "template_path" {
  description = "String containing the path of the CloudFormation template file."
  type        = string
}

variable "template_parameters" {
  description = "Key-value map of input parameters for the StackSet template."
  type        = map(string)
  default     = {}
}

variable "organizational_unit_ids" {
  description = "Organization root ID or organizational unit (OU) IDs to which StackSets deploys."
  type        = list(string)
  default     = []
}

variable "accounts" {
  description = "List of accounts to deploy stack set updates."
  type        = list(string)
  default     = null
}

variable "account_filter_type" {
  description = "Limit deployment targets to individual accounts or include additional accounts with provided OUs."
  type        = string
  default     = null
}
