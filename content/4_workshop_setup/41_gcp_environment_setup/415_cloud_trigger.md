---
title: "Create a Cloud Build Trigger"
chapter: false
weight: 415
pre: "<b>4.1.5 </b>"
---

In this section, we will create a Cloud Build trigger which will trigger automatically the cloud build file on any push to the github repo and deploy to test.

1. Go to [https://github.com/jfrogtraining/gcp-gke-workshop](https://github.com/jfrogtraining/gcp-gke-workshop) and fork this repo.

2. Navigate to **Cloud Buiild** and select **Triggers** from the left pane.

3. Click on **+ CREATE TRIGGER** and give it a name **workshop**.

4. Select **CONNECT NEW REPOSITORY** in source, which will take you to authenticate your github repo from where you want to trigger cloud build.

![Tiggers Connect Repo](/images/triggers-connect-repo.png)

5. Select **Github** as source, **authenticate** and then in **Select Repository** select your github account and forked workshop repo, click **Connect**.

![Tiggers Select Source](/images/triggers-select-source-github.png)

6. Next from **Configuration** select **Cloud Build configuration file** and in **Location** select the repository added above, add  _workshop-app/cloudbuild.yaml_ as **Cloud Build configuration file location**. 

![Tiggers Config file](/images/triggers-config-file.png)

7. Now add substituition variable used in cloud build file: _JFROG_SERVER_NAME , _JFROG_USER

![Tiggers sub var](/images/cloud-trigger-subs.png)

8. Click on **Create**.

![Tiggers final](/images/cloud-build-triggers.png)



