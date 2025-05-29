#!/bin/bash

# Create IAM group
aws iam create-group --group-name SupportTeam

# Create IAM user
aws iam create-user --user-name junior-tech

# Add user to group
aws iam add-user-to-group --user-name junior-tech --group-name SupportTeam

# Create login profile (optional: if console access is needed)
aws iam create-login-profile --user-name junior-tech --password 'TempPass123!' --password-reset-required

# Output completion message
echo "User junior-tech created and added to SupportTeam group."
