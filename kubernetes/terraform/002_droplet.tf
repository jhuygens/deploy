# Create droplet

resource "digitalocean_droplet" "jhuygens-server" {
  image     = "ubuntu-20-04-x64"
  name      = "jhuygens-01"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = "${file("user_data.yml")}"
  ssh_keys  = ["${digitalocean_ssh_key.shaltear.fingerprint}"]
}

