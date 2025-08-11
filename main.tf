resource "aws_instance" "my_ec2" {
    ami           = "ami-001717e08f7a96618" 
    instance_type = "t3.micro"
    tags = {
    Name = "MyVeryOwnTerraformEC2"
  }
}

output "aws_instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "temitope1-terraform-bucket-001"

  tags = {
    Name = "MyVeryOwnTerraformBucket"
  }
}