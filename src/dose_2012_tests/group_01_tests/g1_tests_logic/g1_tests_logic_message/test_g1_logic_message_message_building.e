note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_BUILDING

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

	on_clean
			-- <Precursor>
		do
			assert ("not_implemented", False)
		end

feature -- Test routines

	test_G1_Logic_message_message_building
			-- New test routine
		note
			testing:  "user/G1"
			testing:  "covers/{G1_MESSAGE_BUILDING}"
		local
			msg_building: G1_MESSAGE_BUILDING
		do
			create msg_building.make_building (17, 19)
			assert ("Message Building: Deed_Build:17, Deed_Sell:19", msg_building.id_deed_build.is_equal (17) and msg_building.id_deed_sell.is_equal (19))
		end

end


