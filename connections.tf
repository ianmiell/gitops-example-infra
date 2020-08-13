provider "google" {
    credentials = "${file("../secrets/account.json")}"
    project     = "gitops-example"
    region      = "us-west1"
}
