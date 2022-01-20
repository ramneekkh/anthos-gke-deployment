module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = "kcc-clean" 
  pool_id     = "example-pool"
  provider_id = "example-gh-provider"
  sa_mapping = {
    "foo-service-account" = {
      sa_name   = "projects/kcc-clean/serviceAccounts/codebuild-gitflow@kcc-clean.iam.gserviceaccount.com"
      attribute = "attribute.repository/ramneekkh/kcc-resource-deployment"
    }
  }
}

