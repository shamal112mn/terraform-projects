resource "aws_iam_group" "developer" {
  name = "developer"
  path = "/"
}

resource "aws_iam_group_membership" "developer" {
  name = "developer-group"

  users = [
    "${aws_iam_user.bob.name}",
    "${aws_iam_user.tim.name}",
    "${aws_iam_user.ben.name}",
  ]

  group  = "${aws_iam_group.developer.name}"  
}
