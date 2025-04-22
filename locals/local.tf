locals {
   
   ami_id = "ami-09c813fb71547fc4f"
   sg_id = "sg-00da4b10de1d959a7"
   instance_type = var.instance_name == "db"  ? "t3.samll" : "t3.micro"
   tags = {
     
     name = "locals"
   }

}