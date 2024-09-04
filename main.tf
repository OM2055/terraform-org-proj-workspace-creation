terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.42.0"
    }
  }

  cloud {
    organization = var.organization_name
    workspaces {
      name = "terraform-org-proj-workspace-creation"
    }
  }
}

provider "tfe" {
  hostname = "app.terraform.io"
  token    = var.tfe_token
}

# Create organization
#resource "tfe_organization" "org" {
#  name  = var.organization_name
#  email = var.organization_email
#}

# Use an existing organization by referencing it directly
data "tfe_organization" "existing_org" {
  name = var.organization_name
}

# Create projects
module "project_1" {
  source           = "./modules/projects"
  project_name     = var.project_1_name
  organization_id  = tfe_organization.org.id
}

module "project_2" {
  source           = "./modules/projects"
  project_name     = var.project_2_name
  organization_id  = tfe_organization.org.id
}
