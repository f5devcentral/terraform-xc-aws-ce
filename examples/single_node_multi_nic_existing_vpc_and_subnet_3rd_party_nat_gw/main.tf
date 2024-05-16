locals {
  aws_availability_zone = format("%s%s", var.aws_region, var.aws_availability_zone)
  custom_tags = {
    Owner         = var.owner
    f5xc-tenant   = var.f5xc_tenant
    f5xc-template = "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet_slo_no_eip_nat_gw"
  }
}

module "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet_slo_no_eip_nat_gw" {
  source                        = "../../modules/f5xc/ce/aws"
  owner_tag                     = var.owner
  is_sensitive                  = false
  has_public_ip                 = false
  status_check_type             = "cert"
  create_new_aws_vpc            = false
  create_new_aws_igw            = false
  create_new_aws_sli_rt         = false
  create_new_aws_slo_rt         = false
  create_new_aws_sli_rta        = false
  create_new_aws_slo_rta        = false
  create_new_aws_iam_profile    = false
  create_new_slo_security_group = false
  create_new_sli_security_group = false
  f5xc_tenant                   = var.f5xc_tenant
  f5xc_api_url                  = var.f5xc_api_url
  f5xc_api_token                = var.f5xc_api_token
  f5xc_namespace                = var.f5xc_namespace
  f5xc_token_name               = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_cluster_name             = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_api_p12_file             = var.f5xc_api_p12_file
  f5xc_cluster_labels = {}
  f5xc_aws_vpc_az_nodes = {
    node0 = {
      aws_existing_slo_subnet_id = var.aws_slo_subnet_id_node0
      aws_existing_sli_subnet_id = var.aws_sli_subnet_id_node0
      aws_vpc_az_name            = local.aws_availability_zone
    }
  }
  f5xc_ce_gateway_type                 = var.f5xc_ce_gateway_type
  f5xc_cluster_latitude                = var.f5xc_cluster_latitude
  f5xc_cluster_longitude               = var.f5xc_cluster_longitude
  f5xc_api_p12_cert_password           = var.f5xc_api_p12_cert_password
  aws_region                           = var.aws_region
  aws_existing_vpc_id                  = var.aws_existing_vpc_id
  aws_existing_sg_slo_ids              = var.aws_existing_sg_slo_ids
  aws_existing_sg_sli_ids              = var.aws_existing_sg_sli_ids
  aws_existing_key_pair_id             = var.aws_existing_key_pair_id
  aws_existing_iam_profile_name        = var.aws_existing_iam_profile_name
  aws_security_group_rules_slo_egress  = []
  aws_security_group_rules_slo_ingress = []
  providers = {
    aws      = aws.default
    volterra = volterra.default
  }
}

output "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet_slo_no_eip_nat_gw" {
  value = module.f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet_slo_no_eip_nat_gw
}