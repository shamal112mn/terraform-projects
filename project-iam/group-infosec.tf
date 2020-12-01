resource "aws_iam_group" "infosec" {
  name = "Infosec"
  path = "/"
}

resource "aws_iam_group_membership" "infosec" {
  name = "infosec-group"

  users = [
    "${aws_iam_user.ron.name}",
    "${aws_iam_user.sam.name}",
    "${aws_iam_user.billy.name}",
  ]

  group = "${aws_iam_group.infosec.name}"
}
