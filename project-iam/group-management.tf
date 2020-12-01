resource "aws_iam_group" "management" {
  name = "management"
  path = "/"
}

resource "aws_iam_group_membership" "management" {
  name = "management-group"

  users = [
    "${aws_iam_user.ben.name}",
  ]

  group = "${aws_iam_group.management.name}"
}
