# Sudhanva's Personal Kubernetes Cluster

My personal kubernetes cluster. Hosts my personal projects.

## Installation

* `doctl kubernetes cluster kubeconfig save xxxxxxxx`
* `kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/do/deploy.yaml`
* `kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.crds.yaml`
* `helm install cert-manager jetstack/cert-manager  --namespace cert-manager  --create-namespace --version v1.6.1`
* `k apply -f cert.yaml`
* `openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls.key -out tls.crt -subj "/CN=sudhanva.me/O=sudhanva.me"`
* `kubectl create secret tls tls-secret --key tls.key --cert tls.crt`
* `k create namespace ghost`
* `k apply -f ingress.yaml`
* `helm install sudhanva-v1 bitnami/ghost --namespace ghost --set service.type=ClusterIP,ghostHost="sudhanva.me",ghostEnableHttps=true,ghostPassword="PASSWORD",mariadb.auth.rootPassword="PASSWORD",mariadb.auth.password="PASSWORD"`

## List Of Selected Personal projects
* [Sudhanva's Personal Website](https://sudhanva.me)
  * Ghost CMS, Stripe API for Payments and Mailgun for newsletters
* [Sudhanva's Personal Kubeflow Kubernetes Cluster](https://kubeflow.sudhanva.me)
  * Kubeflow, Kubeflow UI, Kubeflow Pipelines
  * Terraform, Digital Ocean Kubernetes Cluster
  * Digital Ocean autoscale, loadbalancer, etc.

## Link To Personal Website
* [https://sudhanva.me/](https://sudhanva.me/)

## Link To My Portfolio
* [https://sudhanva.me/tag/portfolio/](https://sudhanva.me/tag/portfolio/)

