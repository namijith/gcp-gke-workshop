---
title: "Create a Docker Repo"
chapter: false
weight: 433
pre: "<b>4.3.3 </b>"
---

Next, we will set up a new Docker repository in Artifacory. We will use this repository to host our workshop application image.

1. In your JFrog Platform instance go to **Administration** ► **Repositories** ► **Repositories**.

![Repositories Repositories](/images/repositories-repositories.png)

2. Click on **New Local Repository** on the right.

![New Local Repository](/images/new-local-repository.png)

3. For package type, select **Docker**.

![Select Docker Repository](/images/select-docker-repository.png)

4. Specify _clouddays_ for the **Repository Key**.

![New Docker Repository](/images/new-docker-repository.png)

5. Click **Save & Finish**.

6. **Close** the _New Docker Repository_ dialog.


{{% notice info %}}
Three different types of repositories can be created: local, remote and virtual.

- **Local repositories** are physical, locally-managed repositories into which you can deploy artifacts. These are repositories that are local to the JFrog Artifactory instance.
- A **remote repository** serves as a caching proxy for a repository managed at a remote URL (which may itself be another Artifactory remote repository). 
- A **virtual repository** (or "repository group") aggregates several repositories with the same package type under a common URL. A virtual repository can aggregate local and remote repositories.
{{% /notice %}}
