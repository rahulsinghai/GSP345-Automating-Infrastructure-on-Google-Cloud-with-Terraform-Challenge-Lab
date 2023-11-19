variable "region" {
  description = "Name of the region"
  type        = string
  default     = "us-east1"
}

variable "zone" {
  description = "Name of the zone"
  type        = string
  default     = "us-east1-d"
}

variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "qwiklabs-gcp-03-a649a1709c5b"
}
