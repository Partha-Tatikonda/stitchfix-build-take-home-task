# Interview Questions



## What tenets are the most important to you when considering supply chain security in a CI/CD pipeline?
1. Secure connections among the tools that communicate in the pipeline flow
2. Role Based Access Control
3. Enable Multi-Factor Authentication as needed, audit user accounts periodically to remove ex-team members
4. Mask confidential data in logs, store secrets with restricted access.
5. Make sure source code repositories are set to private or available to access only when accessed thru Org VPN.
6. Continuously scan source code with Static Application Security Testing(SAST) and Dynamic Application Security Testing(DAST)
7. Keep DevOps tool chain up-to-date with security patches.
8. Allow to download development related dependencies over internet only from trusted sources.


## Describe the common patterns you have seen in adding a ruby application to a CI/CD pipeline. What operations are the most common? Why are these operations present?
I'm more confident and comfrtable to discuss CI/CD pipelines for Java, Angular, Python, DotNet but I've never worked on a Ruby application. 
Irrespective of the tech stack we have for any application, a basic CI/CD pipeline would include stages in this order.
Gather source code 
validate Code: jobs could be like run pre-commit scans
Build and test the code: Build, run UnitTests, do code quality scan, generate and publish Code Quality and Coverage reports(SonarQube)
Package: Package the source code(.jar, .war, .exe, .zip, docker image etc), upload the artifacts to Artifatory, CodeArtifact, AWS ECR, Docker IO etc
Security scans: Performs security scans on the deployable artifacts
Deployment: Deploy the artifacts in appropriate targets (On-Prem or on cloud as containers)
Test Automation: like Regression tests
promote: promote the artifacts to higher regions(QA/Stage/Prod) based on test results in each environment.

All the operations we do in different stages of a CI/CD pipeline are recommended as part of best DevOps practices and always result in delivering changes in a faster and reliable manner while incresing Team's release velocity.


## What are the most common ways that software is versioned? What are the benefits and challenges of each approach?
1. Semantic Versioning is a Sequence based approach with having individual identifiers like Major.Minor.Patch.Build number consisting of numberso or Aplhanumeric.
Example: 1.3.4.2356, iOS 14.7.1
Benefits: Easy to track, Major release numbers can help end users identify the product easily, easy to design compatibilty matrices when multiple products were involved and many more.
Challenges: Could lead to confusions among delivery teams in Agile SDLC, hard to differentite Major vs Minor vs Patch when multiple releases are happeing in parallel.

2. Calendar Versioning is an incremental and real time based versioning format of YYYY-MM-DD, YYYY-MM-DD-HRS-MINS etc
Example: 2021-09-16, 2021-09-16-09-33
Benefits: Easy to generate and keep track of.
Challenges: Version number can be too long often times, could result in confusions among users and delivery teams due different timezones, date formats etc.


## Give some examples of configuration management tools. Which tools do you prefer and why?
Even though I don't have much of real time experience on these tools(I've mostly worked on terraform with serverless architecture), I've always heard that majority of the Infrastructure Teams prefer to use Ansible, Chef and Puppet. We have more similar tools in industry but it is always better to go with tools that has popularity resulting in easy to find documentations, troubleshooting tips and experienced engineers.

Ansible: Uses SSH for secure connections, written in Python, YAML, easy to setup and maintain, better pricing, pull and push methods.


## What does the term "Infra as Code" mean? How does this term differ from "Configuration Management"?
Infra as Code means developing machine readable source code files to provision and maintain infrastucture on both physical equipment and Cloud Platforms.
I had good experience in using Terraform for IaC implementations.
Iac and CM can do similar things like creating Cloud resources or deploying applications but they are different in many areas.
We use Iac to provison the infrastructure entities like servers, storage, networks etc.
We use Configuration Management(CM) to apply a desired configurations initially on the servers and make sure the configuration stays in place.