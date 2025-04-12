variable "project_id" {
  description = "ID del proyecto en GCP"
  type        = string
}

variable "region" {
  description = "Región para el servicio Cloud Run"
  type        = string
  default     = "us-central1"
}
