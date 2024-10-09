resource "aws_s3_bucket" "s3_bucket"{
    bucket = "tws-bucket-one"
    tags = {
        Name="tws_devops_bucket"
    }
}
