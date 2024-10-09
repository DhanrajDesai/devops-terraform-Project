#EC2 INSTANCE
resource "aws_instance" "myinstance" {
    ami ="${var.my-env}-tws-instance"
    
    instance_type=var.instance-type
    //key_name = aws_key_pair.key_terra.id
    tags={
        Name="${var.ami_id}terra_automate_instance"
        envoirment=var.my-env
    } 
}