# AWS IAM Policy Lab

## 🔍 Objective
Simulate a real-world IT support scenario involving misconfigured AWS IAM policies that prevent a user from accessing S3 resources. Learn how to diagnose and fix it securely.

## 🛠️ Tools & Services Used
- AWS IAM (Identity and Access Management)
- Amazon S3 (Simple Storage Service)
- AWS CLI (Command Line Interface)
- CloudTrail (optional for auditing)
- IAM Policy Simulator

## 📘 Scenario
A new junior IT Support Engineer is unable to list objects in an S3 bucket after being assigned a role. You’ve been tasked with diagnosing and resolving the issue.

## 🧪 Steps Performed

### 1. ✅ Created IAM User and Group
```bash
aws iam create-group --group-name SupportTeam
aws iam create-user --user-name junior-tech
aws iam add-user-to-group --user-name junior-tech --group-name SupportTeam
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::ferguson-lab-bucket/*"
    }
  ]
}

aws s3 ls s3://ferguson-lab-bucket --profile junior-tech
{
  "Effect": "Allow",
  "Action": [
    "s3:ListBucket",
    "s3:GetObject",
    "s3:PutObject"
  ],
  "Resource": [
    "arn:aws:s3:::ferguson-lab-bucket",
    "arn:aws:s3:::ferguson-lab-bucket/*"
  ]
}
aws s3 ls s3://ferguson-lab-bucket --profile junior-tech
