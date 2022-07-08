# The Terraform version and provider.
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# The DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token 
}

# The Kubernetes Cluster module 
module desktop_k8s_cluster_variables_using_local_module {
  source          = "./k8s"
  cluster_name    = var.desktop_k8s_cluster_name
  cluster_region  = var.desktop_k8s_cluster_region
  cluster_version = var.desktop_k8s_cluster_version
  node_name       = var.desktop_node_name
  node_size       = var.desktop_node_size
  node_count      = var.desktop_node_count
}