output "login-string" {
value=<<EOF
ssh -i ../cloud-auth/lab3-aws ubuntu@${join(",",aws_instance.test-svc.*.public_ip)}
EOF
}


