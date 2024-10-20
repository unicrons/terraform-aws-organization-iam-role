data "aws_caller_identity" "this" {}
data "aws_organizations_organization" "this" {}

locals {
  call_as = data.aws_organizations_organization.this.master_account_id == data.aws_caller_identity.this.id ? null : "DELEGATED_ADMIN"
}

################################################################################
# CloudFormation Stack Set
################################################################################

resource "aws_cloudformation_stack_set" "this" {
  name             = var.stack_set_name
  description      = var.stack_set_description

  permission_model = "SERVICE_MANAGED"
  call_as          = local.call_as
  template_body    = file(var.template_path)
  parameters       = var.template_parameters

  capabilities = [
    "CAPABILITY_NAMED_IAM",
  ]

  auto_deployment {
    enabled                          = var.auto_deployment
    retain_stacks_on_account_removal = var.retain_stacks
  }

  operation_preferences {
    failure_tolerance_count      = var.failure_tolerance_count
    failure_tolerance_percentage = var.failure_tolerance_percentage
    max_concurrent_count         = var.max_concurrent_count
    max_concurrent_percentage    = var.max_concurrent_percentage
  }

  managed_execution {
    active = var.managed_execution
  }

  # Terraform updates administration_role_arn in each plan, but this attribute
  # cannot be added when permission_model is SERVICE_MANAGED
  lifecycle {
    ignore_changes = [
      administration_role_arn,
    ]
  }
}

################################################################################
# CloudFormation Stack Set Instances
################################################################################

resource "aws_cloudformation_stack_instances" "this" {
  stack_set_name = aws_cloudformation_stack_set.this.name
  call_as        = local.call_as

  deployment_targets {
    organizational_unit_ids = var.organizational_unit_ids
    accounts                = var.accounts
    account_filter_type     = var.account_filter_type
  }

  operation_preferences {
    concurrency_mode             = var.concurrency_mode
    failure_tolerance_count      = var.failure_tolerance_count
    failure_tolerance_percentage = var.failure_tolerance_percentage
    max_concurrent_count         = var.max_concurrent_count
    max_concurrent_percentage    = var.max_concurrent_percentage
  }
}
