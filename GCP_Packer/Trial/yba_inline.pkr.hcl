packer {
    required_plugins {
        googlecompute = {
            source  = "github.com/hashicorp/googlecompute"
            version = "~> 1" # Or your desired version 
        }
    }
}

source "googlecompute" "yba-image"{
    project_id    = "devops-456705"
    source_image  = "centos-stream-9-v20250311"
    zone          = "us-central1-a"
    machine_type  = "e2-medium"
    disk_size     = 30
    image_name    = "yba-image-{{timestamp}}"
    disk_type     = "pd-ssd"
    ssh_username  = "packer"

    tags          = ["yba-image"]
}

build {
    source =["source.googlecompute.yba-image"]

    provisioner "shell" {
        inline = [
            "set -e",
            "wget https://downloads.yugabyte.com/releases/2024.2.2.2/yba_installer_full-2024.2.2.2-b2-linux-x86_64.tar.gz",
            "tar -xf yba_installer_full-2024.2.2.2-b2-linux-x86_64.tar.gz",
            "cd yba_installer_full-2024.2.2.2-b2/",
            "yes|sudo ./yba-ctl preflight"


        ]
    }
}