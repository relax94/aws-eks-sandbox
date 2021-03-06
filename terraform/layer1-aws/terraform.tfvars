##########
# Common
##########
#name        = "temp"
#domain_name = "temp.org"
#environment = "primary"

##########
# Network
##########
region   = "us-east-2"
az_count = 2
allowed_ips = [
  "0.0.0.0/0"
]
single_nat_gateway = true

##########
# EKS
##########
eks_cluster_encryption_config_enable = true

node_group_ondemand = {
  instance_types       = ["m5a.large"]
  capacity_type        = "ON_DEMAND"
  max_capacity         = 3
  min_capacity         = 1
  desired_capacity     = 1
  force_update_version = false
}

eks_write_kubeconfig = false
