---
title: "JFrog Platform for DevSecOps in the Cloud"
chapter: false
draft: false
weight: 21
pre: "<b>2.1 </b>"
---

The JFrog Platform is designed to meet the growing needs of companies to develop and distribute a secure software in the cloud. It provides DevOps teams with the tools needed to create, manage, secure and deploy software with ease. These tools cover everything from **continuous integration and delivery (CI/CD)**, **binary repository management**, artifact maturity, **security and vulnerability protection (DevSecOps)**, release management, analytics and distribution.

![JFrog Platform](/images/JFrog-Platform-Diagram_Mar20_Desktop.png.webp)

With the JFrog DevOps Platform — and in particular with **JFrog Artifactory, JFrog Xray and JFrog Distribution** , you can easily get all the granular data you need for an **SBOM**, including: 

- All of your software’s transitive dependencies
- Detailed CI environment information
- Security and compliance data, including the “blast radius” of vulnerabilities and non-compliant licenses across all builds in your applications
- Distribution data, such as how, when and where your software was deployed, which customers received it, and more

This treasure trove of information about your software is available both via the JFrog UI and via the JFrog REST API, so you can export it to third-party tools of your choice.

**JFrog Artifactory** is an Artifact Repository Manager that fully supports software packages created by any language or technology. Furthermore, it integrates with all major CI/CD and DevOps tools to provide an end-to-end, automated solution for tracking artifacts from development to production. Also it captures your **buildinfo** with every build which can be used to develop SBOM and keep track of software supply chain.

**JFrog Xray** provides universal artifact analysis, increasing visibility and performance of your software components by recursively scanning all layers of your organization’s binary packages to provide radical transparency and unparalleled insight into your software architecture. Boost your software security with features like **threat contextual analysis, git repo scanning, jira integration, SBOM support for the SPDX and CycloneDX standard formats** and many more.

**JFrog Pipelines** helps automate the non-human part of the whole software development process with continuous integration and empowers teams to implement the technical aspects of continuous delivery.It also produce **pipeinfo** that can be used for SBOM.

**JFrog Distribution** empowers DevOps to distribute and continuously update remote locations with release-ready binaries.

**JFrog Artifactory Edge** accelerates and provides control of release-ready binary distribution through a secure distributed network and edge nodes.

**JFrog Access with Federation** provides governance to the distribution of artifacts by managing releases, permissions and access levels.


The JFrog platform is enterprise ready with your choice of on-prem, cloud, multi-cloud or hybrid deployments that scale as you grow. These tools not only track your software for vulnerability or attacks, if there is a breach these tools also helps you answer these questions like is your software impacted by the breach? which compoponent is exactly affeted and the remediations.

Recommended reads:

[Automatically Assess and Remediate the SolarWinds Hack](https://jfrog.com/blog/automatically-assess-and-remediate-the-solarwinds-hack/)

[Your Log4shell Remediation Cookbook Using the JFrog Platform](https://jfrog.com/blog/your-log4shell-remediation-cookbook-using-the-jfrog-platform/)

[Signed Pipelines Build Trust in your Software Supply Chain](https://jfrog.com/blog/signed-pipelines-build-trust-in-your-software-supply-chain/)

[Xray new security fetaures](https://jfrog.com/blog/xray-new-year-new-security-features/)


![Platform UI](/images/platform-ui.png)

{{% children showhidden="false" %}}
