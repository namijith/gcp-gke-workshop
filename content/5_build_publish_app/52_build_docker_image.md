---
title: "Build the NPM Application Docker Image"
chapter: false
weight: 52
pre: "<b>5.2 </b>"
---

Now, we can use freshly created JFrog CLI image to build npm project, package it in a Docker image and push it to artifactory's Docker repository.

1. Return to your Google Cloud Shell terminal and `cd` to folder `2-create-npm-build`

2. Let's use gcloud build again to build npm project and create docker image. This build command uses cloudbuild.yaml. If you look inside this file, you will find it performs following steps
- `docker login` to log into your Free Tier
- `jfrog rt c` to configure JFrog CLI so it can access your free tier
- `jfrog rt npmi` to perform npm build
- `docker build` to build docker image of npm code.
- `docker push` to push the newly created image to Artifactory's Docker repository.

```
gcloud builds submit --gcs-log-dir=gs://${PROJECT_ID}_cloudbuild/clouddays --substitutions=_ARTIFACTORY_SERVER_NAME="${_ARTIFACTORY_SERVER_NAME}",_ARTIFACTORY_USER="${_ARTIFACTORY_USER}",_ARTIFACTORY_PASSWORD="${_ARTIFACTORY_PASSWORD}" --config=cloudbuild.yaml .
```

This command should result in a successful build of docker image and it should be pushed to Artifactory. 
![JFrog CLI build success](/images/gcp/build2_success1.png)

![JFrog CLI build success](/images/gcp/build2_success2.png)

3. Note the build id is used for docker image tagging. Inside your cloud shell, declare a variable as follows. This will be used in next section.

`export TAG=<enter your tag id`


