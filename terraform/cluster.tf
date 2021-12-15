resource "digitalocean_kubernetes_cluster" "personal_cluster" {
  name    = "personal-cluster"
  region  = "nyc1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-4gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5

    tags = [
      "personal",
      "cluster"
    ]

  }
}
