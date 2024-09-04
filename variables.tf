variable "tfe_token" {
  description = "The API token for Terraform Cloud."
  type        = string
  sensitive   = true
}

variable "organization_name" {
  description = "The name of the Terraform Cloud organization."
  type        = string
}

variable "organization_email" {
  description = "The email associated with the organization."
  type        = string
}

variable "project_1_name" {
  description = "The name of the first project."
  type        = string
}

variable "project_2_name" {
  description = "The name of the second project."
  type        = string
}
