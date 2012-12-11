note
	description: "Summary description for {TEST_SET_G5_INET_TO_LOGIC_NOTIFY}."
	author: "JESUS CASTELLI"
	date: "$21/11/2012$"
	revision: "$0.0$"


class
	TEST_SET_G5_INET_TO_LOGIC_NOTIFY

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_INET_TO_LOGIC
		-- Instance to the class that contains the command to test

	net_server: G5_NET_SERVER
		-- Auxiliary to instantiate of G5_INET_TO_LOGIC

	gui_to_net: G5_IGUI_TO_NET
		-- Auxiliary to instantiate of G5_NET_CLIENT

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	message_to_send: G5_MESSAGE
		-- Parameter of the command to test

	message_textual: G5_MESSAGE_TEXTUAL
		-- Auxiliary to instantiate of G5_MESSAGE	

feature -- Preparation of Test

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make_test
			gui_to_net := gui
			create net_server.make (1025, 2)
			class_test := net_server
		end

--feature -- Test positive

--	notify0
--		-- notify("JESUS", <<"SERVER","CLIENT">>, "display", "you joined the game")
--		note
--			testing: "G5_INET_TO_LOGIC_NOTIFY/.notify"
--		do
--			message_textual.make ("JESUS", <<"SERVER","CLIENT">>, "display", "you joined the game")
--			message_to_send := message_textual
--			class_test.notify (message_to_send)
--			assert ("notify was successful", True)
--		end

--feature -- Test negative

--	notify1
--		-- notify("JESUS", <<"CLIENT">>, "pass_turn", "TURN OF RUTH")
--		note
--			testing: "G5_INET_TO_LOGIC_NOTIFY/.notify"
--		local
--			rescued: BOOLEAN
--		do
--			if not rescued then
--				message_textual.make ("JESUS", <<"CLIENT">>, "new_turn", "TURN OF RUTH")
--				message_to_send := message_textual
--				class_test.notify (message_to_send)
--			end
--			assert ("notify raised problem", rescued)
--			rescue
--				if not rescued then
--					rescued := True
--					retry
--				end
--		end
end
