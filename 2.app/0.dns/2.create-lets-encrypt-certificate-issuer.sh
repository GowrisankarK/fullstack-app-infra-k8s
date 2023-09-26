#!/bin/bash

#Environment setup
export EMAIL_ADDRESS="your_email_address"
export NAMESPACE_NAME="your_namespace_name"
export LETS_ENCRYPT_STAGING_SERVER="https://acme-staging-v02.api.letsencrypt.org/directory"
#For Prod domains
export LETS_ENCRYPT_PRODUCTION_SERVER="https://acme-v02.api.letsencrypt.org/directory"
# AWS Route53 hosted zone id
export HOSTED_ZONE_ID=Z07132121SS6RRTQ1389T
export HOSTED_ZONE_DOMAIN=your_domain.io
export AWS_REGION=ap-south-1


#script to create aws iam roles and iam user access key id and secret fro DNS challenge
aws iam create-policy --policy-name letsencryptv8-wildcard-route-53 --policy-document  file://dns-challenge-aws-policy.json

LE_POLICY_ARN=$(aws iam list-policies --output json --query 'Policies[*].[PolicyName,Arn]' --output text | grep letsencryptv8-wildcard-route-53 | awk '{print $2}')
aws iam create-group --group-name letsencryptv8-wildcard-route-53-group
aws iam attach-group-policy --policy-arn ${LE_POLICY_ARN} --group-name letsencryptv8-wildcard-route-53-group
aws iam create-user --user-name letsencryptv8-wildcard-route-53-iam-user
aws iam add-user-to-group --user-name letsencryptv8-wildcard-route-53-iam-user --group-name letsencryptv8-wildcard-route-53-group
KEYS=$(aws iam create-access-key --user-name letsencryptv8-wildcard-route-53-iam-user)
echo $KEYS
AccessKey=$(echo $KEYS | jq -r .AccessKey)
export AWS_ACCESS_KEY_ID_FOR_ROUTE53=$(echo $AccessKey | jq -r .AccessKeyId)
export AWS_SECRET_ACCESS_KEY_FOR_ROUTE53=$(echo $AccessKey | jq -r .SecretAccessKey)
echo $AWS_ACCESS_KEY_ID_FOR_ROUTE53
echo $AWS_SECRET_ACCESS_KEY_FOR_ROUTE53
echo ${AWS_SECRET_ACCESS_KEY_FOR_ROUTE53} > password.txt
echo "secret creation started"
kubectl create secret generic aws-route53-credsv8 --from-file=password.txt -n cert-manager
echo "done with secret creation"
rm -f password.txt

#Namespace creation
envsubst < ./2.create-lets-encrypt-certificate-issuer.yaml | kubectl apply -f -