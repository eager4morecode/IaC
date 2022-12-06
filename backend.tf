terraform{
  backend "s3" {
    bucket = "terraform-sts"
    key = "terraform.tfstate"
    region = "us-east-1"

  }
}
  