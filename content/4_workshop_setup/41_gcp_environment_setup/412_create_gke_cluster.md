---
title: "Create a GKE Cluster"
chapter: false
weight: 412
pre: "<b>4.1.2 </b>"
---

In this section, we will create a GKE Cluster in our Google Cloud Shell using the gcloud CLI.

{{% notice info %}}
The gcloud command-line interface is the primary CLI tool to create and manage Google Cloud resources. You can use this tool to perform many common platform tasks either from the command line or in scripts and other automations.
{{% /notice %}}

1. In your Google Cloud Shell, execute the following command to set an environment variable for the GCP environment project ID. This is one of the properties that was provided in the _environment details_. Or, you can see the project ID at the top left of your Google Cloud Console.

![GCP Project ID](/images/gcp-project-id.png)

``
export PROJECT_ID=<project ID>
``

2. Execute the following command to set the project ID.

```
gcloud config set project $PROJECT_ID
```

This will result in the following response.
![GCP Project ID Set](/images/gcp-project-id-set.png)

3. Next, we need to enable the GKE containers API. Execute the following command to do this.

```
gcloud services enable container.googleapis.com
```

This will result in the following response.
![GCP K8s Enable](/images/gcp-k8s-enable.png)

4. Execute the following gcloud CLI command to create a GKE cluster.

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
