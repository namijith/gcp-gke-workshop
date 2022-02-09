---
title: "Configure a Xray Index"
chapter: false
weight: 425
pre: "<b>4.2.5 </b>"
---

We need to complete module **5.1** first in order to complete this next section where we will configure Xray to index our new Docker repository. This allows Xray to automatically analyze all the artifacts in this repository.

1. First we will have to enable Xray, for that go to package view **Application** ► **Artifactory** ► **Pacakges**. Click on any package and go to **Xray Data** and click on **enable xray**.

2. Let's configure Xray to index the new Docker repository automatically. Go to **Administration** ► **Xray** ► **Settings**.

![Config Xray](/images/xray-config.png)

3. Click on **Indexed Resources**.

4. Click on **Add a Repository** on the right.

![Xray Add Repo](/images/xray-add-repo.png)

5. Move the _clouddays_ repository into the **Included Repositories**.

![Config Indexed Repo](/images/config-indexed-repo.png)

6. Click **Save**. You have now configured Xray to index the _clouddays_ repository.


{{% notice info %}}
JFrog Xray scans your artifacts, builds and release bundles for OSS components, and detects security vulnerabilities and licenses in your software components. 
Policies and Watches allow you to enforce your organization governance standards. Setup up your Policies and Watches to reflect standard governance behaviour specifications for your organization across your software components.
{{% /notice %}}
