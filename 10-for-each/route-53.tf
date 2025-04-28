resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  name    = each.key == "frontend" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [each.value.public_ip] :  [each.value.private_ip]

  allow_overwrite = true
}



# var.instance_names[count.index--- replace with each.key 

# aws_instance.expense[count.index]---> replace with each.value