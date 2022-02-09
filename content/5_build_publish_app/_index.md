---
title: "Build, Publish and Deploy the Npm App"
chapter: false
weight: 5
pre: "<b>5 </b>"
---

The JFrog CLI is a powerful tool that you can use in your CI/CD process and toolchain. It can be used to build code and publish artifacts while collecting valuable build information along the way. It greatly simplifies the publishing of the build artifacts and the build info to JFrog Artifactory. It is commonly used in automation scripts and with CI/CD software tools. In the next steps, we will use the JFrog CLI with Google Cloud Build to demonstrate how to build and publish with NPM and Docker.

![Hands On Diagram](/images/google-jfrog-demo.png)


{{% notice info %}}
In this workshop, we use NPM and Docker, but the JFrog Platform is a universal solution supporting all major package formats including Alpine, Maven, Gradle, Docker, Conda, Conan, Debian, Go, Helm, Vagrant, YUM, P2, Ivy, NuGet, PHP, NPM, RubyGems, PyPI, Bower, CocoaPods, GitLFS, Opkg, SBT and more. 
{{% /notice %}}

