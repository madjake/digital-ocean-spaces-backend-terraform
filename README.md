# Digital Ocean Terraform Infastructure Provisioning

Stands up the infrastructure necessary to run a simple, single host
with a floating IP. Terraform state is stored remotely in a Digital Ocean 
Spaces bucket.

I use this as a template and starting point for new infrastructure.

# Setup

1. Generate API key, spaces id and spaces secret key: [https://cloud.digitalocean.com/account/api](https://cloud.digitalocean.com/account/api)
1. Create Spaces bucket. See `terraform-backend/README.md` for instructions.
1. Configure `terraform.tfvars` to your liking
1. Configure `terraform.tfbackend` with your desired backend .
1. Run: `./bin/run_terraform.sh plan`
1. Verify plan looks correct.
1. Run: `./bin/run_terraform.sh apply`
1. You now have a project and droplet setup.
 
# Remote State

DO Spaces is s3 compatible so it's possible to use an s3 backend. 

Comment out the terraform backend from `main.tf` if you don't want to
use Digital Ocean Spaces. If you do this terraform state will need to
be backed up some other way (commited to private repository or some
other safe place).
