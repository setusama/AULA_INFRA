resource "tls_private_key" "ST-SEGURO" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
resource "local_file" "ST_SEGURO" {
  content         = tls_private_key.ST-SEGURO.private_key_pem
  filename        = "key.pem"
  file_permission = "0600"
}