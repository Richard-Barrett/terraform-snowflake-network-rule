variable "network_rule_comment" {
  description = "A comment to add to the network rule. Defaults to a generated comment if not provided."
  type        = string
  default     = null
}

variable "network_rule_database" {
  description = "The database where the network rule will be applied."
  type        = string
}

variable "network_rule_name" {
  description = "The name of the network rule to be created."
  type        = string
}

variable "network_rule_schema" {
  description = "The schema within the database where the network rule will be applied."
  type        = string
}

variable "network_rule_traffic_mode" {
  description = "The mode of traffic for the network rule (e.g., ALLOW, DENY)."
  type        = string
}

variable "network_rule_type" {
  description = "The type of network rule."
  type        = string
}

variable "network_rule_value_list" {
  description = "A list of values (e.g., IP addresses) for the network rule."
  type        = list(string)
}
