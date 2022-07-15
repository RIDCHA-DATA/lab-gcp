variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "zone" {
  description = "zone"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

variable "wl_pool_name"{
    description = "workload identiy pool name"
}

variable "wl_provider_id" {
    description = "workload identity provider id"
}


variable "prefix" {
  type        = string
  description = "Prefix applied to service account names."
  default     = ""
}

variable "account_name" {
  description = "The name of the custom service account. This parameter is limited to a maximum of 28 characters."
  type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL MODULE PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "description" {
  description = "The description of the custom service account."
  type        = string
  default     = "GH sa Account for CI purpose"
}

variable "service_account_roles" {
  description = "Additional roles to be added to the service account."
  type        = list(string)
  default     = []
}

variable "attribute_mapping" {
  type = map(any)
  description = "Workload Identity Pool Provider attribute mapping. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)"
  default = {
    "google.subject"             = "assertion.sub"
    "attribute.actor"            = "assertion.actor"
    "attribute.aud"              = "assertion.aud"
    "attribute.repository"       = "assertion.repository"
    "attribute.repository_owner" = "assertion.repository_owner"
  }
}