owner                               = "owner_email_address"
project_prefix                      = "f5xc"
project_suffix                      = "94"
#ssh_public_key_file                 = "path to ssh public key file"
aws_vpc_cidr_block                  = "192.168.0.0/22"
aws_security_group_rules_slo_egress = [
  {
    from_port   = 0
    to_port     = 65535
    ip_protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
aws_security_group_rules_slo_ingress = [
  {
    from_port   = 443
    to_port     = 443
    ip_protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    ip_protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]
#f5xc_tenant                   = "full f5 xc tenant name e.g. playground-abcdefg"
#f5xc_api_url                  = "f5 xc api url e.g. https://https://playground.console.ves.volterra.io/api"
f5xc_aws_region               = "us-west-2"
f5xc_cluster_name             = "aws-ce-test"
#f5xc_api_p12_file             = "path_to_api_cert_file"
f5xc_aws_availability_zone    = "a"
f5xc_aws_vpc_slo_subnet_node0 = "192.168.0.0/26"

