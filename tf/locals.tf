
resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/docs/foo.bar"
}

locals {
  filepath = "${path.module}/docs"
  filename = "${local.filepath}/file1.txt"
}