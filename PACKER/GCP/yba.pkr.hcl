packer {
  required_plugins {
    googlecompute = {
      source  = "github.com/hashicorp/googlecompute"
      version = "~> 1"
    }
  }
}

source "googlecompute" "yba-hcl" {
  project_id = "spheric-mesh-465208-h9"
  #   source_image            = "centos-stream-9-v20250610"
  source_image_family     = "centos-stream-9"
  network_project_id = "bank-vp"
  subnetwork = "bank-subnetwork"
  ssh_username            = "packer"
  zone                    = "us-south1-a"
  image_name              = "yba-hcl-{{timestamp}}"
  image_description       = "YBA Packer Image In HCL Format"
  image_storage_locations = ["us-south1"]
  machine_type            = "e2-standard-4"
  disk_name               = "yba-disk"
  disk_size               = 250
  disk_type               = "pd-ssd"
  service_account_email   = "adarsha@spheric-mesh-465208-h9.iam.gserviceaccount.com"
  image_encryption_key {
    kmsKeyName = "projects/spheric-mesh-465208-h9/locations/global/keyRings/my-keyring/cryptoKeys/secure"
  }


  scopes = [
    "https://www.googleapis.com/auth/compute",
    "https://www.googleapis.com/auth/cloud-platform"
  ]
  tags = ["yba-hcl"]
}
build {
  sources = ["source.googlecompute.yba-hcl"]

  provisioner "shell" {
    inline = [
      "sudo dnf install -y wget tar vim",
      "wget https://downloads.yugabyte.com/releases/2024.2.3.2/yba_installer_full-2024.2.3.2-b6-linux-x86_64.tar.gz",
      "tar -xf yba_installer_full-2024.2.3.2-b6-linux-x86_64.tar.gz",
      "rm yba_installer_full-2024.2.3.2-b6-linux-x86_64.tar.gz",
      "cd yba_installer_full-2024.2.3.2-b6/",
      "sudo mkdir -p /opt/yba-ctl",
      "gcloud secrets versions access latest --secret='yba-lic' > /tmp/yba.lic",
      "sudo mv /tmp/yba.lic /opt/yba-ctl/yba.lic",
      "sudo chmod 644 /opt/yba-ctl/yba.lic",
      "yes | sudo ./yba-ctl preflight"
    ]
  }
}
