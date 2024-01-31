# Example Single node single NIC new VPC new subnet

This example instantiates:

- Single node CE cluster
- SLO and SLI interface
- AWS VPC
- SLO interface subnet
- SLI interface subnet
- AWS route tables
- AWS Internet Gateway
- Assign AWS EIP to SLO

# Usage

- Export AWS_ACCESS_KEY with: `export AWS_ACCESS_KEY_ID="aws access key id"`
- Export AWS_SECRET_ACCESS_KEY with: `export AWS_SECRET_ACCESS_KEY=aws secret access key"`
- Export F5 XC API certificate password with: `export VES_P12_PASSWORD="p12 password"`
- Export F5 XC API token with: `export TF_VAR_f5xc_api_token="f5 xc api token"`
- Edit `terraform.tfvars.example` file to align with your environment
- Copy `terraform.tfvars.example` with: `cp terraform.tfvars.example terraform.tfvars`
- Copy F5XC API certificate file obtained in installation step into example directory
- Initialize with: `terraform init`, optionally run `terraform plan`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`