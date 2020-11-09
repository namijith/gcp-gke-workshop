#!/bin/bash
echo "Enter PROJECT_ID (This is available on same page where you were given Google login credentials)"
read projectid
export PROJECT_ID=$projectid

gcloud config set project $PROJECT_ID

echo "Enter JFrog Free tier Server Name (e.g. johndoe.jfrog.io)"
read rtServerName
export _ARTIFACTORY_SERVER_NAME=$rtServerName

echo "Enter JFrog Free tier username"
read rtUserName
export _ARTIFACTORY_USER=$rtUserName

echo "Enter JFrog Free tier password"
read rtPassword
export _ARTIFACTORY_PASSWORD=$rtPassword

echo "Enter JFrog Free tier API Key"
read apiKey
export API_KEY=$apiKey

