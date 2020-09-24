module "helloworld" {
  source  = "tfe-zone-cc09c2e7.ngrok.io/producer-org/helloworld/aws"
  version = "2020.04.21"
  password = "super secret"
}

resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}
