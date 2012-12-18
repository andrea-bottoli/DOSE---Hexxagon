note
	description: "[
		Tests regading the G5_IP_MANAGER class and its features.
	]"
	author: "Luca Falsina"
	date: "09.12.2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_SET_G5_IP_MANAGER

inherit
	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} -- Status Report

	tested_ip_manager: G5_IP_MANAGER
		-- The tested class

	ip_address: STRING

	check_result: BOOLEAN

	rescued: BOOLEAN

	obtained_net_address: INET_ADDRESS

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			create tested_ip_manager.make_empty
			rescued := false
		end

feature -- Test routines which checks different input on is_a_valid_IPv4 feature

	is_a_valid_IPv4_0_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := "123"
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_1_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := " . . . ."
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_2_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := " . . . "
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_3_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := " 0. 0 . 0. 0"
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_4_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := "-1.3.126.245"
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_5_fail
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := "300.255.0.5"
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", not(check_result))

		end

	is_a_valid_IPv4_correct
		note
			testing: 	"covers/{G5_IP_MANAGER}.is_a_valid_ipv4"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do

			ip_address := "192.167.56.32"
			check_result := tested_ip_manager.is_a_valid_ipv4 (ip_address)
			assert ("Invalid IP address", check_result)

		end

feature -- Test routines which checks different input on generates_IP_from_string feature

	generates_IP_from_string_fail_0
		note
			testing: 	"covers/{G5_IP_MANAGER}.generates_IP_from_string"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do
			if not rescued then
				obtained_net_address := tested_ip_manager.generates_ip_from_string ("2.0.4.272")
			end
			assert ("An invalid IP was provided so a rescue feature must be raised", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	generates_IP_from_string_fail_1
		note
			testing: 	"covers/{G5_IP_MANAGER}.generates_IP_from_string"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do
			if not rescued then
				obtained_net_address := tested_ip_manager.generates_ip_from_string ("")
			end
			assert ("An empty IP was provided so a rescue feature must be raised", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	generates_IP_from_string_fail_2
		note
			testing: 	"covers/{G5_IP_MANAGER}.generates_IP_from_string"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		local
			ip_for_test: STRING
		do
			if not rescued then
				obtained_net_address := tested_ip_manager.generates_ip_from_string (ip_for_test)
			end
			assert ("A void IP was provided so a rescue feature must be raised", rescued)
		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

	generates_IP_from_string_loopback
		note
			testing: 	"covers/{G5_IP_MANAGER}.generates_IP_from_string"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do
			obtained_net_address := tested_ip_manager.generates_ip_from_string ("127.0.0.1")
			assert("This address is not void.", obtained_net_address /= void)
			assert("This address is a loopback one.", obtained_net_address.is_loopback_address)
		end

	generates_IP_from_string_general_case
		note
			testing: 	"covers/{G5_IP_MANAGER}.generates_IP_from_string"
			testing:	"user/G5" -- this is the tag based on the group-prefix for our tests
		do
			obtained_net_address := tested_ip_manager.generates_ip_from_string ("145.51.95.1")
			assert("This address is not void.", obtained_net_address /= void)
			assert("This address is not a loopback one.", not(obtained_net_address.is_loopback_address))
		end
end
