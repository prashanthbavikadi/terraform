resource "aws_instance" "expense" {  
    for_each = var.instance_names   #each.key & each.value                                     #syntax of instance name don't chamge it
    ami =data.aws_ami.ami_info.id 
    vpc_security_group_ids = ["sg-00da4b10de1d959a7"]                     #security group are list that why we kept []*
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
          Name = each.key
          Module = each.key
        }
    )

}
