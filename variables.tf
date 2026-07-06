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
  # --- Unconfirmed validation candidates, derived from azurerm_attestation_provider's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.AttestationProviderName] !ok
  # path: name
  #   source:    [from validate.AttestationProviderName] !regexp.MustCompile(`^[a-z\d]{3,24}\z`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: policy_signing_certificate_data
  #   source:    [from validate.IsCert] !ok
  # path: policy_signing_certificate_data
  #   source:    [from validate.IsCert] block == nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
  # path: open_enclave_policy_base64
  #   source:    validate.ContainsABase64UriEncodedJWTOfAStoredAttestationPolicy: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sgx_enclave_policy_base64
  #   source:    validate.ContainsABase64UriEncodedJWTOfAStoredAttestationPolicy: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: tpm_policy_base64
  #   source:    validate.ContainsABase64UriEncodedJWTOfAStoredAttestationPolicy: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sev_snp_policy_base64
  #   source:    validate.ContainsABase64UriEncodedJWTOfAStoredAttestationPolicy: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

