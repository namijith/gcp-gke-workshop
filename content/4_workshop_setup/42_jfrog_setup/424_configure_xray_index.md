---
title: "Configure a Xray Index"
chapter: false
weight: 424
pre: "<b>4.2.4 </b>"
---

Next, we will configure Xray to index our new Docker repository. This allows Xray to automatically analyze all the artifacts in this repository.

1. Let's configure Xray to index the new Docker repository automatically. Go to **Administration** ► **Xray Security & Compliance**.

![Config Xray](/images/config-xray.png)

2. Click on **Indexed Resources**.

3. Click on **Add a Repository** on the right.

![Xray Add Repo](/images/xray-add-repo.png)

4. Move the _clouddays_ repository into the **Included Repositories**.

![Config Indexed Repo](/images/config-indexed-repo.png)

5. Click **Save**. You have now configured Xray to index the _clouddays_ repository.


{{% notice info %}}
JFrog Xray scans your artifacts, builds and release bundles for OSS components, and detects security vulnerabilities and licenses in your software components. 
Policies and Watches allow you to enforce your organization governance standards. Setup up your Policies and Watches to reflect standard governance behaviour specifications for your organization across your software components.
{{% /notice %}}
