# Export the ssh key

resource "digitalocean_ssh_key" "shaltear" {
	name       = "shaltear"
	public_key = "${file("~/.ssh/id_rsa.pub")}"
}
