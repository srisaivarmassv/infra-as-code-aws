# infra-as-code-aws

# **Terraform AWS VPC & EC2 Deployment**  

 **Terraform code** to deploy an **AWS infrastructure** with a **VPC, public & private subnets, an EC2 instance running Nginx, and necessary networking components**.

---

## **📌 Features**
✅ **VPC with CIDR `10.0.0.0/16`**  
✅ **3 Public Subnets** with Internet Access  
✅ **3 Private Subnets** for Internal Resources  
✅ **EC2 Instance in a Public Subnet with a Private IP**  
✅ **Security Groups for Controlled Access**  
✅ **Nginx Auto-Installation via User Data**  
✅ **Terraform Outputs for Quick Access to IPs**  


---

## **🛠 Prerequisites**
- **Terraform v1.x** installed ([Install Terraform](https://developer.hashicorp.com/terraform/downloads))
- **AWS CLI** configured ([Configure AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html))
- **AWS IAM credentials** with permissions to create VPC, EC2, and networking resources.

---

## **🌍 Environment Variables**
Set these environment variables before running Terraform to avoid hardcoding credentials:
```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"

```

Windows
``` bash
$env:AWS_ACCESS_KEY_ID="your-access-key"
$env:AWS_SECRET_ACCESS_KEY="your-secret-key"
$env:AWS_REGION="us-east-1"
```

## **🚀 Deployment Steps**

1️⃣ Clone the Repository
``` bash
git clone https://github.com/srisaivarmassv/infra-as-code-aws.git
cd terraform-aws-vpc-ec2
```
2️⃣ Initialize Terraform
``` bash
terraform init
```
This will:
 - Download Terraform providers.
 - Configure the backend (S3 + DynamoDB) for state storage.


3️⃣ Plan and Apply the Configuration
``` bash
terraform plan
terraform apply -auto-approve
```
Terraform will:

- Create a VPC with 3 public and 3 private subnets.
- Deploy an EC2 instance in a public subnet.
- Assign security groups for HTTP (80) and SSH (22) access.
- Install Nginx on the EC2 instance automatically.
- Using remote backend S3 to store the state file.
  
<sub>**Note:** The Terraform configuration currently utilizes a remote S3 backend for storing state files. Ensure that the S3 bucket is pre-created before running Terraform. If you prefer to use a local backend, remove the backend.tf file and proceed with `terraform init`.
Change the variable names as per your ruquirement.</sub>

4️⃣ Retrieve the EC2 Public IP
``` bash
terraform output instance_public_ip
```
Copy the public IP and open it in your browser:
``` bash
http://<instance_public_ip>
```
You should see the Nginx welcome page.



🗑️ Destroying the Infrastructure

To delete all resources:

``` bash
terraform destroy -auto-approve
```

This will remove:

VPC
Subnets
EC2 instance
S3 Bucket (if force_destroy = true)
Internet Gateway
Security Groups

>  Leverage the power of **Terraform** and **AWS** for efficient infrastructure automation. 🚀🌍 
