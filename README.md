# terraform-aws-keypair
Create Keypair


```
module "keypair" {
    source    = "git@github.com:shaikis/terraform-aws-keypair.git"
    key_name  = "openvpn"
    pub_key   = "ssh-rsa " # if this value is null , it will generate new key
}