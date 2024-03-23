provider "aws" {	
	region = "us-east-1"
	profile = "venu-aws-acss"
}

// test variable
variable "Name" {
	type = string
	default = "Venu"
}

//multiline string 

variable "address" {
	type = string
	default = <<-EOT
	Street : Hamilint
	Number:  1953
	city: Erie
	EOT
}

output "Names" {
	value = "${var.Name}"
}

output "address" {
	value = "${var.address}"
}

output "nameFull" {
	value = "${var.Name}"
}

variable "number" {
	default = 123456
}

output "phoneNUm" {
	sensitive = true
	value = "${var.number}"
}

variable "dynamic" {
	type = string
}

output "fromcmdPMPT" {
	value = "${var.dynamic}"
}