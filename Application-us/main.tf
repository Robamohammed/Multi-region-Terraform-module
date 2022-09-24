module "ec2-application-in-us" {

  //Define all the variables and its value
  source        = "../Application-module"
  region_app    = "us-east-1"
  bucket_name   = "tax-documents"
  img_id        = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

}
