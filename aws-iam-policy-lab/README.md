# AWS IAM Policy Lab

This lab demonstrates creating IAM users and policies using AWS CLI.
# AWS IAM Policy Lab

## 🧩 Lab Purpose
Practice creating and applying custom IAM policies using the AWS Management Console and CLI. Goal: Understand permission boundaries, least privilege, and how to attach policies to users and roles.

---

## 🛠️ What I Did
- Created a custom IAM policy to allow read-only access to S3.
- Attached the policy to a test IAM user.
- Verified access using AWS CLI.

---

## 📸 Screenshots
_Add screenshots below to show progress/results:_

---

## ❌ Issues I Faced
- **Error:** "Access Denied" when testing IAM user.  
  **Fix:** Attached policy to both user and role and verified permission boundaries.

---

## 🗓️ Daily Log

**May 29, 2025**:  
Created custom IAM policy with JSON and applied it using AWS Console.  
  
**May 30, 2025**:  
Tested policy using AWS CLI:  
```bash
aws iam simulate-principal-policy --policy-source-arn arn:aws:iam::123456789:user/test-user --action-names s3:ListBucket

