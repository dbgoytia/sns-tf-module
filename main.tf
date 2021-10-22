resource "aws_sns_topic" "this" {

  name = var.name

  display_name = var.name
  # policy            = var.policy
  delivery_policy   = file("tfvars/${var.env}/delivery_policy-${var.env}-${var.region}.json")
  kms_master_key_id = var.kms_master_key_id

  tags = var.tags
}