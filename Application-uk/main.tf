module "ec2-application-in-uk" {

  //Define all the variables and its value
  source        = "../Application-module"
  region_app    = "eu-west-2"
  bucket_name   = "tax-documents"
  img_id        = "ami-078a289ddf4b09ae0"
  instance_type = "t2.micro"

}
