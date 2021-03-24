terraform {
  backend "gcs" {
    bucket      = "terraform-state-0308" ##"terraform-state-sfsf"   ## GCS bucket name to store the state file
    prefix      = "terraform10"           ##"terraform3"             ## prefix to the folder
    credentials = "./auth/sfsf-key.json"  ##if using service account
    #access_token = "Enter access token"
  }
}