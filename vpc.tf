resource "google_compute_network" "vpc-network" {
  name                    = "my-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "my-subnet-us"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "africa_subnet" {
  name          = "my-subnet-africa"
  ip_cidr_range = "10.1.0.0/24"
  region        = "africa-south1"
  network       = google_compute_network.vpc-network.id
}

resource "google_compute_subnetwork" "europe_subnet" {
  name          = "my-subnet-europe"
  ip_cidr_range = "10.2.0.0/24"
  region        = "europe-west1"
  network       = google_compute_network.vpc-network.id
}

# Firewall rule to allow HTTP (port 80) and HTTPS (port 443) for Africa and Europe subnets only
resource "google_compute_firewall" "allow-http-https-africa-europe" {
  name    = "allow-http-https-africa-europe"
  network = google_compute_network.vpc-network.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = ["allow-http-https"]
}