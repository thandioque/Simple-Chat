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
module "terraform-digital_ocean_k8s_cluster_variables" {
  source              = "./modules/k8s"
  k8s_cluster_name    = var.desktop_k8s_cluster_name
  k8s_cluster_region  = var.desktop_k8s_cluster_region
  k8s_cluster_version = var.desktop_k8s_cluster_version
  node_name           = var.desktop_node_name
  node_size           = var.desktop_node_size
  node_count          = var.desktop_node_count
}