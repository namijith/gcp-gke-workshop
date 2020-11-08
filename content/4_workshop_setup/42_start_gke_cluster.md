---
title: "Start GKE Cluster"
chapter: false
weight: 42
pre: "<b>4.2 </b>"
---

In this section, we will start a GKE Cluster. There are two ways to start a GKE cluster.

1 . We can go to our console and start a cluster from there.

![Start GKE](/images/gcp/gke1.png)


2 . However, since we already have a cloud shell working, we can simply use `gcloud` CLI to start the cluster.

``
gcloud beta container --project "clgcporg1-002" clusters create "jfrog-gke-devop-days-cluster" --zone "us-west1-a" --release-channel "rapid" --machine-type "e2-standard-2" --image-type "COS" --disk-type "pd-ssd" --disk-size "10" --num-nodes "1" --enable-stackdriver-kubernetes --enable-autoupgrade --enable-autorepair
``
Note that we are using GKE functionality to 
- Select VM type
- Use SSD disk for performance
- Configure Number of nodes (we only need 1 for our exercize)
- Eneble logging to stackdriver
- Enable auto upgrades of GKE versions
- Enable auto repair in case some part of our infrastructure fails

![Start GKE](/images/gcp/gke2.png)
