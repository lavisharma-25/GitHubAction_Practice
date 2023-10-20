locals {
  tags = {
  Name    = "lavish-server"
  Owner   = "lavish.sharma@cloudeq.com"
  Purpose = "practice"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.inst
  subnet_id = var.sbnt
  tags = local.tags
  volume_tags = local.tags
}