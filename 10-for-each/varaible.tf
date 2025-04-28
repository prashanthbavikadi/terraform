variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        project= "expense"
        terraform = "true"
    }
}

variable "domain_name" {
    default = "jpaws10s.online"
  
}

variable "zone_id" {
    default = "Z08539842HUL462BAJVDL"
  
}