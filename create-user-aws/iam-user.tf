resource "aws_iam_user" "create_user" {
  name          = var.iam_name_user
  path          = var.path_iam
  force_destroy = var.iam_destroy
}

resource "aws_iam_user_login_profile" "create_user" {
  user    = aws_iam_user.create_user.name
  pgp_key = var.login_iam

}

output "password" {
  value = aws_iam_user_login_profile.create_user.encrypted_password
}