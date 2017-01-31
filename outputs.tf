##

output "kms_key_arn" {
  value = "${aws_kms_key.key.arn}"
}

output "kms_key_id" {
  value = "${aws_kms_key.key.key_id}"
}

output "encrypted_object_id" {
  value = "${aws_s3_bucket_object.encrypted_object.id}"
}

output "encrypted_bucket_id" {
  value = "${aws_s3_bucket.encrypted_bucket.id}"
}

output "encrypted_bucket_arn" {
  value = "${aws_s3_bucket.encrypted_bucket.arn}"
}
