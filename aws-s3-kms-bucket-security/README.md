# AWS S3 + KMS Bucket Security Lab

## 🎯 Goal
Secure an S3 bucket using AWS KMS encryption and IAM policies to restrict unauthorized access.

## 🛠 Tools Used
- AWS S3
- AWS Key Management Service (KMS)
- IAM Users & Policies
- AWS Console

## 📚 Steps Taken
1. Created a new S3 bucket named `ferguson-secure-bucket`.
2. Enabled server-side encryption using AWS KMS.
3. Created a custom KMS key with specific usage permissions.
4. Assigned bucket policy restricting access by user role.
5. Tested KMS key access with a non-privileged user.
6. Validated results via AWS Console and CLI.

## 💡 What I Learned
- How S3 and KMS integrate for encryption at rest.
- Best practices for securing data access with IAM + KMS.
- Why it's important to control KMS key usage separately from S3 access.
