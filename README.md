# Terraform + GitHub Actions for Deployment of resources in AWS (CI/CD Pipeline)

##  Project Overview
This project demonstrates how to automate AWS infrastructure deployment using Terraform (Infrastructure as Code) and GitHub Actions (CI/CD automation platform) to create a complete CI/CD pipeline.

It provisions an S3 bucket and  t3.micro EC2 instance in eu-north-1 with a public ip. The workflow runs automatically when codes are pushed to the repository or triggered manually, making it a practical example of Infrastructure as Code (IaC) with CI/CD automation.


##  What is CI/CD?
**CI/CD** stands for:

1. **Continuous Integration (CI)**  
   The practice of frequently merging small code changes into a shared repository and automatically testing them to ensure nothing breaks.

2. **Continuous Delivery / Continuous Deployment (CD)**  
   The practice of automatically preparing or deploying code changes to production environments so that new features and fixes can go live quickly.

**Why CI/CD matters**:

- **Speed** → Deploy updates faster  
- **Consistency** → Reduce human error with automation  
- **Quality** → Automatically test every change  
- **Collaboration** → Multiple developers can work without conflicts


##  How CI/CD Works in This Project


1. **Push code to GitHub** → GitHub Actions workflow starts.

2. **Continuous Integration (CI)**:
   - Runs `terraform init` (initializes Terraform)
   - Runs `terraform validate` (checks syntax)
   - Runs `terraform plan` (previews changes)

3. **Continuous Deployment (CD)**:
   - Runs `terraform apply` to provision AWS resources.


## 🔑 GitHub Secrets Required
Before running the workflow, add these repository secrets under:

 **GitHub → Settings → Secrets and variables → Actions**:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`


## 📝 How to Trigger the Workflow
- Push any change to the `main` branch or go to GitHub Actions tab, select the workflow and click "Run workflow". 


### Conclusion

In this project, I applied Infrastructure as Code (IaC) principles using Terraform to automate the creation of AWS resources. I implemented CI/CD automation using GitHub Actions, which handled the execution of Terraform commands whenever changes were pushed to the repository. I also secured my AWS credentials by storing the AWS Access Key and Secret Key in GitHub Actions repository settings as secrets. This project enhanced my skills in automating resource provisioning and demonstrated my ability to integrate Terraform with GitHub Actions for efficient cloud deployments.


👩🏽‍💻 Author
Temitope Ilori

Linkedin: https://www.linkedin.com/in/iloritemi

Github: https://github.com/Cybertemi

 

