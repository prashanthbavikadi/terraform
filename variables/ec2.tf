resource "aws_instance" "DB" {                                               #syntax of instance name don't chamge it
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]                     #security group are list that why we kept []*
    instance_type = var.instance_type
    # here left things are arguments  right are values

    tags = var.tags
}


#resource <resource-typr> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

   ingress {
       from_port        = var.ssh_port
       to_port          = var.ssh_port
       protocol         = var.protocol
       cidr_blocks      = var.cidr_blocks
    }  
   egress {
       from_port        = 0 #from 0 to 0 means , all ports open
       to_port          = 0
       protocol         = "-1" #-1 all protocols
       cidr_blocks      = var.cidr_blocks
    }    

    tags = {
      Name = "allow_ssh"
      CreatedBy = "Prashanth"
    } 
}