module "service_accounts" {
  source        = "github.com/terraform-google-modules/terraform-google-service-accounts"
  project_id    = var.project_id
  prefix        = var.prefix
  names         = var.account_names
  project_roles = [
    "${var.project_id}=>roles/viewer",
    "${var.project_id}=>roles/storage.objectViewer",
    "${var.project_id}=>roles/container.clusterAdmin",
    "${var.project_id}=>roles/iam.workloadIdentityUser",
  ]
  display_name  = "gh-Account"
  description   = "GH Account for CI purpose"
}


module "gh_oidc" {
  for_each = toset(var.account_names)
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = var.project_id
  pool_id     = var.wl_pool_name
  provider_id = var.wl_provider_id
  attribute_mapping = var.attribute_mapping
  sa_mapping = {
    "each.value" = {
      sa_name   = "projects/${var.project_id}/serviceAccounts/${each.value}@${var.project_id}.iam.gserviceaccount.com"
      attribute = "attribute.repository_owner/RIDCHA-DATA"
    }
  }
}