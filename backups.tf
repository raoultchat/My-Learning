terraform {
  backend "s3" {
    bucket = "rtchatchouang.us"
    key    = "backups.tf"
    region = "us-west-1"
  shared_credentials_file = "/Users/raoul/.aws/creds"
  profile                  = "raoul"
  }
}


