#!/bin/bash
######################################################
#Author : Dinesh kumar
#
#Date : 07/10/2001
#
#version :v1
#
#this script will report the aws resource usage
#############################################################

#tracking.............................
# aws s3
# aws ec2
# aws iam user
# aws lambda

set -x


#list s3 buckets
echo "print the s3 buckets files"
aws s3 ls

#list ec2 instances
echo "print the ec2 instance of lsist"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId[]'


#list lambda
echo "print the lambda list"
aws lambda list-functions

#list IAM user
echo "print the IAM users in the list"
aws iam list-users




