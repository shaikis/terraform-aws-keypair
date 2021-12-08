output "key_pair_arn" {
    value = aws_key_pair.kp.*.arn
}

output "keypair_arn" {
    value = aws_key_pair.keypair.*.arn
}

output "private_key" {
  value     = tls_private_key.pk.*.private_key_pem
  sensitive = true
}