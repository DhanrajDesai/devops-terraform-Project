/* SG,VPC,keypair*/
#key-pair
resource "aws_key_pair" "key_terra" {
    key_name="tws-devops-terraKey"
    public_key=file("./terrkey.pub")    
}
#VPC
resource "aws_default_vpc" "defaultVPC"{

} 

# security Group
resource "aws_security_group" "twssecurity" {
    name = "tws-devops-sg"
    description = "to open ec2 ports"
    vpc_id = aws_default_vpc.defaultVPC.id #interpolation
    ingress {  
        description = "this is for incomming rule ssh"
        from_port = 22
        to_port = 22
        protocol ="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress { 
         description = "this is for outgoing rule internet"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks= ["0.0.0.0/0"]
    }
}

resource "aws_instance" "myinstance" {
    ami =var.ami_id
    instance_type="t2.micro"
    key_name = aws_key_pair.key_terra.id
    security_groups= [ aws_security_group.twssecurity.name]
    tags={
        Name="terra_automate"
    } 
}