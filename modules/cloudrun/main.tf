resource "google_cloud_run_service" "nginx_service" {
  name     = "nginx-service"
  location = var.region

  template {
    spec {
      containers {
        image = "nginx:latest"
        ports {
          container_port = 80
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_member" "nginx_public_invoker" {
  project  = var.project_id
  location = var.region
  service  = google_cloud_run_service.nginx_service.name
  role     = "roles/run.invoker"
  member   = "allUsers"
}
