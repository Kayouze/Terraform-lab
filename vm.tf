resource "google_compute_instance" "test-vm" {
  name         = "my-vm"
  machine_type = "e2-micro"          
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = "my-subnet"

    access_config {  
    }
  }
}

resource "google_compute_instance" "test-vm-africa" {
  name         = "my-vm-africa"
  machine_type = "e2-micro"
  zone         = "africa-south1-a"
  tags         = ["allow-http-https"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.africa_subnet.id
    access_config {}
  }
}

resource "google_compute_instance" "test-vm-europe" {
  name         = "my-vm-europe"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"
  tags         = ["allow-http-https"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.europe_subnet.id
    access_config {}
  }
}
