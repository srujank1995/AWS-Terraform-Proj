terraform {
  backend "s3" {
    bucket = "myprojectbucketterraform24"
    key = "state"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
}