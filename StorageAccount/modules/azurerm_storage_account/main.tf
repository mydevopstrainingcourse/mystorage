resource "azurerm_storage_account" "storage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  # Secure TLS setting
  min_tls_version = "TLS1_2"
   # Optional: secure traffic only
  allow_blob_public_access = false
  enable_https_traffic_only = true
  local_user_enabled       = false
}