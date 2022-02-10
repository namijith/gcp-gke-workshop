---
title: "Deploy Application on GKE"
chapter: false
draft: true
weight: 7
pre: "<b>7 </b>"
---

We are now ready to deploy your image with GKE. If not yet created, GKE can create a new VPC as well as the other components that are required to serve your application. GKE will then authenticate, pull the image from Artifactory and deploy the container to the GKE.

1 . Remember the kubernetes cluster we created in the beginning of the lab? It must be ready by now. Let's establish connectivity to it with the following command.

```
gcloud container clusters get-credentials gcpworkshop --project=$PROJECT_ID --zone=$REGION
```

2. Verify that our cluster is healthy and by showing the Kubernetes nodes.

```
kubectl get nodes
```

1. First, let's create a namespace to provide isolation. Execute the following.

``
kubectl create namespace clouddays
``

2. Next, we need to set our Artifactory registry credentials in order to pull the NPM application image. We will do this my creating Kubernetes secrets to store these. Execute the following command. Substitute your _server name_ and JFrog Platform credentials (_username_ and _API key_).

``
kubectl create secret docker-registry regcred 
    --namespace clouddays
    --docker-server=$JFROG_SERVER_NAME 
    --docker-username=$JFROG_USER
    --docker-password=$JFROG_API_KEY
``

3. Set an environment variable for our image name.

```
export IMAGE_NAME=$JFROG_SERVER_NAME/clouddays/npm-app:latest
echo $IMAGE_NAME
```

3. We will use a Kubernetes deployment manifest to deploy the NPM application image. First, we must make a substitution in the file for the image that we want to deploy.

``
sed "s|imageName|$IMAGE_NAME|g" deployment.yaml > my-deployment.yaml
``

4. Now we can deploy with the following command.

``
kubectl apply -f my-deployment.yaml --namespace clouddays
``

5. Execute the following to see your deployed pod.

``
kubectl get pods --namespace clouddays -w
``

You should see you npm-app pod.

![Kubectl Get Pods](/images/kubectl-get-pods.png)

6. Now let's get the external IP so that we can view your application. Execute the following.

``
kubectl get services --namespace clouddays -w
``

This will provide the EXTERNAL-IP.

![Kubectl External IP](/images/kubectl-external-ip.png)

7. In your browser, go to https://\<EXTERNAL-IP\> to view your deployed web application. 
8. Click through the self-signed certificate warning. You should see the following web application.

![NPM Application](/images/npm-app.png)
