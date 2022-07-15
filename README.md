![example workflow](https://github.com/RIDCHA-DATA/lab-gcp/actions/workflows/terraform.yml/badge.svg)

# Learn Terraform/GCP - Provision a GKE Cluster

This repo contains Terraform configuration files to provision an GKE cluster on GCP and other GCP services required to setup a full cloud native stack.

This sample repo also creates a VPC and subnet for the GKE cluster. This is not
required but highly recommended to keep your GKE cluster isolated.


## keyless gcp authentication from github actions with workload identity federation

To exchange a GitHub Actions OIDC token for a Google Cloud access token, you must create and configure a Workload Identity Provider. These instructions use the gcloud command-line tool.

[<img src="https://storage.googleapis.com/gweb-cloudblog-publish/images/2_GitHub_Actions.max-1100x1100.jpg">](http://google.com.au/)


Seamless authentication between Cloud Providers and GitHub without the need for storing any long-lived cloud secrets in GitHub


Alternatively, you can also use the [gh-oidc](https://github.com/terraform-google-modules/terraform-google-github-actions-runners/tree/master/modules/gh-oidc) Terraform module to automate your infrastructure provisioning. See examples for usage under `01-WORKLOAD-IDENTIY` folder.

the tf manifst under this folder will perform this action:
  1) Create a service account for Github actions pipelines.
  2) Bind all required permissions and roles for this service account.
  3) Create workload identity federation pool for github actions.
  4) Create workload identity federation provider in this pool.
  5) Setup github/gcp mapping for claiming oidc tokens.
  6) Grant access to service account created in setp 1 to use the provider from github actions workload identity pool. 