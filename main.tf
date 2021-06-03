provider "aws" {
    profile = "default"
    region = "us-west-2"
    
}
 
resource "aws_instance" "git-terra-jen" {
    ami     = "ami-0cf6f5c8a62fa5da6"
    tenancy = "default"
    instance_type = "t2.micro"
}


resource "aws_vpc" "venkat_vpc"{
    cidr_block = "190.160.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "venkat_vpc"
        

    }
}
