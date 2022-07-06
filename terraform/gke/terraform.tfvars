project_id = "vivid-rush-227416"
project_name            = "vivid-rush-227416"

# Global vars
project                 = "vivid-rush-227416"
region                  = "us-central1"
zone                    = "us-central1-a"

# Labeling and tags vars
labels  =  {
  ressource_type = "gke"
  function = "lab"
}
tags    = ["gke-lab"]
np_8_tags  = ["gke-ope-ext-1"]
np_16_tags = ["gke-ope-ext-1"]

# GKE vars
cluster_name              = "gke-irn-70740-ope-ext-cluster-1"
cluster_region            = "us-central1-a"
cluster_network           = "projects/host-project-euwest1-1/global/networks/ren-app-ope-gcp-euwest1-1"
cluster_subnetwork        = "projects/host-project-euwest1-1/regions/europe-west1/subnetworks/ren-app-ope-gcp-euwest1-1-gke-irn-70740-inet-ope-subnet-nodes-1"
vpc_name                  = "ren-app-ope-gcp-euwest1-1"
subnetwork_name           = "projects/host-project-euwest1-1/regions/europe-west1/subnetworks/ren-app-ope-gcp-euwest1-1-gke-irn-70740-inet-ope-subnet-nodes-1"
svcs_network              = "ren-app-ope-gcp-euwest1-1-gke-irn-70740-inet-ope-range-svc-1"
pods_network              = "ren-app-ope-gcp-euwest1-1-gke-irn-70740-inet-ope-range-pods-1"
master_ipv4_cidr_block    = "172.20.58.32/28"
google_project_id         = "irn-70740-ope-ext-2d"
enable_private_endpoint   = false
metering_billing_dataset  = "irn_70740_ope_ext_2d_billing_dataset"
authenticator_security_group          = [ "gke-security-groups@renault.com" ]
cluster_authenticator_security_group  = "gke-security-groups@renault.com"
release_channel                       = "REGULAR"
k8s_version_prefix                    = "1.23."
vpa                                   = true
dns_cache                             = true
disable_istio                         = true

master_authorized_networks_cidr_blocks = [
   {
     cidr_block   =   "35.241.176.15/32"
     display_name =   "squid-gcp"
   },
   {
     cidr_block   =   "35.195.145.72/32"
     display_name =   "cloud-nat-mgm-ope"
   },
   {
    cidr_block   =   "193.194.132.0/22"
    display_name =   "WLRN2"
   },
   {
    cidr_block   =   "138.21.148.0/24"
    display_name =   "proxy-renault-1"
   },
   {
    cidr_block   =   "138.21.12.0/24"
    display_name =   "proxy-renault-2"
   },
   {
    cidr_block   =   "199.247.38.0/23"
    display_name =   "Symantec-Frankfurt"
   },
   {
    cidr_block   =   "98.158.252.0/22"
    display_name =   "Symantec-Amsterdam"
   },
   {
    cidr_block   = "185.46.212.0/22"
    display_name = "Zscaler-1"
  },
  {
    cidr_block   = "147.161.128.0/17"
    display_name = "Zscaler-2"
  },
    {
    cidr_block   = "104.129.192.0/20"
    display_name = "Zscaler-3"
  },
  {
    cidr_block   = "136.226.0.0/16"
    display_name = "Zscaler-4"
  },
    {
    cidr_block   = "165.225.0.0/17"
    display_name = "Zscaler-5"
  },
  {
    cidr_block   = "137.83.128.0/18"
    display_name = "Zscaler-6"
  },
  {
    cidr_block   = "165.225.192.0/18"
    display_name = "Zscaler-7"
  }
 ]

# NodePool vars
node_pool_name_n1_standard_16 = "ope-ext-np"
min_node_count_n1_standard_16 = 1
max_node_count_n1_standard_16 = 5
machine_type_n1_standard_16   = "n1-standard-16"
max_pods_per_node_np_16        = 64

pod_extension_range_name = "ren-app-ope-gcp-euwest1-1-gke-irn-70740-inet-ope-range-pods-2"

node_pool_name_2 = "ope-ext-n2"
machine_type_2   = "n2-standard-32"
image_type_2     = "cos_containerd"
image_type_1     = "cos"
