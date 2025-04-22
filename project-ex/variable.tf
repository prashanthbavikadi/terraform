variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string 
}

variable "common_tags" {
    default = {
        project = "expense"
        Environment = "Dev"
        terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#rout53 variables
variable "zone_id" {
    default = "Z08539842HUL462BAJVDL"
}

variable "domain_name" {
    default ="jpaws10s.online"
}
