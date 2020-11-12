---
title: "Generate an API Key"
chapter: false
weight: 432
pre: "<b>4.3.2 </b>"
---

{{% notice tip %}}
Remember your _username_ and _API key_. We will use it again with the JFrog CLI and to set up Azure AKS to deploy your image.
{{% /notice %}}

1. Go to your JFrog Platform instance at _https://[server name].jfrog.io_. Refer to your _JFrog Free Subscription Activation_ email if needed. Substitute your _server name_.
![Activation Email](/images/activation-email.png)
2. Login to your JFrog Platform instance with your credentials.
![Login](/images/login.png)
3. Once logged into your JFrog Platform instance, you will be presented with the landing page.
![Landing](/images/landing.png)
4. Go to your profile and select **Edit Profile**.
![Edit Profile](/images/edit-profile.png)
5. Enter your password and click **Unlock** to edit the profile.
6. In the **Authentication Settings** section, click the gear icon to generate an API key.
![Api Key](/images/api-key.png)
7. Copy the **API Key**.
8. Click **Save**.
9. We must set these credentials as environment variables to be used in the build later. Do that now with the following commands.

``
export JFROG_USER=<username/email>
``

``
export JFROG_API_KEY=<api key>
``

``
export JFROG_SERVER_NAME=<[server_name].jfrog.io>
``

![JFrog ENV VARS](/images/jfrog-env-vars.png)



