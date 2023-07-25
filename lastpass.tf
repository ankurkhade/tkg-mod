#terraform {
#  required_providers {
#    lastpass = {
#      source = "nrkno/lastpass"
#      version = "0.5.1"
#    }
#  }
#}

data "local_file" "credentials_file" {
  filename = "/home/ankur/Downloads/tanzu/tanzify-username-live/gcp-PA-arau/us-east1/demo1/_scripts/gke-sda-credentials.json"
}

output "google-service-key" {
  value = jsondecode(data.local_file.credentials_file.content)
}
