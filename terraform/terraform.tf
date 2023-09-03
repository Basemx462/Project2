terraform {

  cloud {
    organization = "Bassem-Org"

    workspaces {
      name = "Project3"
    }
  }
}

provider "aws" {
  region = "us-east-1"  
}