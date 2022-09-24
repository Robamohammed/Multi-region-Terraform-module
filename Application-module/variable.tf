variable "img_id" {
  type        = string
  description = "Image id of the ec2 instance"
}

variable "instance_type" {
  type        = string
  description = "Variable for the type of instance "
}

variable "region_app" {
  type        = string
  description = "Variable for stores the region of the App"
}

variable "bucket_name" {
  type        = string
  description = "Variable for stores the name of the bucket"
}

