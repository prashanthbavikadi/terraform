resource "aws_instance" "DB" {                                               #syntax of instance name don't chamge it
    ami = var.image_id                   #security group are list that why we kept []*
    instance_type = var.instance_type == "db" ? "t3.small" : "t3.micro"
}