note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_POP_UP_TEXT_MESSAGE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature -- Elements needed to the test

	class_test: G5_IGUI_TO_NET
		-- Instance to the class that contains the command to test

	gui: G5_GUI
		-- Auxiliary to instantiate of G5_IGUI_TO_NET

	text: STRING
		-- Parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do

			create gui.make_test
			class_test := gui
		end

feature -- Test positive

	pop_up_text_message0
		-- pop_up_text_message("have a reaction card in hand, want to play it?")
		note
			testing: "G5_IGUI_TO_NET/.pop_up_text_message"
		do
			text := "have a reaction card in hand, want to play it?"
			class_test.pop_up_text_message (text)
			assert ("pop_up_text_message effectively creates the message", class_test.a_pop_up_message.message.is_equal(text))
		end

	pop_up_text_message1
		-- two messages at once is possible?
		note
			testing: "G5_IGUI_TO_NET/.pop_up_text_message"
		do
			text := "Have a reaction card in hand, want to play it?"
			class_test.pop_up_text_message (text)
			text := "Nading"
			class_test.pop_up_text_message (text)
			assert ("pop_up_text_message effectively creates two message", class_test.a_pop_up_message.message.is_equal(text))
		end

end
