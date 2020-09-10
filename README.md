# tfc-team-management
tfc-team-management

This repository is used to manage your access to team vendordemos in Terraform Cloud orgnisation yulei.

To add yourself to the vendordemos team in orgnisation, please :

1. Do a [SSO login](https://app.terraform.io/sso/sign-in) to Terraform Cloud orgnisation yulei.
2. create a pull request into this repo with below code.

````
resource "tfe_team_member" "YOUR_NAME" {
  team_id  = data.tfe_team.vendordemos.id
  username = "YOUR_TFC_USERNAME"
}
````