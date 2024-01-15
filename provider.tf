terraform {
  required_providers {
    ciscomcd = {
      source = "CiscoDevNet/ciscomcd"
      version = "0.2.4"
    }
  }
}

provider "ciscomcd" {
  # Configuration options
    api_key_file = file(var.valtix_api_key_file)
}