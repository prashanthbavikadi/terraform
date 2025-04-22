resource "aws_instance" "DB" {                                               #syntax of instance name don't chamge it
    ami = local.ami_id
    vpc_security_group_ids = [local.sg_id]                     #security group are list that why we kept []*
    instance_type = local.instance_type
    # here left things are arguments  right are values

    tags = local.tags
}

