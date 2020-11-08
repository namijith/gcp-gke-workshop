---
title: "Declare environment variables"
chapter: false
weight: 45
pre: "<b>4.5 </b>"
---

Let's export following variables in google cloud shell. These will be used throughout this exercise.

``
gcloud config set project $PROJECT_ID #You received project id in GCP signup email
export PROJECT_ID=$(gcloud info --format='value(config.project)')
export _ARTIFACTORY_SERVER_NAME=`<Your JFrog Free Tier servername e.g. johndoe.jfrog.io>`
export _ARTIFACTORY_USER=`<Your JFrog Free Tier Username>`
export _ARTIFACTORY_PASSWORD=`<Your JFrog Free Tier Password>`
export API_KEY=<your API Key>
``

