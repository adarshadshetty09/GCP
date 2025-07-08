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

  tags = ["yba-hcl"]
}
build {
  sources = ["source.googlecompute.yba-hcl"]
 
  provisioner "shell" {
    inline = [
      "sudo yum install -y wget curl tar"
    ]
  }
 
  provisioner "ansible" {
    playbook_file   = "gagana.yaml"
    extra_arguments = ["-vv"]
    use_proxy       = false
  }
}
