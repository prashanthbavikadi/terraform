resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-00da4b10de1d959a7"]                     #security group are list that why we kept []*
    instance_type = "t3.micro"
   
    tags = {
        Name = "data-source-practice"
    }
}

