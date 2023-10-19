variable "project_id" {
  description = "Project ID for Private Service Connect."
  type        = string
}

variable "network_id" {
  description = "Network ID for Private Service Connect."
  type        = string
}

variable "network_name" {
  description = "Network name for Private Service Connect peering."
  type        = string
}

variable "private_service_connect_name" {
  description = "Private Service Connect endpoint name."
  type        = string
  default     = "private-service-connect"
}

variable "private_service_connect_address" {
  description = "The IP address or beginning of the address range to be used for the private service connect."
  type        = string
}

variable "private_service_connect_prefix" {
  description = "The prefix length of the IP range."
  type        = number
}
