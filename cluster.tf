resource "digitalocean_kubernetes_cluster" "personal" {
  name    = "sudhanva-personal"
  region  = "nyc1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "default"
    size       = "s-4vcpu-8gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3

    tags = [
      "personal",
      "kubeflow"
    ]

  }
}
