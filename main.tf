resource "tls_private_key" "pk" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "kp" {
  count      = var.pub_key != null ? 0 : 1 
  key_name   = var.key_name      # Create a "myKey" to AWS!!
  public_key = tls_private_key.pk.public_key_openssh

  provisioner "local-exec" { # Create a "myKey.pem" to your computer!!
    command = "echo '${tls_private_key.pk.private_key_pem}' > ~/.ssh/${key_name}.pem"
  }
}

resource "aws_key_pair" "kp" {
  count = var.pub_key != null ? 1 : 0
  key_name   = var.key_name     # Create a "myKey" to AWS!!
  public_key = var.pub_key
}