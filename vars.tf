// General Variables
variable "linux_admin_username" {
    type        = string
    description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
    default     = "admin"
}
variable "linux_admin_password" {
    type = string
    description = "The password for the Linux admin account."
}
// GCP Variables
variable "gcp_cluster_count" {
    type = string
    description = "Count of cluster instances to start."
    default = 1
}
variable "cluster_name" {
    type = string
    description = "Cluster name for the GCP Cluster."
}

variable "gcp_project_name" {
    type = string
    description = "GCP project name."
    default = "ianmiell-project-1"
}

variable "gcp_project_region" {
    type = string
    description = "GCP Region for this project."
    default = "us-west-1"
}

variable "node_locations" {
    type = list
    description = "Node locations for your cluster."
    default = ["us-west1-b", "us-west1-c"]
}

variable "cluster_cp_location" {
    type = string
    description = "Location for the cluster control plane."
    default = "us-west1-a"
}
