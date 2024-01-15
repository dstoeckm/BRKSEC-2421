resource "ciscomcd_address_object" "opencart_ec2_private_ip" {
	name = "opencart_ec2_private_ip"
	description = ""
	type = "STATIC"
	value = ["172.31.7.247"]
	backend_address = true
}
