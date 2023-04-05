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

resource "github_actions_organization_variable" "tf_owners_team_id" {
  variable_name = "TFE_OWNERS_TEAM_ID"
  value         = data.tfe_team.owners.id
  visibility    = "all"
}