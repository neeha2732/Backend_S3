resource "aws_instance" "demo-instance" {
  ami           = var.ami
  instance_type = var.type

  tags = {
    name = var.instance_name
  }
}

resource "aws_s3_bucket" "s3-bucket" {
  bucket = var.bucket_name
}