terraform {
 backend "gcs" {
   bucket  = "wif-nithin-234"
   prefix  = "tf/state"
 }
}
