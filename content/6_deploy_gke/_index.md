---
title: "Deploy Application on GKE"
chapter: false
weight: 60
pre: "<b>6.0 </b>"
---

We are now ready to deploy your image with GKE. If not yet created, GKE can create a new VPC as well as the other components that are required to serve your application. GKE will then authenticate, pull the image from Artifactory and deploy the container to the GKE.

1 . Remember the kubernetes cluster we created in the beginning of the lab? It must be ready by now. Let's first verify that our cluster is healthy and kubectl is working using following command on cloud shell

`kubectl get pods -A`

2 . Now let's deploy our new application

`kubectl create deployment devopsdays-deployment --image=${_ARTIFACTORY_SERVER_NAME}/clouddays/npm-app:${TAG}`

3 . You can watch the pods being started using following command

`kubectl get pods -w`

4 . Once the pods are in running state, lets create a service so we can access the application. This command will create a service and a load balancer to access the application.

`kubectl expose deployment devopsdays-deployment --type=LoadBalancer --port=1337`

5 . Again, we can watch the service and load balancer being created using following command.

`kubectl get svc -w`

 Once the `EXTERNAL-IP` field shows an IP address, our service is ready to be tested.

6. Now open a browser and go to following URL (replace `LOAD_BALANCER_IP` with your own ip address from previous step)

`http://<LOAD_BALANCER_IP>:1337`

![JFrog CLI build success](/images/gcp/application_on_browser.png)
