# Automated Static Website Deployment to AWS S3 using Terraform
![alt text](image.png)
### This project automates the deployment of a static website to an AWS S3 bucket using Terraform. The process involves creating the S3 bucket, configuring it for public access, enabling static website hosting, and uploading website files. A bucket policy is added to allow public access to the website, with the policy code taken from AWS documentation. Once deployed, the website can be accessed via the provided S3 website endpoints, making the process fully automated and repeatable.
## HTML file for the static website
![alt text](image-1.png)
## CSS file for the static website
![alt text](image-2.png)
## Website running locally 
![alt text](image-3.png)
## Creating S3 bucket on terraform. Using Random provider to generate random ID to the S3 bucket
![alt text](image-4.png)
## These and the provider configuration
![alt text](image-5.png)
## Bucket creation and uploaded files to HTML and CSS files to S3 Bucket
![alt text](image-6.png)
## Configuring Public access
![alt text](image-7.png)
## Adding Bucket policy to S3 bucket to provide permission to view the website
![alt text](image-8.png)
## Website configuration
![alt text](image-9.png)
## Adding website endpoints to get URL in terraform terminal
![alt text](image-10.png)
## S3 Bucket is created.
![alt text](image-11.png)
## S3 Bucket is provisioned in the AWS portal
![alt text](image-12.png)
![alt text](image-13.png)
## The Static Website is now up and running
![alt text](image-14.png)