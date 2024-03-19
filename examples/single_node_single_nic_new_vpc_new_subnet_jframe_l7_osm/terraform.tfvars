owner                                = "owner_email_address"
project_prefix                       = "f5xc"
project_suffix                       = "108"
aws_vpc_cidr_block                   = "192.168.0.0/22"
# f5xc_tenant                   = "f5 xc tenant name"
# f5xc_api_url                  = "f5 xc api url"
f5xc_namespace                       = "system"
f5xc_aws_region                      = "us-west-2"
f5xc_cluster_name                    = "aws-ce-test"
# f5xc_api_p12_file             = "path_to_api_cert_file"
f5xc_aws_availability_zone           = "a"
f5xc_aws_vpc_slo_subnet_node0        = "192.168.0.0/26"
f5xc_ce_performance_enhancement_mode = {
  perf_mode_l7_enhanced = false
  perf_mode_l3_enhanced = {
    jumbo_frame_enabled = true
  }
}
# ssh_public_key_file           = "path to ssh public key file"
