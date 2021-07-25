// General Variables
variable "linux_admin_username" {
    type        = string
    description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
}
variable "linux_admin_password" {
    type = string
    description = "The password for the Linux admin account."
}
// GCP Variables
variable "gcp_cluster_count" {
    type = string
    description = "Count of cluster instances to start."
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
