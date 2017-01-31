## s3 bucket creation, upload of file and encrypts

resource "aws_kms_key" "key" {
  description = "${var.kms_key_description}"
}

resource "aws_kms_alias" "key" {
  name_prefix = "alias/key"
  target_key_id = "${aws_kms_key.key.id}"
}

resource "aws_s3_bucket" "encrypted_bucket" {
  bucket = "${var.encrypted_bucket_name}"

  versioning {
    enabled = "${var.bucket_versioning}"
  }
}

resource "aws_s3_bucket_object" "encrypted_object" {
  key        = "${var.encrypted_object}"
  bucket     = "${aws_s3_bucket.encrypted_bucket.bucket}"
  source     = "${var.encrypted_file_path}"
  kms_key_id = "${aws_kms_key.key.arn}"
}
