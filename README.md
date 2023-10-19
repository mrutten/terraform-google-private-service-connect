# Table of Contents

- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
  - [Requirements](#requirements)
  - [Providers](#providers)
  - [Modules](#modules)
  - [Resources](#resources)
  - [Inputs](#inputs)
  - [Outputs](#outputs)

# Introduction

This is a Terraform module that creates a private service connect for a VPC.

## Requirements

| Name                                                                      | Version |
| ------------------------------------------------------------------------- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_google"></a> [google](#requirement\_google)          | 5.2.0   |

## Providers

| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 5.2.0   |

## Modules

No modules.

## Resources

| Name                                                                                                                                                                                           | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_compute_global_address.private_service_connect](https://registry.terraform.io/providers/hashicorp/google/5.2.0/docs/resources/compute_global_address)                                  | resource |
| [google_compute_network_peering_routes_config.private_service_connection](https://registry.terraform.io/providers/hashicorp/google/5.2.0/docs/resources/compute_network_peering_routes_config) | resource |
| [google_service_networking_connection.private_service_connection](https://registry.terraform.io/providers/hashicorp/google/5.2.0/docs/resources/service_networking_connection)                 | resource |

## Inputs

| Name                                                                                                                                  | Description                                                                                  | Type     | Default                     | Required |
| ------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------- | --------------------------- | :------: |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id)                                                                    | Network ID for Private Service Connect.                                                      | `string` | n/a                         |   yes    |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name)                                                              | Network name for Private Service Connect peering.                                            | `string` | n/a                         |   yes    |
| <a name="input_private_service_connect_address"></a> [private\_service\_connect\_address](#input\_private\_service\_connect\_address) | The IP address or beginning of the address range to be used for the private service connect. | `string` | n/a                         |   yes    |
| <a name="input_private_service_connect_name"></a> [private\_service\_connect\_name](#input\_private\_service\_connect\_name)          | Private Service Connect endpoint name.                                                       | `string` | `"private-service-connect"` |    no    |
| <a name="input_private_service_connect_prefix"></a> [private\_service\_connect\_prefix](#input\_private\_service\_connect\_prefix)    | The prefix length of the IP range.                                                           | `number` | n/a                         |   yes    |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id)                                                                    | Project ID for Private Service Connect.                                                      | `string` | n/a                         |   yes    |

## Outputs

| Name                                                                                                                                    | Description                                                                                                                                   |
| --------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| <a name="output_global_address_id"></a> [global\_address\_id](#output\_global\_address\_id)                                             | An identifier for the global address created for the private service <br>connect with format `projects/{{project}}/global/addresses/{{name}}` |
| <a name="output_private_service_connect_address"></a> [private\_service\_connect\_address](#output\_private\_service\_connect\_address) | Private service connect address                                                                                                               |
| <a name="output_private_service_connect_name"></a> [private\_service\_connect\_name](#output\_private\_service\_connect\_name)          | Private service connect name                                                                                                                  |
