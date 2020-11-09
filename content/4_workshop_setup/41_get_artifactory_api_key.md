---
title: "Get Artifactory API Key"
chapter: false
weight: 41
pre: "<b>4.1 </b>"
---

Now let's get an API key for our Free Tier JFrog Platform instance. This will be used by Google's cloud build and JFrog CLI to access artifactory instance.

1. Go to your JFrog Platform instance at _https://[server name].jfrog.io_. Refer to your _JFrog Free Subscription Activation_ email if needed. Substitute your _server name_.
![Activation Email](/images/activation-email.png)

2. Login to your JFrog Platform instance with your credentials.
![Login](/images/login.png)

3. Once logged into your JFrog Platform instance, you will be presented with the landing page.

4 . Click on your name and then *Edit Profile* as shown below

![Edit Profile](/images/gcp/GetJFrogApiKey1.png)


5 . In `Current Password` box, enter your Free Tier password and press `Unlock`

![Edit Profile](/images/gcp/GetJFrogApiKey2.png)

6 . Under `Authentication Settings`, click on the copy button to copy the API key. Keep this key handy as we will need it in next step.

![Edit Profile](/images/gcp/GetJFrogApiKey3.png)
