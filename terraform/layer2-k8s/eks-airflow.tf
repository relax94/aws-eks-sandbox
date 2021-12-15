#resource "kubernetes_secret" "airflow-ssh-git-secret" {
#  depends_on = [
#    kubernetes_namespace.airflow,
#  ]
#  metadata {
#    namespace =  "airflow"
#    name = "airflow-ssh-git-secret"
#  }
#  data = {
#    "id_rsa" = file("id_rsa")
#  }
#
#}

#resource "helm_release" "airflow-container" {
#  name       = "airflow-container"
#  repository = "https://airflow-helm.github.io/charts"
#  chart      = "airflow"
#  namespace = "airflow"
#  timeout = 900
#
#  values = [file("${path.module}/templates/airflow/values.yaml")]
#  depends_on = [
#    kubernetes_namespace.airflow
#  ]
#}