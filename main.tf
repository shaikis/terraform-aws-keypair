resource "tls_private_key" "pk" {
  count      = var.pub_key != null ? 0 : 1
  algorithm = "RSA"
  rsa_bits  = 4096
}

# If else condition here ... :)
resource "aws_key_pair" "kp" {
  count      = var.pub_key != null ? 0 : 1 
  key_name   = var.key_name      # Create a "myKey" to AWS!!
  public_key = tls_private_key.pk.*.public_key_openssh
}

resource "aws_key_pair" "keypair" {
  count = var.pub_key != null ? 1 : 0
  key_name   = var.key_name    # Create a "myKey" to AWS!!
  public_key = var.pub_key
}