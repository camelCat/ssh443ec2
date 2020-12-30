# Terraform script that creates an instance reachable with SSH on port 443
Instructions:
1. Create a key-pair in your AWS Console

To connect to the created ec2 instance with terminal type:
ssh -p 443 -i "{key_file_name}.pem" {user_name}@{public_ip}
