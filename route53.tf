# resource "aws_route53_zone" "dev_aws" {
#   name = "devaws.ga"
#   tags = {
#     env = "dev"
#   }
# }

# resource "aws_route53_record" "www" {
#   zone_id = aws_route53_zone.dev_aws.zone_id
#   name = "www.learnaws.ga"
#   type = "A"
#   ttl = "300"
#   records = [aws_eip.eip.public_ip]
# }

# output "name_server" {
#   value = aws_route53_zone.dev_aws.name_servers
# }


# # Get hosted zone details
# # Terraform aws data hosted zone
# data "aws_route53_zone" "hosted_zone" {
#   name = var.domain_name
#   vpc_id = "${module.vpc.vpc_id}"
#   private_zone = true
# }

# # Create a record set in route53
# # Terraform aws route53 record
# resource "aws_route53_record" "site_domain" {
#   zone_id = data.aws_route53_zone.hosted_zone.zone_id
#   name    = var.record_name
#   type    = "A"
 
#   alias {
#     # name    = aws_lb.this.dns_name
#     # zone_id = aws_lb.this.zone_id
#     evaluate_target_health = true
#     zone_id = "${data.aws_route53_zone.hosted_zone.zone_id}"
#     name = "www.${data.aws_route53_zone.hosted_zone.name}"
#   }
# }


# # DNS account
# provider "aws" {
#     alias = "dns_zones"
# }

# data "aws_route53_zone" "devaws" {
#   provider = aws.dns_zones
#   name = "learnaws.ga"
#   vpc_id = "${module.vpc.vpc_id}"
#   private_zone = true
# }

# resource "aws_route53_record" "www" {
#   zone_id = "${data.aws_route53_zone.devaws.zone_id}"
#   name = "www.${data.aws_route53_zone.devaws.name}"
#   type = "A"
# }