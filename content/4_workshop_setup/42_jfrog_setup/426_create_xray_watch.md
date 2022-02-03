---
title: "Create a Xray Watch"
chapter: false
weight: 425
pre: "<b>4.2.5 </b>"
---

Next, we will create an Xray security watch to scan our new Docker repository.

1. Go to **Administration** ► **Xray** ► **Watches & Policies** ► **Watches**.

![Xray Watches](/images/xray-watch.png)

2. Click on **Set up a Watch**.

3. Give the watch a name like _clouddays-docker-repo-watch_ and a description.

![Xray Create Watch](/images/xray-create-watch.png)

4. Click on **Add Repositories**.

5. Move the _clouddays_ repository into the **Included Repositories**.

![Xray Watch Repostiories](/images/xray-watch-repositories.png)

6. Click **Save**.

7. Scroll down to the **Assigned Policies** and click on **Manage Policies**.

![Xray Manage Policies](/images/xray-manage-policies.png)

8. Drag the new policy that we created earlier, _default-securtity into the **Include Policies**.

![Xray Watch Add Policy](/images/xray-watch-add-policy.png)

9. Click **Save**.

10. Click **Create** to create the new watch. We have now configured Xray to scan our new Docker repository for security violations.

![Xray Watch Complete](/images/xray-watch-complete.png)

{{% notice info %}}
Xray Watches are the focal point for viewing and managing your security and license violations in the JFrog Platform. Watches provide you with the flexibility you need to meet your specific security and violation requirements. You select the resources you would like to scan for security vulnerabilities and compliance and determine the actions to be taken once a security vulnerability is detected.
{{% /notice %}}
