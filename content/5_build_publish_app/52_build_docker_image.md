---
title: "Build the NPM Application Docker Image"
chapter: false
weight: 52
pre: "<b>5.2 </b>"
---

Now, we can use new JFrog CLI image to build the NPM application Docker image and push it to Artifactory's Docker repository.

1. Return to your Google Cloud Shell terminal and change directory to _clouddays/workshop-app_.

2. Use Google Cloud Build and the JFrog CLI to build the NPM Docker image. This build command uses cloudbuild.yaml. If you look inside this file, you will find it performs following steps:

- `jfrog rt c` configure the JFrog CLI to access our JFrog Platform instance.
- `jfrog rt npmi` use JFrog CLI to perform npm install to collect and validate NPM dependencies. 
- `docker build` build docker image of the NPM application.
- `docker push` push the newly created image to Artifactory's Docker repository.

The JFrog CLI is used to collect build information during this process and publish it to Artifactory.

```
gcloud builds submit --substitutions=_JFROG_SERVER_NAME="${JFROG_SERVER_NAME}",_JFROG_USER="${JFROG_USER}",_JFROG_API_KEY="${JFROG_API_KEY}" --config=cloudbuild.yaml .
```

{{%expand "Let's review!" %}}
![Google Cloud Build Steps](/images/google-cloud-build-steps.png)
.{{% /expand%}}

{{%expand "Docker rate limit policies! Artifactory can help!" %}}
Docker Hub has set a new limit on data transfer beginning November 1st for free accounts: 100 pulls for anonymous users and 200 pulls for authenticated/free users for every 6 hours per IP address or a unique user.

Artifactory can protect you from this by proxying and caching images! This reduces the number of pulls from Docker Hub.

Docker also has a 6 month retention policy for free accounts. You can avoid that as well by using Artifactory as your private registry.

![Docker Remote](/images/docker-remote.png)
.{{% /expand%}}

This command should result in a successful build of docker image and it should be pushed to Artifactory. 
![JFrog CLI build success](/images/gcp/build2_success1.png)

![JFrog CLI build success](/images/gcp/build2_success2.png)



