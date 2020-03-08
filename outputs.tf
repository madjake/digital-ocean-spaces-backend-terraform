output "public_host_server_ip" {
  description = "Assigned IP address to the host server that should be used publicly"
  value = digitalocean_droplet.host.ipv4_address
}
