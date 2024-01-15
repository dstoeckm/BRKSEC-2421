resource "ciscomcd_policy_rule_set" "BRKSEC-2421-egress-policy-ruleset" {
	name = "BRKSEC-2421-egress-policy-ruleset"
	description = "Rule created for CiscoLive BRKSEC-2421 ingress policy rule set.\nDone by DStoeckm"
}

resource "ciscomcd_policy_rules" "BRKSEC-2421-egress-policy-ruleset_rules" {
	rule_set_id = ciscomcd_policy_rule_set.BRKSEC-2421-egress-policy-ruleset.rule_set_id
	rule {
		name = "valtix-sample-egress-forwarding-allow"
		description = "Valtix created sample egress forwarding policy rule."
		action = "Allow Log"
		state = "ENABLED"
		service = 2
		source = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		fqdn_filter_profile = 1
		type = "Forwarding"
		destination = 1
	}
	rule {
		name = "valtix-sample-egress-udp-forwarding-allow"
		description = "Valtix created sample egress UDP forwarding policy rule."
		action = "Allow Log"
		state = "ENABLED"
		service = 3
		source = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		fqdn_filter_profile = 1
		type = "Forwarding"
		destination = 1
	}
	rule {
		name = "topology_2023-11-21T13_08_07_477Z"
		action = "Allow Log"
		state = "ENABLED"
		service = 4
		source = 10
		network_intrusion_profile = 1
		dlp_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		url_filter = 1
		fqdn_filter_profile = 1
		anti_malware_profile = 1
		type = "ForwardProxy"
		destination = 4
	}
	rule {
		name = "topology_2023-11-23T10_54_06_860Z"
		action = "Allow Log"
		state = "ENABLED"
		service = 4
		source = 11
		network_intrusion_profile = 1
		dlp_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		url_filter = 1
		fqdn_filter_profile = 1
		anti_malware_profile = 1
		type = "ForwardProxy"
		destination = 4
	}
	rule {
		name = "topology_2023-11-27T23_02_20_451Z"
		action = "Allow Log"
		state = "ENABLED"
		service = 6
		source = 12
		network_intrusion_profile = 1
		dlp_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		url_filter = 1
		fqdn_filter_profile = 1
		anti_malware_profile = 1
		type = "Forwarding"
		destination = 4
	}
	rule {
		name = "topology_2023-11-30T16_09_14_556Z"
		action = "Allow Log"
		state = "ENABLED"
		service = 4
		source = 13
		network_intrusion_profile = 1
		dlp_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		url_filter = 1
		fqdn_filter_profile = 1
		anti_malware_profile = 1
		type = "ForwardProxy"
		destination = 4
	}
	rule {
		name = "topology_2023-12-05T22_19_40_837Z"
		action = "Allow Log"
		state = "ENABLED"
		service = 4
		source = 14
		network_intrusion_profile = 1
		dlp_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		url_filter = 1
		fqdn_filter_profile = 1
		anti_malware_profile = 1
		type = "ForwardProxy"
		destination = 4
	}
}

