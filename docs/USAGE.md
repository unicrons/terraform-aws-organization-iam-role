## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.67 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.67 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudformation_stack_instances.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack_instances) | resource |
| [aws_cloudformation_stack_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack_set) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_organizations_organization.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_stack_set_description"></a> [stack\_set\_description](#input\_stack\_set\_description) | CloudFormation StackSet description. | `string` | n/a | yes |
| <a name="input_stack_set_name"></a> [stack\_set\_name](#input\_stack\_set\_name) | CloudFormation StackSet name. | `string` | n/a | yes |
| <a name="input_template_path"></a> [template\_path](#input\_template\_path) | String containing the path of the CloudFormation template file. | `string` | n/a | yes |
| <a name="input_account_filter_type"></a> [account\_filter\_type](#input\_account\_filter\_type) | Limit deployment targets to individual accounts or include additional accounts with provided OUs. | `string` | `null` | no |
| <a name="input_accounts"></a> [accounts](#input\_accounts) | List of accounts to deploy stack set updates. | `list(string)` | `null` | no |
| <a name="input_auto_deployment"></a> [auto\_deployment](#input\_auto\_deployment) | Enable StackSet automatic deployment for new Organization Accounts. | `bool` | `true` | no |
| <a name="input_concurrency_mode"></a> [concurrency\_mode](#input\_concurrency\_mode) | CloudFormation StackSet concurrency level during operations. | `string` | `null` | no |
| <a name="input_failure_tolerance_count"></a> [failure\_tolerance\_count](#input\_failure\_tolerance\_count) | Number of accounts, per region, for which this operation can fail before CloudFormation stops the operation in that region. | `number` | `null` | no |
| <a name="input_failure_tolerance_percentage"></a> [failure\_tolerance\_percentage](#input\_failure\_tolerance\_percentage) | Percentage of accounts, per region, for which this stack operation can fail before CloudFormation stops the operation in that region. | `number` | `null` | no |
| <a name="input_managed_execution"></a> [managed\_execution](#input\_managed\_execution) | Allow CloudFormation StackSets operations in parallel. | `bool` | `true` | no |
| <a name="input_max_concurrent_count"></a> [max\_concurrent\_count](#input\_max\_concurrent\_count) | Maximum number of accounts in which to perform this operation at one time. | `number` | `null` | no |
| <a name="input_max_concurrent_percentage"></a> [max\_concurrent\_percentage](#input\_max\_concurrent\_percentage) | Maximum percentage of accounts in which to perform this operation at one time. | `number` | `null` | no |
| <a name="input_organizational_unit_ids"></a> [organizational\_unit\_ids](#input\_organizational\_unit\_ids) | Organization root ID or organizational unit (OU) IDs to which StackSets deploys. | `list(string)` | `[]` | no |
| <a name="input_retain_stacks"></a> [retain\_stacks](#input\_retain\_stacks) | Retain CloudFormation StackSet TODO. | `bool` | `true` | no |
| <a name="input_template_parameters"></a> [template\_parameters](#input\_template\_parameters) | Key-value map of input parameters for the StackSet template. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_stack_instance_summaries"></a> [stack\_instance\_summaries](#output\_stack\_instance\_summaries) | List of stack instances created from an organizational unit deployment target. |
| <a name="output_stack_set_arn"></a> [stack\_set\_arn](#output\_stack\_set\_arn) | CloudFormation StackSet ARN. |
| <a name="output_stack_set_id"></a> [stack\_set\_id](#output\_stack\_set\_id) | CloudFormation StackSet Id. |
| <a name="output_stack_set_name"></a> [stack\_set\_name](#output\_stack\_set\_name) | CloudFormation StackSet name. |
