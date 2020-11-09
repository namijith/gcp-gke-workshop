---
title: "Declare environment variables"
chapter: false
weight: 45
pre: "<b>4.5 </b>"
---

We need to declare following variables
```
PROJECT_ID
_ARTIFACTORY_SERVER_NAME
_ARTIFACTORY_USER
_ARTIFACTORY_PASSWORD
API_KEY
```

To make it easy, we have a script for you. In your google cloud shell, first `cd` into newly cloned repo folder
```
cd clouddays
```

Then run following command
```
. ./scripts/set_env.sh
```

