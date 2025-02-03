terraform {
  required_version = ">= 1.3.6"
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = ">= 1.0.0"
    }
  }
}

provider "snowflake" {}

module "snowflake_network_policy_test" {
  source = "../../"

  network_rule_name         = "example_rule"
  network_rule_database     = "EXAMPLE_DB"
  network_rule_schema       = "EXAMPLE_SCHEMA"
  network_rule_type         = "EGRESS" # Replace with your specific rule type EGRESS/INGRESS
  network_rule_traffic_mode = "ALLOW"  # or "DENY"
  network_rule_value_list   = ["192.168.1.1", "192.168.2.0/24"]
}
