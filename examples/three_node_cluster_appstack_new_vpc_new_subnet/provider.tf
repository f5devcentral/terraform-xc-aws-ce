provider "volterra" {
  api_p12_file = var.f5xc_api_p12_file
  url          = var.f5xc_api_url
  alias        = "default"
}

provider "aws" {
  region = var.f5xc_aws_region
  alias  = "default"
}

provider "restapi" {
  uri                   = var.f5xc_api_url
  alias                 = "default"
  create_returns_object = true
  headers               = {
    Authorization = format("APIToken %s", var.f5xc_api_token)
    Content-Type  = "application/json"
  }
}