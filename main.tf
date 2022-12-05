provider "aws" {
  region = "region"
  access_key = "key" 
  secret_key = "secret_key"
}

resource "aws_instance" "stsdemowk3_ec2" {
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  key_name = "wk3demo"
  vpc_security_groups = [aws_security_group.dynamicsg-sts.id]
  subnet_id = "subnet-0bdaaaec1588e5a40"
  tags = {
   Name = "EC2"
  }
}
  data "local_file" "user_data" {
    filename = "${path.module}/user_data.sh"
}

