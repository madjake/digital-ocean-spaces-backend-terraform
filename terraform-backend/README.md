# Create Digital Ocean Spaces Bucket

This will create a digital ocean spaces bucket that can be used in the root terraform
as a s3 compatible backend to store terraform state.

# Generate tokens

You will need:

 - Digital Ocean API Key
 - Spaces Access ID
 - Spaces Access Secret

Visit [https://cloud.digitalocean.com/account/api/tokens](https://cloud.digitalocean.com/account/api/tokens) to generate keys.

# Using the bucket

Once the bucket is generated you can provide it as a variable in the root terraform.tfbackend

# Usage

Make sure the terraform binary has been downloaded and exists in the root `bin/` directory.

Do the plan:

```bash
../bin/terraform plan -out plan.tfplan
```

Do the apply:

```bash
../bin/terraform apply plan.tfplan
```
