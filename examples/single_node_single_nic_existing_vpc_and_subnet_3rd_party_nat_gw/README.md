# Example Single node single NIC existing VPC and existing subnet with 3rd party NAT GW

This example instantiates:

- Single node CE
- AWS SLO and SLI interface
- AWS security groups

# Usage

- To deploy this example AWS VPC and SLO subnet are required in advance and in particular their IDs
- Additionally, aws key pair id, list of aws security group id(s) for SLO interface and IAM profile needs to be available
- The 3rd party gateway should do SNAT and allow https IPSec ann or SSL traffic
- If needed extend existing IAM policy actions with e.g. "ec2:DescribeKeyPairs"
  [IAM Policy Example](https://docs.cloud.f5.com/docs/reference/cloud-cred-ref/aws-vpc-cred-ref)
- Export AWS_ACCESS_KEY with: `export AWS_ACCESS_KEY_ID="aws access key id"`
- Export AWS_SECRET_ACCESS_KEY with: `export AWS_SECRET_ACCESS_KEY="aws secret access key"`
- Export F5 XC API certificate password with: 
  * `export VES_P12_PASSWORD="p12 password"`
  * `export TF_VAR_f5xc_api_p12_cert_password="$VES_P12_PASSWORD"`
- Edit `terraform.tfvars` file to align with your environment
- Copy F5XC API certificate file obtained in installation step into example directory
- Initialize with: `terraform init`, optionally run `terraform plan`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`