output admin_aws_iam_access_id {
  value = aws_iam_access_key.admin.id
}

output admin_aws_iam_access_key {
  value = aws_iam_access_key.admin.secret
}
