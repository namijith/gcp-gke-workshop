---
title: "Build and Deploy the NPM Application Docker Image"
chapter: false
weight: 52
pre: "<b>5.2 </b>"
---

Now, we can use new JFrog CLI image to build the NPM application Docker image and push it to Artifactory's Docker repository using **Cloud Build Trigger**.

1. Return to your Google Cloud Shell terminal and change directory to _gcp-gke-workshop/workshop-app_.

2. Use Google Cloud Build, trigger and the JFrog CLI to build the NPM Docker image. The cloud build trigger uses cloudbuild.yaml. If you look inside this file, you will find it performs following steps:

- `jfrog config add` configure the JFrog CLI to access our JFrog Platform instance.
- `jfrog npm-install` use JFrog CLI to perform npm install to collect and validate NPM dependencies.
- `jfrog npm-publish` publish the npm all to npm repo in artifactory. 
- `jfrog build-publish` use publish the build info. 
- `docker build` build docker image of the NPM application.
- `docker push` push the newly created image to Artifactory's Docker repository.
- `create release` create release in Cloud Deploy which deploys the app from artifactory in GKE.

The JFrog CLI is used to collect build information during this process and publish it to Artifactory.

3. Before triggering the Cloud Build, remember the kubernetes cluster we created in the beginning of the lab? It must be ready by now. Let's establish connectivity to it with the following command

```
gcloud container clusters get-credentials gcpworkshop --project=$PROJECT_ID --zone=$ZONE
```
4. Verify that our cluster is healthy and by showing the Kubernetes nodes.

```
kubectl get nodes
```
 5. We need to set our Artifactory registry credentials in order to pull the NPM application image. We will do this my creating Kubernetes secrets. Execute the following command, substitute your _server name_ and JFrog Platform credentials (_username_ and _API key_).

``
kubectl create secret docker-registry regcred 
    --namespace clouddays
    --docker-server=$JFROG_SERVER_NAME 
    --docker-username=$JFROG_USER
    --docker-password=$JFROG_API_KEY
``

6. You have to create this secret in other 2 clusters also: **testgcpworkshop** & **staginggcpworkshop**.

7. Now go back to **Cloud Build Trigger** and click **Run** or do any git commit in your repo to trigger the build.

{{%expand "Let's review!" %}}
![Google Cloud Build Steps](/images/google-cloud-build-steps.png)
.{{% /expand%}}

{{%expand "Docker rate limit policies! Artifactory can help!" %}}
Docker Hub has set a new limit on data transfer beginning November 1st for free accounts: 100 pulls for anonymous users and 200 pulls for authenticated/free users for every 6 hours per IP address or a unique user.

Artifactory can protect you from this by proxying and caching images! This reduces the number of pulls from Docker Hub.

Docker also has a 6 month retention policy for free accounts. You can avoid that as well by using Artifactory as your private registry.

![Docker Remote](/images/docker-remote.png)
.{{% /expand%}}

If above cloud build  passes all steps then it should result in a successful build of docker image which should be pushed to Artifactory.

![JFrog CLI build success](/images/cloud-build-result.png)

![JFrog CLI build success](/images/npm-app-docker-repo.png)

Also the cloud build should create a release in Cloud Deploy pipeline and Deploy the app to test.

![Cloud Deploy](/images/cloud-deploy-result.png)

8. Execute the following to see your deployed pod.

``
kubectl get pods
``

You should see you npm-app pod.

![Kubectl Get Pods](/images/kubectl-get-pods.png)

9. Now let's get the external IP so that we can view your application. Execute the following.

``
kubectl get services
``

This will provide the EXTERNAL-IP.

![Kubectl External IP](/images/kubectl-external-ip.png)

10. In your browser, go to https://\<EXTERNAL-IP\> to view your deployed web application. 

11. Click through the self-signed certificate warning. You should see the following web application.

![NPM Application](/images/npm-app.png)


