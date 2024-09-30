resource "aws_route53_record" "expense" {
  count           = length(var.domain_names)
  zone_id         = var.zone_id
  name            = var.domain_names[count.index]
  type            = "A"
  ttl             = 60
  records         = var.instance_names == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  allow_overwrite = true
}