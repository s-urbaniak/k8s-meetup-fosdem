resource "aws_route53_record" "tectonic_api_external" {
  zone_id = "${local.public_zone_id}"
  name    = "${var.custom_dns_name}-api.${var.base_domain}"
  type    = "A"
}

resource "aws_route53_record" "tectonic_api_internal" {
  zone_id = "${local.private_zone_id}"
  name    = "${var.custom_dns_name}-api.${var.base_domain}"
  type    = "A"
}
