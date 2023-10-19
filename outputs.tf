output "private_service_connect_name" {
  description = "Private service connect name"
  value       = google_compute_global_address.private_service_connect.name
}

output "private_service_connect_address" {
  description = "Private service connect address"
  value       = google_compute_global_address.private_service_connect.address
}

output "global_address_id" {
  description = <<-EOF
    An identifier for the global address created for the private service 
    connect with format `projects/{{project}}/global/addresses/{{name}}`
  EOF
  value       = google_compute_global_address.private_service_connect.id
}
