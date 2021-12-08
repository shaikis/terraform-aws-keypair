output "key_pair_arn" {
    value = aws_key_pair.kp.*.arn
}
output "key_pair_name" {
    value = aws_key_pair.kp.*.name
}
output "keypair_arn" {
    value = aws_key_pair.keypair.*.arn
}

output "keypair_name" {
    value = aws_key_pair.keypair.*.name
}

output "private_key" {
  value     = tls_private_key.pk.*.private_key_pem
  sensitive = true
}