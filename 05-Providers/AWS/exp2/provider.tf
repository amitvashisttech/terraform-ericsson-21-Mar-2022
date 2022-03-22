provider "aws" {
  # access_key = "XXXXXXXXX"
  # secret_key = "YYYYYYYYY"
  region = "us-east-2"
}




provider "aws" {
  # access_key = "XXXXXXXXX"
  # secret_key = "YYYYYYYYY"
  region = "us-west-2"
  alias  = "myregion"
}
