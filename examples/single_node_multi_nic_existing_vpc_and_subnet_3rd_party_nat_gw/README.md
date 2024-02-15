# Example Single node multi NIC existing VPC and existing subnet with 3rd party NAT GW

This example instantiates:

- Single node CE
- AWS SLO and SLI interface
- AWS security groups

# Usage

- To deploy this example, an AWS VPC and SLO, SLI subnets are required in advance and in particular their IDs and 3rd
 party gateway should do SNAT and allow https IPSec ann or SSL traffic
- Additionally, aws key pair id, list of aws security group id(s) for SLO interface needs to be available
- If needed extend existing IAM policy actions with e.g. "ec2:DescribeKeyPairs"
  [IAM Policy Example](https://docs.cloud.f5.com/docs/reference/cloud-cred-ref/aws-vpc-cred-ref)
- Export AWS_ACCESS_KEY with: `export AWS_ACCESS_KEY_ID="aws access key id"`
- Export AWS_SECRET_ACCESS_KEY with: `export AWS_SECRET_ACCESS_KEY=aws secret access key"`
- Export F5 XC API certificate password with: `export VES_P12_PASSWORD="p12 password"`
- Export F5 XC API token with: `export TF_VAR_f5xc_api_token="f5 xc api token"`
- Edit `terraform.tfvars` file to align with your environment
- Copy F5XC API certificate file obtained in installation step into example directory
- Initialize with: `terraform init`, optionally run `terraform plan`
- Apply with: `terraform apply -auto-approve` or destroy with: `terraform destroy -auto-approve`