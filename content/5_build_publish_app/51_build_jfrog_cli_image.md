---
title: "Build the JFrog CLI Docker Image"
chapter: false
weight: 51
pre: "<b>5.1 </b>"
---

First, we will use an npm docker image and add JFrog CLI to it. This will enable us to use JFrog CLI to build npm packages.

1. Return to your Cloud Shell terminal and change directory to _clouddays/jfrog-cli-docker_.

2. We will use Google Cloud Build to create JFrog CLI docker image. This build command uses cloudbuild.yaml. If you look inside this file, you will find it performs following steps
- `docker build` to create the docker image
- `docker tag` to tag newly created image
- `docker login` to log into your Free Tier
- `docker push` to push the newly created image to Artifactory's Docker repository.


```
gcloud builds submit --substitutions=_JFROG_SERVER_NAME="${JFROG_SERVER_NAME}",_JFROG_USER="${JFROG_USER}",_JFROG_API_KEY="${JFROG_API_KEY}" --config=cloudbuild.yaml .
```

This command should result in a successful build of docker image and it should be pushed to Artifactory.
![JFrog CLI build success](/images/gcp/build_success1.png)

![JFrog CLI build success](/images/gcp/build_success2.png)
