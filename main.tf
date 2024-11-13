
# Independent sleep resource
resource "null_resource" "resource_1" {
  provisioner "local-exec" {
    command = "echo 'Independent resource sleeping...' && sleep 5"
  }

  triggers = {
    resource_id = timestamp()
  }
}

resource "null_resource" "resource_2" {
  provisioner "local-exec" {
    command = "echo 'Second resource sleeping...' && sleep 5"
  }

  depends_on = [null_resource.resource_1]

  triggers = {
    resource_id = timestamp()
  }
}

resource "null_resource" "resource_3" {
  provisioner "local-exec" {
    command = "echo 'Third resource sleeping...' && sleep 5"
  }

  depends_on = [null_resource.resource_2]

  triggers = {
    resource_id = timestamp()
  }
}

resource "null_resource" "resource_4" {
  provisioner "local-exec" {
    command = "echo 'Fourth resource sleeping...' && sleep 5"
  }

  depends_on = [null_resource.resource_3]

  triggers = {
    resource_id = timestamp()
  }
}
