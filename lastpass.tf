#terraform {
#  required_providers {
#    lastpass = {
#      source = "nrkno/lastpass"
#      version = "0.5.1"
#    }
#  }
#}

data "external" "lastpass_credentials" {
  program = ["sh", "/home/ankur/Downloads/tanzu/tanzify-username-live/gcp-PA-arau/us-east1/demo1/_scripts/script.sh"]
}

output "google-service-key" {
  value = jsondecode(data.external.lastpass_credentials.result)
}
