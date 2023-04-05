variable "github_token" {
  description = "GitHub Personal Access Token for authentication"
  sensitive   = true
}

provider "github" {
  token = var.github_token
  owner = "ORGANIZATION_NAME"
}

resource "github_actions_organization_secret" "tf_api_token" {
  secret_name     = "TF_API_TOKEN"
  plaintext_value = tfe_team_token.team_token.token
  visibility      = "all"
}