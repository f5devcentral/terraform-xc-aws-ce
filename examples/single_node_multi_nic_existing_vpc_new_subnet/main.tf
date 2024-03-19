locals {
  aws_availability_zone = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone)
  custom_tags           = {
    Owner         = var.owner
    f5xc-tenant   = var.f5xc_tenant
    f5xc-template = "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet"
  }
}

module "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet" {
  source                = "../../modules/f5xc/ce/aws"
  owner_tag             = var.owner
  is_sensitive          = false
  has_public_ip         = true
  status_check_type     = "cert"
  create_new_aws_vpc    = false
  f5xc_tenant           = var.f5xc_tenant
  f5xc_api_url          = var.f5xc_api_url
  f5xc_api_token        = var.f5xc_api_token
  f5xc_namespace        = var.f5xc_namespace
  f5xc_aws_region       = var.f5xc_aws_region
  f5xc_token_name       = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_cluster_name     = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_cluster_labels   = {}
  f5xc_aws_vpc_az_nodes = {
    node0 = {
      f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_node0
      f5xc_aws_vpc_sli_subnet = var.f5xc_aws_vpc_sli_subnet_node0
      f5xc_aws_vpc_az_name    = local.aws_availability_zone
    }
  }
  f5xc_ce_gateway_type                 = var.f5xc_ce_gateway_type
  f5xc_cluster_latitude                = var.f5xc_cluster_latitude
  f5xc_cluster_longitude               = var.f5xc_cluster_longitude
  aws_existing_vpc_id                  = var.aws_existing_vpc_id
  aws_security_group_rules_slo_egress  = []
  aws_security_group_rules_slo_ingress = []
  ssh_public_key                       = file(var.ssh_public_key_file)
  providers                            = {
    aws      = aws.default
    restapi  = restapi.default
    volterra = volterra.default
  }
}

output "f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet" {
  value = module.f5xc_aws_cloud_ce_single_node_multi_nic_existing_vpc_new_subnet
}