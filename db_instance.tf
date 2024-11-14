resource "google_sql_database_instance" "instance" {
  name             = "mysql-db"
  region           = "us-central1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}

resource "google_sql_database_instance" "instance" {
  name             = "mysql-db1"
  region           = "africa-south1"
  database_version = "MYSQL_8_0"
  settings {
    tier = "db-f1-micro"
  }

  deletion_protection  = "false"
}

resource "google_sql_database_instance" "my_postgres" {
  name             = "my-postgres"
  region           = "europe-west1"
  database_version = "POSTGRES_13"
  
  settings {
    tier = "db-f1-micro"
 }

  deletion_protection  = "false"
}