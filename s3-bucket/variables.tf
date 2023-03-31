variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}

variable "s3_bucket_name" {
    type = string
    description = "s3_bucket_name"
    default = "farsinbucket9895"
}

variable "region" {
    type = string
    description = "location"
    default = "ap-south-1"
}
variable "acl_bucket" {
    type = string
    description = "Set ACL value as private or public"
    default = "private"
}
