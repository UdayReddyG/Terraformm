resource "aws_route53_record" "expense" {
    count=length(var.domain_names)
  zone_id = var.zone_id
  name    = var.domain_names[count.index]
  type    = "A"
  ttl     = 60
  records = [aws_instance.expense[count.index].private_ip]
}