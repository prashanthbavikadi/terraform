resource "aws_instance" "expense" {  
    count = length(var.instance_names)                                             #syntax of instance name don't chamge it
    ami = var.image_id
    vpc_security_group_ids = ["sg-00da4b10de1d959a7"]                     #security group are list that why we kept []*
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    tags = merge(
        var.common_tags,
        {
          Name = var.instance_names[count.index]
          Module =  var.instance_names[count.index]
        }
    )
}
