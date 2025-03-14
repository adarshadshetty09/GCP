// Terraform plugin for creating random ids

# resource "random_id" "instance_id" {
#   byte_length = 8
# }

resource "google_compute_instance" "vm_instance" {
  name         = "my-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["test", "demo1"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "demo"
      }
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"
}