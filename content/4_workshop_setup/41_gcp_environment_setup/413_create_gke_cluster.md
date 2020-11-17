---
title: "Create a GKE Cluster"
chapter: false
weight: 413
pre: "<b>4.1.3 </b>"
---

In this section, we will create a GKE Cluster in our Google Cloud Shell using the gcloud CLI.

{{% notice info %}}
The gcloud command-line interface is the primary CLI tool to create and manage Google Cloud resources. You can use this tool to perform many common platform tasks either from the command line or in scripts and other automations.
{{% /notice %}}

1. In your Google Cloud Shell, execute the following command to set an environment variable for the GCP environment project ID.

```
export PROJECT_ID=`gcloud config get-value project`
echo $PROJECT_ID
```

2. Execute the following gcloud CLI command to create a GKE cluster.

```
gcloud container clusters create "gcpworkshop" --zone "us-west1-a" --release-channel "rapid" --machine-type "e2-standard-2" --image-type "COS" --disk-type "pd-ssd" --disk-size "10" --num-nodes "1" --enable-stackdriver-kubernetes --enable-autoupgrade --enable-autorepair
```

With this command we have specified the following GKE cluster properties: 

- Specified the cluster name as _gcpworkshop_.
- Specified the zone as _us-west1-a_.
- Specified the Kubernetes release channel which controls Kubernetes cluster version updates. Rapid gets the latest Kubernete release as early as possible.
- Specified the Kubernetes node machine type as _e2-standard-2_ and set it to container optimized.
- Set disk storage type and size (SSD).
- Configured the number of Kubernetes worker nodes (we only need 1 for our workshop).
- Enabled logging to Stackdriver.
- Enabled auto-upgrade.
- Enabled auto-repair in case some part of our infrastructure fails.

It will take a few minutes to create the GKE cluster. While we wait, we can move on to set up the rest of the workshop.
