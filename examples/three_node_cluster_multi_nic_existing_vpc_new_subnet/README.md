# Example three node ce cluster with multi nic and existing VPC and new subnet

This example instantiates:

- Three node CE cluster
- AWS SLO and SLI interface
- AWS SLO interface subnet
- AWS SLI interface subnet
- AWS route tables
- AWS Internet Gateway
- AWS LoadBalancer
- Assign AWS EIP to SLO
- Cluster nodes in different aws availability zones

# Usage

- Export AWS_ACCESS_KEY with: `export AWS_ACCESS_KEY_ID="aws access key id"`
- Export AWS_SECRET_ACCESS_KEY with: `export AWS_SECRET_ACCESS_KEY="aws secret access key"`
- Export F5 XC API certificate password with:
    * `export VES_P12_PASSWORD="p12 password"`
    * `export TF_VAR_f5xc_api_p12_cert_password="$VES_P12_PASSWORD"`
- Edit `terraform.tfvars` file to align with your environment
- Copy F5XC API certificate file obtained in installation step into example directory
- Initialize with: `terraform init`, optionally run `terraform plan`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`