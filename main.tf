terraform {
  required_providers {
    aws = "5.8.0"

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

