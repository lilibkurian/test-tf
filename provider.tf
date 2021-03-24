terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.53.0"
    }
  }
}

provider "google" {
  project = var.project
  #access_token = var.gcp_access_token
  credentials = file("./auth/sfsf-key.json")
  zone        = local.zone
  region      = var.region
}

provider "google-beta" {
  project     = var.project
  credentials = file("./auth/sfsf-key.json")
  region      = var.region
  zone        = local.zone
}