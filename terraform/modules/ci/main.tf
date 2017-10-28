resource "google_compute_instance" "ci" {
  name         = "ci-server"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
      size  = "${var.disk_size}"
    }
  }

  metadata {
    sshKeys = "appuser:${file("${var.public_key_path}")}"
  }

  network_interface {
    network = "default"

    access_config = {
      nat_ip = "${google_compute_address.ci_server_ip.address}"
    }
  }

  tags = ["http-server", "https-server"]
}

resource "google_compute_address" "ci_server_ip" {
  name = "ci-server-ip"
}
