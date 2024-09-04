output "organization_id" {
  description = "The ID of the created organization."
  value       = tfe_organization.org.id
}

output "project_1_id" {
  description = "The ID of the first project."
  value       = module.project_1.project_id
}

output "project_2_id" {
  description = "The ID of the second project."
  value       = module.project_2.project_id
}
