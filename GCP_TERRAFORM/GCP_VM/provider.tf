terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.25.0"
    }
  }
}

provider "google" {
  project     = "fleet-bongo-453603-d1"
  credentials = file("fleet-bongo-453603-d1-a4688cf240ff.json")
  region      = "us-central1"
}