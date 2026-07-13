variable "attestation_providers" {
  description = <<EOT
Map of attestation_providers, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - open_enclave_policy_base64
    - policy_signing_certificate_data
    - sev_snp_policy_base64
    - sgx_enclave_policy_base64
    - tags
    - tpm_policy_base64
EOT

  type = map(object({
    location                        = string
    name                            = string
    resource_group_name             = string
    open_enclave_policy_base64      = optional(string)
    policy_signing_certificate_data = optional(string)
    sev_snp_policy_base64           = optional(string)
    sgx_enclave_policy_base64       = optional(string)
    tags                            = optional(map(string))
    tpm_policy_base64               = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.attestation_providers : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.attestation_providers : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.attestation_providers : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.attestation_providers : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

