resource "ciscomcd_profile_dlp" "BRKSEC-2421-DLP-red" {
	name = "BRKSEC-2421-DLP-red"
	description = "Valtix created profile for DLP with detect only."
	dlp_filter_list {
		description = "Private Keys"
		count = 10
		action = "Deny Log"
		patterns = []
		static_patterns = ["AWS Access Key", "AWS Secret Key", "DSA Private Key", "GitHub Key", "Heroku Key", "Putty SSH DSA Key", "Putty SSH RSA Key", "RSA Private Key", "SSH DSS Public Key", "SSH RSA Public Key", "SSL Certificate"]
	}
	dlp_filter_list {
		description = "Bank Routing Numbers"
		count = 10
		action = "Allow Log"
		patterns = []
		static_patterns = ["Bank of America Routing Numbers - California", "BBVA Compass Routing Number - California", "Chase Routing Numbers - California", "Citibank Routing Numbers - California", "Swift code", "United Bank Routing Number - California", "US Bank Routing Numbers - California", "Wells Fargo Routing Number - California"]
	}
	dlp_filter_list {
		description = "US Social Security Number"
		count = 5
		action = "Allow Log"
		patterns = []
		static_patterns = ["US Social Security Number"]
	}
	dlp_filter_list {
		description = "Personal Information"
		count = 5
		action = "Allow Log"
		patterns = []
		static_patterns = ["California Driver's License", "Email ID", "US Phone Number", "US Zip Code"]
	}
	dlp_filter_list {
		description = "Payments"
		count = 5
		action = "Deny Log"
		patterns = []
		static_patterns = ["Credit Card Number"]
	}
}
