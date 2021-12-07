output "key_pair_arn" {
    value = aws_key_pair.kp.[0].arn
}

output "keypair_arn" {
    value = aws_key_pair.keypair.[0].arn
}