module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = "gke-test-320301" 
  pool_id     = "example-pool"
  provider_id = "example-gh-provider"
  sa_mapping = {
    "foo-service-account" = {
      sa_name   = "projects/gke-test-320301/serviceAccounts/codebuild-gitflow@gke-test-320301.iam.gserviceaccount.com"
      attribute = "attribute.repository/ramneekkh/anthos-gke-deployment"
    }
  }
}

