output "attestation_providers_attestation_uri" {
  description = "Map of attestation_uri values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.attestation_uri }
}
output "attestation_providers_location" {
  description = "Map of location values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.location }
}
output "attestation_providers_name" {
  description = "Map of name values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.name }
}
output "attestation_providers_open_enclave_policy_base64" {
  description = "Map of open_enclave_policy_base64 values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.open_enclave_policy_base64 }
}
output "attestation_providers_policy_signing_certificate_data" {
  description = "Map of policy_signing_certificate_data values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.policy_signing_certificate_data }
}
output "attestation_providers_resource_group_name" {
  description = "Map of resource_group_name values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.resource_group_name }
}
output "attestation_providers_sev_snp_policy_base64" {
  description = "Map of sev_snp_policy_base64 values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.sev_snp_policy_base64 }
}
output "attestation_providers_sgx_enclave_policy_base64" {
  description = "Map of sgx_enclave_policy_base64 values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.sgx_enclave_policy_base64 }
}
output "attestation_providers_tags" {
  description = "Map of tags values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.tags }
}
output "attestation_providers_tpm_policy_base64" {
  description = "Map of tpm_policy_base64 values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.tpm_policy_base64 }
}
output "attestation_providers_trust_model" {
  description = "Map of trust_model values across all attestation_providers, keyed the same as var.attestation_providers"
  value       = { for k, v in azurerm_attestation_provider.attestation_providers : k => v.trust_model }
}

