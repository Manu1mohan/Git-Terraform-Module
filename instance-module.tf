module "ec2_instance" {
  source        = "./terraform-ec2-module"
  region        = "us-east-1"
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  instance_name = "MyEC2Instance"
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  value = module.ec2_instance.instance_public_ip
}