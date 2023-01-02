output "resource_group_id" {
  description = "Resource Group ID"
  value       = azurerm_resource_group.rg.*.id
}
