terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"  # Ruta a tu archivo de configuración de Kubernetes
}


resource "kubernetes_service" "nginxp" {
  metadata {
    name = "nginxp"
    labels = {
      app = "nginxp"
    }
  }
  spec {
    selector = {
      app = "nginxp"
    }
    port {
      port        = 80
      target_port = 80
      name        = "http"
    }
    type = "LoadBalancer"
  }
}

resource "kubernetes_deployment" "nginxp" {
  metadata {
    name = "nginxp"
    labels = {
      app = "nginxp"
    }
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "nginxp"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginxp"
        }
      }
      spec {
        container {
          name  = "nginxp"
          image = "nginx:latest"

          port {
            container_port = 80
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "api" {
  metadata {
    name = "api"
    labels = {
      app = "api"
    }
  }
  spec {
    selector = {
      app = "api"
    }
    port {
      port        = 5000
      target_port = 5000
      name        = "http"
    }
    type = "LoadBalancer"
  }
}

resource "kubernetes_deployment" "api" {
  metadata {
    name = "api"
    labels = {
      app = "api"
    }
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "api"
      }
    }

    template {
      metadata {
        labels = {
          app = "api"
        }
      }
      spec {
        container {
          name  = "api"
          image = "ayuda-app"
		  image_pull_policy = "Never"

          port {
            container_port = 5000
          }
        }
      }
    }
  }
}

resource "kubernetes_service" "mongo" {
  metadata {
    name = "mongo"
    labels = {
      app = "mongo"
    }
  }
  spec {
    selector = {
      app = "mongo"
    }
    port {
      port        = 27017
      target_port = 27017
      name        = "mongodb"
    }
    type = "LoadBalancer"
  }
}

resource "kubernetes_deployment" "mongo" {
  metadata {
    name = "mongo"
    labels = {
      app = "mongo"
    }
  }
  spec {
    replicas = 1

    selector {
      match_labels = {
        app = "mongo"
      }
    }

    template {
      metadata {
        labels = {
          app = "mongo"
        }
      }
      spec {
        container {
          name  = "mongo"
          image = "mongo:latest"

          port {
            container_port = 27017
          }
        }
      }
    }
  }
}