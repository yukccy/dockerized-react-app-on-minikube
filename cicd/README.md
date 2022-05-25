# Introduction
I have prepared a simple CI/CD pipeline to deploy the react web application in three different environment by using GitLab CI. It includes two stages and 4 jobs. Each job will be triggered depends on different criteria to achieve one definition file for all environment.

For my common practise, I usually integrate the pipelines with a branching strategy.

# Scenario
1. Commit/merge to "main" branch
```
Build > Deploy to PROD env
```
The files in "main" branch will be pulled and proceed the build. After a successful build, it will be deployed to production s3 bucket.

2. Commit/merge to "release" branch
```
Build > Deploy to Staging env
```
The files in "release" branch will be pulled and proceed the build. After a successful build, it will be deployed to staging s3 bucket.

3. Commit/merge to "dev" branch
```
Build > Deploy to DEV env
```
The files in "dev" branch will be pulled and proceed the build. After a successful build, it will be deployed to development s3 bucket.

# Remarks
1. To simplify the preparation and save cost, I have chosen to deploy the react web app into a S3 bucket. The source of application is same as the dockerized one if you using same repository.
2. AWS authentication part is built-in function of GitLab, so they are not included in the pipeline definition files. Security of my own credentials is another reason.