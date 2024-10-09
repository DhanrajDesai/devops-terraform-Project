#s3 bucket  
resource "aws_s3_bucket" "s3_bucket"{
    bucket = "${var.my-env}-tws-bucket-devops"
    tags = {
        Name="${var.my-env}tws_devops_bucket"
        envoirment= var.my-env
    }
}
