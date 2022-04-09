resource "aws_security_group" "test-env" {
  vpc_id = aws_vpc.main.id
  name = "corda-node"
  description = "security group that allows CE node p2p"
  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }

#   # identity manager
#   ingress {
#       from_port = 10000
#       to_port = 10000
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }

#   # network map
#   ingress {
#       from_port = 20000
#       to_port = 20000
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }

#   # node p2p
#   ingress {
#       from_port = 60000
#       to_port = 60000
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }

#   # rpc addr
#   ingress {
#       from_port = 60002
#       to_port = 60002
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }

#   # rpc addr
#   ingress {
#       from_port = 60003
#       to_port = 60003
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }
  

}

