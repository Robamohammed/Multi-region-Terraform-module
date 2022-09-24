
resource "aws_s3_bucket" "bucket" {
 bucket = "te${var.region_app}-${var.bucket_name}"
}