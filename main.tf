terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "my-ai-project-1-440117"
  credentials = file("my-ai-project-1-440117-7bf477def173.json")
}

resource "google_compute_instance" "test-vm" {
  name         = "kay-test-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

    access_config {  
    }
  }
}

