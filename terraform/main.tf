provider "aws" {
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials" # esse eh o caminho pra quem usa linux
  profile                 = "picpay-aws"
}
