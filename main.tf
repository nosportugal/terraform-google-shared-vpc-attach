  
/******************************************
  Enable compute api
 *****************************************/
resource "google_project_service" "project" {
  project            = var.service_project_id
  service            = "compute.googleapis.com"
  disable_on_destroy = false
}

/******************************************
  Attach project to Host Project.
  see:https://cloud.google.com/vpc/docs/provisioning-shared-vpc#create-shared
 *****************************************/
resource "google_compute_shared_vpc_service_project" "service" {
  host_project    = var.host_project_id
  service_project = var.service_project_id

  depends_on = [google_project_service.project]
}
