#!/bin/sh

# Defining path and GCP project id variables
terradir="/home/fernando/Documentos/online-courses/fperez-zoomcamp/week_1/1_terraform_gcp/terraform"
GCP_PROJECT_ID="daring-codex-339319"

cd ${terradir}
terraform init
terraform plan -var=${GCP_PROJECT_ID}
terraform apply -var=${GCP_PROJECT_ID}