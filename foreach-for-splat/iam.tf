resource "aws_iam_user" "accounts" {

  for_each = toset(["user.qa", "user.po", "user.mng"])
  name     = each.key # each.key e each.value são os mesmps para um set

}