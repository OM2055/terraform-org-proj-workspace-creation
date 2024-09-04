resource "tfe_workspace" "workspace" {
  name       = var.workspace_name
  project_id = var.project_id
}
