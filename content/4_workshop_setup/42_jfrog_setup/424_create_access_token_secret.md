---
title: "Create a sceret for access token in Secret Manager"
chapter: false
weight: 424
pre: "<b>4.2.4 </b>"
---

We will now create an admin access token and use that token to store as secret in Secret Manager in GCP, which will be used by Cloud Build.

1. In your JFrog Platform instance go to **Administration** ► **Identity and Access** ► **Access Tokens**.

2. Click on **Generate Token**, enter the **User name** and click on **Generate**. Copy and save the generated token somewhere.

![jpd generate token](/images/jpd-generate-token.png)

3. Now go to your GCP console and search for **Secret Manager**. IF it snot enabled then enable it. Click on **Create Secret** , enter the **name** as _jfrog-access-token_ , enter the **secret value** saved in above atep and click on **Generate**.

![create secret](/images/create-secret-manager.png)

4. Now going back on Secret manager main page, click on the **Actions** of the secret just create above and select **Copy Resource Id** and save it soemwhere as this will be used later in CloudBuild.yaml.

![secret copy resources](/images/create-secret-manager-copy-id.png)

5. We also need to give _Cloud Build_ access to this secret, for that navigate to **IAM** in GCP and add the **Secret Manager Secret Accessor** role in the Cloud Build Service Account.  

![secret manager permission](/images/create-secret-manager-permission.png)



