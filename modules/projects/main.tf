resource "tfe_project" "project" {
  name           = var.project_name
  organization   = var.organization_id
}

# Create Projects
module "project_1" {
  source           = "../modules/projects"
  project_name     = var.project_1_name
  organization_id  = data.tfe_organization.existing_org.id
}

module "project_2" {
  source           = "../modules/projects"
  project_name     = var.project_2_name
  organization_id  = data.tfe_organization.existing_org.id
}
# Create workspaces in the project
# module "workspace_1" {
#  source       = "../workspaces"
#  workspace_name  = "${var.project_name}-workspace-1"
#  project_id      = tfe_project.project.id
#}

#module "workspace_2" {
#  source       = "../workspaces"
#  workspace_name  = "${var.project_name}-workspace-2"
#  project_id      = tfe_project.project.id
#}
