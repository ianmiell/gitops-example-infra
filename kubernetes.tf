resource "google_container_cluster" "gcp_kubernetes" {
    name               = var.cluster_name
    location           = var.cluster_cp_location
    initial_node_count = var.gcp_cluster_count
    node_locations     = var.node_locations
    node_config {
        oauth_scopes = [
          "https://www.googleapis.com/auth/compute",
          "https://www.googleapis.com/auth/devstorage.read_only",
          "https://www.googleapis.com/auth/logging.write",
          "https://www.googleapis.com/auth/monitoring",
        ]
        tags = ["gitops-example"]
    }
}
