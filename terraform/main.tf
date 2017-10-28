provider "google" {
  credentials = "${file("${var.credentials_path}")}"
  project     = "${var.project}"
  region      = "${var.region}"
}

module "ci" {
  source          = "modules/ci"
  machine_type    = "${var.machine_type}"
  zone            = "${var.zone}"
  public_key_path = "${var.public_key_path}"
  disk_image      = "${var.ci_disk_image}"
  disk_size       = "${var.ci_disk_size}"
}

module "vpc" {
  source        = "modules/vpc"
  source_ranges = "${var.vpc_source_ranges}"
}
