---
title: "Build and Push JFrog CLI Docker Image"
chapter: false
weight: 51
pre: "<b>5.1 </b>"
---

First, we will use an npm docker image and add JFrog CLI to it. This will enable us to use JFrog CLI to build npm packages.

1. Return to your Cloud Shell terminal and go to folder `1-create-jfrog-cli-docker`

2. Let's use gcloud build to create JFrog CLI docker image. This build command uses cloudbuild.yaml. If you look inside this file, you will find it performs following steps
- `docker build` to create the docker image
- `docker tag` to tag newly created image
- `docker login` to log into your Free Tier
- `docker push` to push the newly created image to Artifactory's Docker repository.


```
gcloud builds submit --gcs-log-dir=gs://${PROJECT_ID}_cloudbuild/clouddays --substitutions=_ARTIFACTORY_SERVER_NAME="${_ARTIFACTORY_SERVER_NAME}",_ARTIFACTORY_USER="${_ARTIFACTORY_USER}",_ARTIFACTORY_PASSWORD="${_ARTIFACTORY_PASSWORD}" --config=cloudbuild.yaml .
```

This command should result in a successful build of docker image and it should be pushed to Artifactory.
![JFrog CLI build success](/images/gcp/build_success1.png)

![JFrog CLI build success](/images/gcp/build_success2.png)
