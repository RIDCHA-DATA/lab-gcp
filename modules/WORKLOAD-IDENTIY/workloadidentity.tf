



module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = var.project_id
  pool_id     = var.wl_pool_name
  provider_id = var.wl_provider_id
  attribute_mapping = var.attribute_mapping
  sa_mapping = {
    "var.account_name" = {
      sa_name   = "projects/${var.project_id}/serviceAccounts/${var.account_name}@${var.project_id}.iam.gserviceaccount.com"
      attribute = "attribute.repository_owner/RIDCHA-DATA"
    }
  }
}