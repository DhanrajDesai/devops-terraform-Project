module "dev-app" {
    source = "./my-instance.tf"
    my-env="dev"
    instance_type="t2.micro"
    ami="ami-0ea3c35c5c3284d82"
}

module "stage-app" {
    source = "./my-instance.tf"
    my-env="stage"
    instance_type="t2.micro"
    ami="ami-0ea3c35c5c3284d82"
}

module "dev-app" {
    source = "./my-instance.tf"
    my-env="prod"
    instance_type="t2.micro"
    ami="ami-0ea3c35c5c3284d82"
}
