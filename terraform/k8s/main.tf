# Create a k8s clsuter in DigitalOcean
resource "digitalocean_kubernetes_cluster" "k8s_cluster_tf" {
  name   = var.k8s_cluster_name 
  region = var.k8s_cluster_region 
  version = var.k8s_cluster_version 

  node_pool {
    name       = var.node_name 
    size       = var.node_size 
    node_count = var.node_count 
  }
}