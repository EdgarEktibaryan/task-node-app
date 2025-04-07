# # Description: This file contains the helm charts deployed to the AKS cluster

# Argo Project Charts
# https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd
resource "helm_release" "argo_cd" {
  name             = "argocd"
  chart            = "argo-cd"
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "5.53.12"
  namespace        = "argocd"
  create_namespace = true

  values = [
    file("helm-charts/namespaces/argocd/argo-cd/values.yml")
  ]
  depends_on = [ azurerm_kubernetes_cluster_node_pool.node01 ]
}

# https://github.com/argoproj/argo-helm/tree/main/charts/argocd-apps
resource "helm_release" "argo_apps" {
  name             = "argocd-app"
  chart            = "argocd-apps"
  repository       = "https://argoproj.github.io/argo-helm"
  version          = "0.0.6"
  namespace        = "argocd"
  create_namespace = true

  values = [
    file("helm-charts/namespaces/argocd/argo-apps/values.yml")
  ]
  depends_on = [ helm_release.argo_cd ]
}
