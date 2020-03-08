resource "digitalocean_project" "host" {
  name        = "${terraform.workspace}-${var.project_name}"
  description = "Grouping all related resources together for ${terraform.workspace}-${var.project_name}"
  purpose     = "Project resources"
  environment = var.do_environment

  resources   = [
    digitalocean_droplet.host.urn 
  ]
}

resource "digitalocean_droplet" "host" {
  name               = var.project_name
  size               = var.host_server_instance_type
  image              = var.host_server_instance_image
  region             = var.host_server_instance_region
  backups            = true
  monitoring         = true
  ipv6               = true
}
