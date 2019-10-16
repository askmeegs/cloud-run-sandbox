#!/usr/bin/env bash
for i in manifests/*; do
  service_name=`basename $i .yaml`
  echo $service_name
  gcloud alpha run services replace $i  --platform gke
done
