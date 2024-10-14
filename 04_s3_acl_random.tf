resource "aws_s3_bucket" "my-new-s3-bucket" {
    bucket = "my-new-terraform-test-bucket-muraligirija"
    tags = {
      name = "My s3 bucket"
      purpose = "Intro to resource blocks lab"
    }
}

resource "aws_s3_bucket_acl" "my_new_bucket_acl" {
    bucket = aws_s3_bucket.my-new-s3-bucket.id
    acl = "private"
}

resource "random_id" "randomness" {
    byte_length = 16
}
