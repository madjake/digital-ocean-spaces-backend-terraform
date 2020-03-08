terraform {
  required_version = "0.12.23"
}
provider "digitalocean" {
  token = var.do_token
  spaces_access_id  = var.access_id
  spaces_secret_key = var.secret_key
  version = "~> 1.14"
}

resource "digitalocean_spaces_bucket" "terraform_backend" {
  name   = var.terraform_backend_bucket_name
  region = "nyc3"
}

output "terraform_backend_bucket_domain_name" {
  value = digitalocean_spaces_bucket.terraform_backend.bucket_domain_name
}

output "terraform_backend_bucket_name" {
  value = digitalocean_spaces_bucket.terraform_backend.name  
}

output "terraform_backend_bucket_region" {
  value = digitalocean_spaces_bucket.terraform_backend.region
}
