resource "google_storage_bucket" "gcp-bucket" {
  name     = "nexedge-bucket-kayus243223"
  location = "US" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket1" {
  name     = "Kayode-bucket-2023"
  location = "africa" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "gcp-bucket2" {
  name     = "Kayode-bucket-2024"
  location = "europe" 
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}
