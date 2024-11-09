terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "kayuze1st"
  credentials = file("kayuze1st-29d30303d07e.json")
}
