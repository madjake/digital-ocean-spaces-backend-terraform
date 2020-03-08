variable "do_token" {
  description = "Digital Ocean API Token"
}

variable "do_environment" {
  description = "Digital Ocean projects can have an environment name assigned. One of: development, staging, production"
}

variable "project_name" {
  description = "The Digital Ocean project name"
}

variable "host_server_instance_image" {
  description = "Image name for the host server droplet"
}

variable "host_server_instance_type" {
  description = "Instance type for the host server droplet"
}

variable "host_server_instance_region" {
  description = "Region to deploy the host server droplet to"
}
