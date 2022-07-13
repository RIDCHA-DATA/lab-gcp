module "service_accounts" {
  source        = "github.com/terraform-google-modules/terraform-google-service-accounts"
  project_id    = var.project_id
  prefix        = var.prefix
  names         = var.account_names
  project_roles = ["${var.project_id}=>roles/viewer"]
  display_name  = "gh Account"
  description   = "GH Account for CI purpose"
}

module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = var.project_id
  pool_id     = var.wl_pool_name
  provider_id = var.wl_provider_id
  sa_mapping = {
    "var.account_names" = {
      sa_name   = "projects/my-project/serviceAccounts/foo-service-account@my-project.iam.gserviceaccount.com"
      attribute = "attribute.repository/user/repo"
    }
  }
}