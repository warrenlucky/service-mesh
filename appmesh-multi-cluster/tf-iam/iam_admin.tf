resource "aws_iam_user" "admin" {
  name = "test"
}

resource "aws_iam_access_key" "admin" {
  user = aws_iam_user.admin.name
}

resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = aws_iam_user.admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
