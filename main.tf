terraform {
  required_version = "0.12.23"
  backend "s3" {}
}

provider "digitalocean" {
  token = var.do_token

  version = "~> 1.14"
}
