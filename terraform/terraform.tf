terraform {

  cloud {
    organization = "Bassem-Org"

    workspaces {
      name = "Project4"
    }
  }
}

provider "aws" {
  region = "us-east-1"  
}
