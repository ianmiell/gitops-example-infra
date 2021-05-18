resource "google_container_cluster" "gcp_kubernetes" {
    name               = var.cluster_name
    location           = "us-west1-a"
    initial_node_count = var.gcp_cluster_count
    node_locations = [
        "us-west1-b",
        "us-west1-c",
    ]
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
