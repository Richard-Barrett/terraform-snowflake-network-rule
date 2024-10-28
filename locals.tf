locals {
  default_network_rule_comment = var.network_rule_comment != null ? var.network_rule_comment : "Network Rule for ${var.network_rule_database}/${var.network_rule_schema} called ${var.network_rule_name}"
}
