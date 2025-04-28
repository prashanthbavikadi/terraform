* for_each is used to iterate over maps or sets of strings when creating multiple resources or modules.

* for_each takes a map or a set of strings.
* each.key and each.value are used inside the resource block to reference the current item.

* BASIC SYNTAX : 

* resource "aws_instance" "example" {
*  for_each = var.instances

*  ami           = each.value.ami
*  instance_type = each.value.instance_type
* }
