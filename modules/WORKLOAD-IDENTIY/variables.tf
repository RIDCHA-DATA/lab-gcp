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

variable "account_names" {
  type = list(string)
  description = "list of sa to create"
}

variable "prefix" {
  type        = string
  description = "Prefix applied to service account names."
  default     = ""
}