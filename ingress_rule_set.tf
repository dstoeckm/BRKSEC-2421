resource "ciscomcd_policy_rule_set" "BRKSEC-2421-ingress-policy-ruleset" {
	name = "BRKSEC-2421-ingress-policy-ruleset"
	description = "Rule created for CiscoLive BRKSEC-2421 ingress policy rule set.\nDone by DStoeckm"
}

resource "ciscomcd_policy_rules" "BRKSEC-2421-ingress-policy-ruleset_rules" {
	rule_set_id = ciscomcd_policy_rule_set.BRKSEC-2421-ingress-policy-ruleset.rule_set_id
	rule {
		name = "valtix-sample-ingress-allow"
		description = "Valtix created sample ingress policy rule."
		action = "Allow Log"
		state = "ENABLED"
		service = 1
		source = 1
		network_intrusion_profile = 1
		web_protection_profile = 1
		malicious_ip_profile = 1
		packet_capture_enabled = false
		send_deny_reset = false
		type = "ReverseProxy"
	}
	rule {
		name = "opencart_ingress_80"
		action = "Allow Log"
		state = "ENABLED"
		service = 7
		source = 4
		packet_capture_enabled = false
		send_deny_reset = false
		type = "ReverseProxy"
	}
	rule {
		name = "opencart_ingress_22"
		action = "Allow Log"
		state = "ENABLED"
		service = 8
		source = 4
		packet_capture_enabled = false
		send_deny_reset = false
		type = "ReverseProxy"
	}
}

