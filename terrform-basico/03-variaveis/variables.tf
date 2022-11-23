variable "aws_region"{
    type = string
    description = ""
    default = "us-east-1"
}

variable "instance_ami"{
    type = string
    description = ""
    default = "ami-08c40ec9ead489470"
}

variable "instance_type" {
    type = string
    description = ""
    default = "t2.micro"
}

variable "instance_tags" {
    type = map(string)
    description = ""
    default = {
        Name = "Ubuntu"
        Project = "Curso AWS com Terraform"
    }
}
variable "aws_key_name" {
    type = string
    description = "name of keypair"
    default = "deploy-terraform-ec2"
}

variable "ssh_key_pair" {   
   type = string
   description = "key-pair of ec2"
   default = ""
}

