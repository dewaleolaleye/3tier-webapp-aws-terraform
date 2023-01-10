# 3-tier web application

.. This 3-tier architecture module will use Terraform to provision the following resources in AWS:

* VPC
* Public & Private Subnets
* Application Load Balancer
* s3 bucket
* ec2 instances (Php + Apache)
* rds instance (MySQL)
* Route table
* Internet Gateway
* Nat gateway
* Security groups
* Load balancer
* Auto scaling group

.. Login credentials to phpMyAdmin landing page:
* Username: infotech_user
* Password: [run "terraform output db_instance_password" on CLI for password]


@2023-01-08
