project_id = "vivid-rush-227416"
region     = "asia-east1"
zone       = "asia-east1-b"

wl_pool_name = "gh-pool"
wl_provider_id = "gh-provider"
account_names = [ "gh-account" ]
project_roles = [ "value" ]

attribute_mapping = {
   "google.subject="            = "assertion.sub"
   "attribute.actor"            = "assertion.actor"
   "attribute.aud"              = "assertion.aud"
   "attribute.repository"       = "assertion.repository"
   "attribute.repository_owner" = "assertion.repository_owner"
}