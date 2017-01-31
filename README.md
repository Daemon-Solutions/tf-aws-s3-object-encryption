tf-aws-s3-object-encryption

This module is for uploading sensitive files to an s3 bucket and encrypting them using kms

Usage

Declare a module in your Terraform file, for example:

module "s3_encrypt" {
    source = "git::ssh://git@gogs.bashton.net/Bashton-Terraform-Modules/tf-aws-s3-object-encryption.git

    encrypted_bucket_name = "bucketname"
    kms_key_description   = "key"
    encrypted_file_path   = "path-to-file-to-upload"
    encrypted_object      = "name-of-object-once-in-s3"
    }

Required Variables

encrypted_bucket_name - name of bucket to create

encrypted_file_path - path to file you want to upload and encrypt

encrypted_object - name of the object you have encrypted once in s3

Optional Variables

kms_key_description - defaults to ""

Outputs

kms_key_arn - arn of the kms key used

kms_key_id - id of the kms key used

encrypted_object_id - id/name of the encrypted object

encrypted_bucket_id - id/name of the bucket used

encrypted_bucket_arn - arn of the bucket used