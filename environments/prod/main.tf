provider "google" {
  project = var.project_id
  region  = var.region
}

module "cloudrun" {
  source     = "../../modules/cloudrun"
  project_id = var.project_id
  region     = var.region
}
