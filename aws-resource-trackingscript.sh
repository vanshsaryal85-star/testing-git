#!/bin/bash
#########
#Aurthor - Vansh Saryal
#Date - 29/05/2026
#version -v1
#
#
#############
#purpose - this script will print the aws services usage in the organisation
#
######
#the resource this script  will track
#AWS S3
#AWS EC2
#AWS IAM USERS
#AWS LAMBDA
#
#
#
#list s3 buckets

echo "name of s3 buckets"
aws s3 ls


#list ec2 instances
echo "ec2 details"
 aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list aws lambda function
echo "aws lambda function"
aws lambda list-functions


#list iam users
echo "aws iam users"
aws iam list-users

