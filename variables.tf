/* S3 bucket variables */
variable "encrypted_bucket_name" {
  description = "The name of the s3 bucket to create"
  type = "string"
  default = "encrypted-bucket"
}

variable "bucket_versioning" {
  description = "Whether to enable s3 bucket versioning"
  type = "string"
  default = false
}

/* KMS key variables */
variable "kms_key_description" {
  description = "The description for the KMS key you wish to create"
  type = "string"
  default = "This KMS key is for encrypting an item in an s3 bucket"
}

/* Encrypted file variables */
variable "encrypted_file_path" {
  description = "The local path for the file you wish to upload and encrypt"
  type = "string"
}

variable "encrypted_object" {
  description = "The name of the file you wish to encrypt"
  type = "string"
}
