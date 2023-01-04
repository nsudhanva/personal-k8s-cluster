resource "digitalocean_kubernetes_cluster" "personal_cluster" {
  name    = "personal-cluster"
  region  = "nyc1"
  version = "1.25.4-do.0"
  auto_upgrade = true

  node_pool {
    name       = "default"
    size       = "s-1vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 5

    tags = [
      "personal",
      "cluster"
    ]

  }
}
