resource "google_compute_instance" "tf-instance-1" {
  name         = "tf-instance-1"
  machine_type = "e2-standard-2"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20231115"
    }
  }

  network_interface {
    network = "tf-vpc-279729"
      subnetwork = "subnet-01"
  }

  metadata = {
    "startup-script" = <<-EOT
      #!/bin/bash
    EOT
  }

  allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2" {
  name         = "tf-instance-2"
  machine_type = "e2-standard-2"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20231115"
    }
  }

  network_interface {
    network = "tf-vpc-279729"
      subnetwork = "subnet-02"
  }

  metadata = {
    "startup-script" = <<-EOT
      #!/bin/bash
    EOT
  }

  allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-963378" {
  name         = "tf-instance-963378"
  machine_type = "e2-standard-2"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20231115"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    "startup-script" = <<-EOT
      #!/bin/bash
    EOT
  }

  allow_stopping_for_update = true
}