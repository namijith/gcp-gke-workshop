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
- `jfrog rt docker-push` use JFrog CLI to push the newly created image to Artifactory's Docker repository.

The JFrog CLI is used to collection build information during this process.

```
gcloud builds submit --substitutions=_JFROG_SERVER_NAME="${JFROG_SERVER_NAME}",_JFROG_USER="${JFROG_USER}",_JFROG_API_KEY="${JFROG_API_KEY}" --config=cloudbuild.yaml .
```

This command should result in a successful build of docker image and it should be pushed to Artifactory. 
![JFrog CLI build success](/images/gcp/build2_success1.png)

![JFrog CLI build success](/images/gcp/build2_success2.png)

3. Note the build id is used for docker image tagging. Inside your cloud shell, declare a variable as follows. This will be used in next section.

`export TAG=<enter your tag id`


