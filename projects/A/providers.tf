provider "google" {
    credentials = file("./module.json")
    project = "hale-dynamo-398004"
    region = "us-central1"
  
}