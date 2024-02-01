variable "project_prefix" {
  type        = string
  description = "prefix string put in front of string"
}

variable "project_suffix" {
  type        = string
  description = "prefix string put at the end of string"
}

variable "f5xc_api_p12_file" {
  description = "F5 XC API certificate file"
  type        = string
}

variable "f5xc_api_url" {
  description = "F5 XC API URL"
  type        = string
}

variable "f5xc_api_token" {
  description = "F5 XC API token"
  type        = string
}

variable "f5xc_tenant" {
  description = "F5 XC Tenant name"
  type        = string
}

variable "f5xc_namespace" {
  description = "F5 XC namespace name"
  type        = string
}

variable "f5xc_aws_region" {
  description = "AWS region name"
  type        = string
}

variable "f5xc_aws_availability_zone" {
  description = "AWS availability zone name"
  type        = string
}

variable "f5xc_cluster_name" {
  description = "F5 XC CE cluster name"
  type        = string
}

variable "owner" {
  description = "AWS tag owner email address"
  type        = string
}

variable "aws_existing_vpc_id" {
  description = "The ID of an already existing AWS VPC"
  type        = string
}

variable "f5xc_aws_vpc_slo_subnet_node0" {
  description = "F5 XC CE SLO interface subnet prefix"
  type        = string
}

variable "f5xc_ce_gateway_type" {
  description = "F5 XC CE gateway type"
  type        = string
}

variable "f5xc_cluster_latitude" {
  description = "F5 XC CE geo latitude"
  type        = number
}

variable "f5xc_cluster_longitude" {
  description = "F5 XC CE geo longitude"
  type        = string
}


variable "ssh_public_key_file" {
  description = "path to ssh public key file"
  type        = string
}

