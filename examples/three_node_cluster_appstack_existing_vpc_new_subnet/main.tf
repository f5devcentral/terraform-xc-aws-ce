locals {
  aws_availability_zone_master0 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_master0)
  aws_availability_zone_master1 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_master1)
  aws_availability_zone_master2 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_master2)
  aws_availability_zone_worker0 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_worker0)
  aws_availability_zone_worker1 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_worker1)
  aws_availability_zone_worker2 = format("%s%s", var.f5xc_aws_region, var.f5xc_aws_availability_zone_worker2)
  custom_tags                   = {
    Owner         = var.owner
    f5xc-tenant   = var.f5xc_tenant
    f5xc-template = "f5xc_aws_cloud_ce_three_node_appstack_single_nic_existing_vpc_new_subnet"
  }
}

module "f5xc_aws_cloud_ce_three_node_appstack_single_nic_existing_vpc_new_subnet" {
  source              = "../../modules/f5xc/ce/appstack/aws"
  owner_tag           = var.owner
  is_sensitive        = false
  status_check_type   = "cert"
  create_new_aws_vpc  = false
  f5xc_tenant         = var.f5xc_tenant
  f5xc_api_url        = var.f5xc_api_url
  f5xc_api_token      = var.f5xc_api_token
  f5xc_namespace      = var.f5xc_namespace
  f5xc_aws_region     = var.f5xc_aws_region
  f5xc_token_name     = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_cluster_name   = format("%s-%s-%s", var.project_prefix, var.f5xc_cluster_name, var.project_suffix)
  f5xc_cluster_labels = {}
  f5xc_cluster_nodes  = {
    master = {
      master0 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_master0
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_master0
      }
      master1 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_master1
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_master1
      }
      master2 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_master2
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_master2
      }
    }
    worker = {
      worker1 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_worker0
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_worker0
      }
      worker2 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_worker1
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_worker1
      }
      worker3 = {
        f5xc_aws_vpc_slo_subnet = var.f5xc_aws_vpc_slo_subnet_worker2
        f5xc_aws_vpc_az_name    = local.aws_availability_zone_worker2
      }
    }
  }
  f5xc_ce_gateway_type                 = var.f5xc_ce_gateway_type
  f5xc_cluster_latitude                = var.f5xc_cluster_latitude
  f5xc_cluster_longitude               = var.f5xc_cluster_longitude
  f5xc_site_type_is_secure_mesh_site   = false
  aws_existing_vpc_id                  = var.aws_existing_vpc_id
  aws_instance_type_master             = "t3.xlarge"
  aws_instance_type_worker             = "t3.xlarge"
  aws_security_group_rules_slo_egress  = []
  aws_security_group_rules_slo_ingress = []
  ssh_public_key                       = file(var.ssh_public_key_file)
  providers                            = {
    aws      = aws.default
    volterra = volterra.default
  }
}

output "f5xc_aws_cloud_ce_three_node_appstack_single_nic_existing_vpc_new_subnet" {
  value = module.f5xc_aws_cloud_ce_three_node_appstack_single_nic_existing_vpc_new_subnet
}