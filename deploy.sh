#!/usr/bin/env bash

kubectl apply -f redis.yaml
sleep 10

for i in services/*; do
  service_name=`basename $i .yaml`
  echo $service_name
  gcloud alpha run services replace $i  --platform gke --cluster gcp --cluster-location us-central1-b
done
