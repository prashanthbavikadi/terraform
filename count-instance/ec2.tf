resource "aws_instance" "db" {  
    count = length(var.instance_name)                                             #syntax of instance name don't chamge it
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-00da4b10de1d959a7"]                     #security group are list that why we kept []*
    instance_type = "t3.micro"
    tags = {
        Name = var.instance_name[count.index]
    }
}
