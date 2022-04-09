

resource "aws_instance" "test-svc" {
  ami           = var.VM01_AMI_ID
  instance_type = "t2.micro"

  root_block_device {
     volume_size = 20
   }

  # the VPC subnet
  subnet_id = aws_subnet.main-public-01.id

  # the security group
  vpc_security_group_ids = [aws_security_group.test-env.id]

  # the public SSH key
  key_name = "deployer-key"

  tags = {
      Name      = "Harbor Test Env"
      env       = "test"
  }


}
