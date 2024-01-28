resource "aws_transfer_server" "sftp" {
  endpoint_type = "PUBLIC"
  identity_provider_type = "API_GATEWAY"
# protocol defaults to SFTP unless explicitly specified


}

