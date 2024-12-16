terraform {
  required_version = ">= 1.5.7"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 1.0.0"
    }
  }
}

resource "snowflake_network_rule" "this" {
  name       = "${upper(var.network_rule_name)}_NTW_RULE"
  database   = var.network_rule_database
  schema     = var.network_rule_schema
  comment    = local.default_network_rule_comment
  type       = var.network_rule_type
  mode       = var.network_rule_traffic_mode
  value_list = var.network_rule_value_list
}
