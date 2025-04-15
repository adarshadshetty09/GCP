terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.29.0"
    }
  }
}

provider "google" {
  # credentials = "${file("cred.json")}"  // "gcloud auth application-default login"
  project = "devops-456705"
  region  = "us-central1"
}

resource "google_compute_network" "custom-vpc-terraform" {
  project                 = "devops-456705"
  name                    = "custom-vpc-terraform"
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL" // REGIONAL
  description             = "This VPC created through Terraform"
  mtu                     = 1460
}

resource "google_compute_subnetwork" "public_subnet_1" {
  name                     = "public-subnet-1a"
  ip_cidr_range            = "10.2.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.custom-vpc-terraform.id
  private_ip_google_access = false

  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }

  depends_on = [google_compute_network.custom-vpc-terraform]
}

resource "google_compute_subnetwork" "private_subnet_1" {
  name                     = "private-subnet-1a"
  ip_cidr_range            = "10.3.0.0/16"
  region                   = "us-central1"
  network                  = google_compute_network.custom-vpc-terraform.self_link // Preferred this one
  private_ip_google_access = true

  secondary_ip_range { // FOR GKE CLUSTER
    range_name    = "tf-test-secondary-range-update2"
    ip_cidr_range = "192.167.10.0/24"
  }

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }

  depends_on = [google_compute_network.custom-vpc-terraform]
}


resource "google_compute_router" "router-for-custom-vpc" {
  name        = "custom-router"
  network     = google_compute_network.custom-vpc-terraform.id
  description = "Router for public and private subnet"
  region      = "us-central1"

  bgp {
    asn            = 64512
    advertise_mode = "CUSTOM"

    advertised_ip_ranges {
      description = "Default Route"
      range       = "0.0.0.0"
    }
  }
}


resource "google_compute_router_nat" "cloud-compute-nat" {
  name                                = "demo-nat-v0"
  router                              = google_compute_router.router-for-custom-vpc.name
  region                              = google_compute_router.router-for-custom-vpc.region
  nat_ip_allocate_option              = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat  = "LIST_OF_SUBNETWORKS"
  min_ports_per_vm                    = 64
  udp_idle_timeout_sec                = 30
  tcp_established_idle_timeout_sec    = 1200
  tcp_transitory_idle_timeout_sec     = 30
  icmp_idle_timeout_sec               = 30
  drain_nat_ips                       = []
  enable_endpoint_independent_mapping = false
  project                             = "devops-456705"

  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }

  subnetwork {
    name                     = google_compute_subnetwork.private_subnet_1.name
    source_ip_ranges_to_nat  = ["PRIMARY_IP_RANGE"]
    secondary_ip_range_names = []
  }
}

resource "google_compute_firewall" "allow-ssh-http-icmp" {
  name    = "allow-ssh-http-icmp"
  network = google_compute_network.custom-vpc-terraform.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  source_ranges = ["0.0.0.0/0"]
  priority      = 1000
  target_tags   = ["web-server"]
  description   = "Allow SSH, HTTP and ICMP from all sources"
}


resource "google_compute_instance" "public-vm" {
  name         = "public-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["web-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "NVME"
  # }

  network_interface {
    network    = google_compute_network.custom-vpc-terraform.name
    subnetwork = google_compute_subnetwork.public_subnet_1.name
    access_config {
      // Allows Ephemeral public IP
    }
  }

  metadata_startup_script = "echo hi private vm > /test.txt"


  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "test-practice@devops-456705.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}


resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["web-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      labels = {
        my_label = "value"
      }
    }
  }

  # // Local SSD disk
  # scratch_disk {
  #   interface = "NVME"
  # }

  network_interface {
    network    = google_compute_network.custom-vpc-terraform.name
    subnetwork = google_compute_subnetwork.private_subnet_1.name
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi private vm > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "test-practice@devops-456705.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}


// sudo apt install net-tools