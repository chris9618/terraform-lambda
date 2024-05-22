provider "aws" {
  alias  = "account_a"
  region = "us-east-1"  # Replace with your region
}

provider "aws" {
  alias  = "account_b"
  region = "us-east-1"  # Replace with your region

  assume_role {
    role_arn = "arn:aws:iam::782693295645:role/Cross-account-role"
  }
}
