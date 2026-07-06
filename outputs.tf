output "attestation_providers" {
  description = "All attestation_provider resources"
  value       = azurerm_attestation_provider.attestation_providers
}
output "attestation_providers_attestation_uri" {
  description = "List of attestation_uri values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.attestation_uri]
}
output "attestation_providers_location" {
  description = "List of location values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.location]
}
output "attestation_providers_name" {
  description = "List of name values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.name]
}
output "attestation_providers_open_enclave_policy_base64" {
  description = "List of open_enclave_policy_base64 values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.open_enclave_policy_base64]
}
output "attestation_providers_policy_signing_certificate_data" {
  description = "List of policy_signing_certificate_data values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.policy_signing_certificate_data]
}
output "attestation_providers_resource_group_name" {
  description = "List of resource_group_name values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.resource_group_name]
}
output "attestation_providers_sev_snp_policy_base64" {
  description = "List of sev_snp_policy_base64 values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.sev_snp_policy_base64]
}
output "attestation_providers_sgx_enclave_policy_base64" {
  description = "List of sgx_enclave_policy_base64 values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.sgx_enclave_policy_base64]
}
output "attestation_providers_tags" {
  description = "List of tags values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.tags]
}
output "attestation_providers_tpm_policy_base64" {
  description = "List of tpm_policy_base64 values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.tpm_policy_base64]
}
output "attestation_providers_trust_model" {
  description = "List of trust_model values across all attestation_providers"
  value       = [for k, v in azurerm_attestation_provider.attestation_providers : v.trust_model]
}

