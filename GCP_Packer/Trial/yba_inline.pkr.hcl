packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1" # Or your desired version 
    }
  }
}

source "googlecompute" "yba-image" {
  project_id   = "devops-456705"
  source_image = "centos-stream-9-v20250311"
  zone         = "us-central1-a"
  machine_type = "e2-standard-4"
  disk_size    = 220
  image_name   = "yba-image-{{timestamp}}"
  disk_type    = "pd-ssd"
  ssh_username = "packer"

  tags = ["yba-image"]
}

build {
  sources = ["sources.googlecompute.yba-image"]

  provisioner "file" {
    source      = "/home/adarshadshetty09/yba.lic" # Local path
    destination = "/tmp/yba-ctl/yba.lic"           # Remote path required by yba-ctl
  }

  provisioner "shell" {
    inline = [
      "set -euxo pipefail",
      "sudo dnf clean all",
      "sudo dnf makecache",
      "sudo dnf install -y wget tar",
      "wget https://downloads.yugabyte.com/releases/2024.2.2.2/yba_installer_full-2024.2.2.2-b2-linux-x86_64.tar.gz",
      "tar -xf yba_installer_full-2024.2.2.2-b2-linux-x86_64.tar.gz",
      "cd yba_installer_full-2024.2.2.2-b2/",
      "sudo mkdir -p /opt/yba-ctl",
      "sudo mv /tmp/yba.lic /opt/yba-ctl/yba.lic",
      "sudo chmod 644 /opt/yba-ctl/yba.lic",
      "yes | sudo ./yba-ctl preflight"
    ]
  }
}
