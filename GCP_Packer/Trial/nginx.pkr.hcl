packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1" # Or your desired versio
    }
  }
}

source "googlecompute" "nginx-image" {
  project_id   = "fleet-bongo-453603-d1"     # Your Project ID 
  source_image = "centos-stream-9-v20250311" # Or your desired base image
  zone         = "us-central1-a"             # Or your desired zone
  machine_type = "n1-standard-8"
  disk_size    = 30
  image_name   = "nginx-image-{{timestamp}}"
  disk_type    = "pd-ssd"
  ssh_username = "centos"

  tags = ["yugabytedb-image"]

  # No explicit credentials here - Packer will use ADC
}

build {
  sources = ["source.googlecompute.nginx-image"]

  provisioner "shell" {
    inline = [
      "sudo yum -y  update", # Automatically confirm the update process
      "sudo yum -y install nginx",
      "sudo systemctl enable nginx",
    ]
  }
}
