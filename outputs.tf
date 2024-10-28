output "network_rule_id" {
  description = "The ID of the network rule."
  value       = azurerm_network_rule.example.id
}

output "network_rule_name" {
  description = "The name of the network rule."
  value       = azurerm_network_rule.example.name
}

output "network_rule_type" {
  description = "The type of the network rule."
  value       = azurerm_network_rule.example.type
}
