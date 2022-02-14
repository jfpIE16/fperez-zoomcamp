#!/bin/sh

terradir="/home/fernando/Documentos/online-courses/fperez-zoomcamp/week_1/1_terraform_gcp/terraform"
GCP_PROJECT_ID="daring-codex-339319"
BQ_DATASET="trips_data_all"

cd ${terradir}
echo $GCP_PROJECT_ID
sh delete-bq-tables.sh $GCP_PROJECT_ID $BQ_DATASET
terraform destroy -var=$GCP_PROJECT_ID