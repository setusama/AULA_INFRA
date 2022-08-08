resource "tls_private_key" "ST-SSH" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "local_file" "ST_SSH" {
  content = tls_private_key.ST-SSH.private_key_pem
  filename = "key.pem"
  file_permission = "0600"
}