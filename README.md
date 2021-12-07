# terraform-aws-keypair
Create Keypair


```
module "keypair" {
    source    = "git@github.com:shaikis/terraform-aws-keypair.git"
    key_name  = "openvpn"
    pub_key   = "ssh-rsa " # if this value is null , it will generate new key
}
```
```
Output variables: 
1) when you passed public key use  module.keypair.keypair_arn
2)when you did not passed public key use  module.keypair.key_pair_arn
```