data "local_file" "new_public_key" {
  filename = "new_key.pub"
}

resource "harvester_ssh_key" "new_key" {
  name      = var.username
  namespace = var.namespace

  public_key = data.local_file.new_public_key.content
}

