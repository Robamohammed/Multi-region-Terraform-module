resource "aws_dynamodb_table" "DB_Table" {

  name           = "tf-employees-table"
  billing_mode   = "PROVISIONED"
  hash_key       = "employee_id"
  read_capacity  = "30"
  write_capacity = "30"
  attribute {
    name = "employee_id"
    type = "N"
  }
  tags = {
    Name = "${var.region_app}-Employees_DB"
  }
}
