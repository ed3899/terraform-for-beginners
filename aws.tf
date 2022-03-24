# provider "aws" {
#   region = "us-east-2"
#   # How to refer to env?
#   #   access_key = "AKIA4XST3PEFWEEXLIB3"
#   #   secret_key = "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"
# }

resource "aws_iam_user" "admin-user" {
  name = "lucy"
  tags = {
    Description = "Technical team leader"
  }
}

resource "aws_iam_policy" "adminUser" {
  name = "AdminUsers"
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : "*",
        "Resource" : "*"
      }
    ]
  })
}
