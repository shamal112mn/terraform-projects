provider "google" {
	version = "2.20"
    credentials = file("~/.google/credentials")
    project     = "git@github.com:shamal112mn/terraform-google-gke.git"
	region = "us-central1"
	zone = "us-central1-c"
}
