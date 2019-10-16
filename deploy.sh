#!/usr/bin/env bash
for i in manifests/*; do
  service_name=`basename $i .yaml`
  echo $service_name
  gcloud alpha run services replace $i  --platform gke --cluster gcp --cluster-location us-central1-b
done
