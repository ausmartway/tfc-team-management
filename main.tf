provider "tfe" {
  version  = "~> 0.15.0"
}

data "tfe_team" "vendordemos" {
  name         = "vendordemos"
  organization = var.tfc_orgname
}

resource "tfe_team_member" "yulei" {
  team_id  = data.tfe_team.vendordemos.id
  username = "yulei-ops"
}
