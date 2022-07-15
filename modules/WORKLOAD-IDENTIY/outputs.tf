output "email" {
  # This may seem redundant with the `name` input, but it serves an important
  # purpose. Terraform won't establish a dependency graph without this to interpolate on.
  description = "The email address of the custom service account."
  value       = google_service_account.service_account.email
}

output "provider_name" {
  description = "The provider name in the wlid pool"
  value = module.gh_oidc.provider_name
}