resource "google_compute_global_address" "private_service_connect" {
  project       = var.project_id
  name          = var.private_service_connect_name
  address_type  = "INTERNAL"
  purpose       = "VPC_PEERING"
  network       = var.network_id
  address       = var.private_service_connect_address
  prefix_length = var.private_service_connect_prefix
}

resource "google_service_networking_connection" "private_service_connection" {
  network                 = var.network_id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_service_connect.name]
}

resource "google_compute_network_peering_routes_config" "private_service_connection" {
  project              = var.project_id
  peering              = "servicenetworking-googleapis-com"
  network              = var.network_name
  import_custom_routes = false
  export_custom_routes = false
}
