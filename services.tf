resource "ciscomcd_service_object" "opencart_app_rev_proxy" {
	name = "opencart_app_rev_proxy"
	description = "revers forwarding proxy to reach the OpenCart web server"
	service_type = "ReverseProxy"
	protocol = "TCP"
	source_nat = false
	backend_address_group = 7
	transport_mode = "HTTP"
		port {
			destination_ports = "80"
			backend_ports = "80"
		}
}
resource "ciscomcd_service_object" "opencart_ssh_rev_proxy" {
	name = "opencart_ssh_rev_proxy"
	description = "access for local Ansible host to configure the OpenCart host."
	service_type = "ReverseProxy"
	protocol = "TCP"
	source_nat = false
	backend_address_group = 7
	transport_mode = "TCP"
		port {
			destination_ports = "22"
			backend_ports = "22"
		}
}
