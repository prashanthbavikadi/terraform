resource "aws_instance" "db" {                                               #syntax of instance name don't chamge it
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = ["sg-00da4b10de1d959a7"]                     #security group are list that why we kept []*
  instance_type = "t3.medium"

    tags = {                                                                 # {} flower brucket started that why tags are we called as maps
        Name = "helloWorld"
        module = "database"                                                  # name is db instance name it is map ...   #what ever we keep in tags will create instance name
    } 
}


#resource <resource-typr> <resource-name>
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    #terraform block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "Sivakumar"
    }
}