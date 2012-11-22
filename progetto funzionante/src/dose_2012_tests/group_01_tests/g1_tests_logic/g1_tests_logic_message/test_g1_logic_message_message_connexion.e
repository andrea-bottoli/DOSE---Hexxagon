note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "Group1-Milano7"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MESSAGE_MESSAGE_CONNEXION

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

	test_G1_Logic_message_message_connexion
			-- New test routine
		note
			testing:  "user/G1"
			testing: "covers/{G1_MESSAGE_CONNEXION}.make_connexion"
		local
			msg_connexion: G1_MESSAGE_CONNEXION
		do
			create msg_connexion.make_connexion ("xxx.xxx.xxx.xxx",FALSE)
			assert ("Message Connexion: Join:xxx.xxx.xxx.xxx, Exit:FALSE ", msg_connexion.join.is_equal ("xxx.xxx.xxx.xxx") and msg_connexion.exit.is_equal (FALSE))
		end

end


