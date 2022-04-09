
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("../cloud-auth/lab3-aws.pub")
  tags = {
      proj         = "lab-03"
      environment  = "lab03-env"
  }

}
