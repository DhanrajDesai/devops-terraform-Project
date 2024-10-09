#dynamodb table
resource "aws_dynamodb_table" "terra_dyanamo" {
  name = "${var.my-env}-tws-dynamo"
  billing_mode = "PAY_PER_REQUEST"
  hash_key="id"
  attribute {
    name = "id"
    type = "S"
  }
}