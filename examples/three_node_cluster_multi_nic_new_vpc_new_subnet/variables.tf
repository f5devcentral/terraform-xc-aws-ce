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
  default     = "system"
}

variable "aws_region" {
  description = "AWS region name"
  type        = string
}

variable "aws_availability_zone_node0" {
  description = "AWS availability zone name node0"
  type        = string
}

variable "aws_availability_zone_node1" {
  description = "AWS availability zone name node1"
  type        = string
}

variable "aws_availability_zone_node2" {
  description = "AWS availability zone name node2"
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

variable "aws_vpc_cidr_block" {
  description = "AWS VPC CIDR block"
  type        = string
}

variable "aws_vpc_slo_subnet_node0" {
  description = "F5 XC CE node0 SLO interface subnet prefix"
  type        = string
}

variable "aws_vpc_slo_subnet_node1" {
  description = "F5 XC CE node1 SLO interface subnet prefix"
  type        = string
}

variable "aws_vpc_slo_subnet_node2" {
  description = "F5 XC CE node2 SLO interface subnet prefix"
  type        = string
}

variable "aws_vpc_sli_subnet_node0" {
  description = "F5 XC CE node0 SLI interface subnet prefix"
  type        = string
}

variable "aws_vpc_sli_subnet_node1" {
  description = "F5 XC CE node1 SLI interface subnet prefix"
  type        = string
}

variable "aws_vpc_sli_subnet_node2" {
  description = "F5 XC CE node2 SLI interface subnet prefix"
  type        = string
}

variable "f5xc_ce_gateway_type" {
  description = "F5 XC CE gateway type"
  type        = string
  default     = "ingress_egress_gateway"
}

variable "f5xc_api_p12_cert_password" {
  description = "F5 XC API certificate file password"
  type        = string
  default     = ""
}

variable "f5xc_cluster_latitude" {
  description = "F5 XC CE geo latitude"
  type        = number
  default     = -73.935242
}

variable "f5xc_cluster_longitude" {
  description = "F5 XC CE geo longitude"
  type        = number
  default     = 40.730610
}

variable "ssh_public_key_file" {
  description = "path to ssh public key file"
  type        = string
}