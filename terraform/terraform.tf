terraform {

  cloud {
    organization = "Bassem-Org"

    workspaces {
      name = "project2"
    }
  }
}

provider "aws" {
  region = "us-east-1"  
}