note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$20/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_MESSAGE_TEXTUAL_MAKE

inherit

	EQA_TEST_SET

feature -- Elements needed to the test

	class_test: G5_MESSAGE_TEXTUAL
		-- Instance to the class that contains the command to test

	a_source: STRING
		-- Fist parameter of the command to test

	some_targets: ARRAY [STRING]
		-- Second parameter of the command to test

	an_action: STRING
		-- Third parameter of the command to test

	a_textual_message: STRING
		-- Fourth parameter of the command to test

feature -- Test positive

	make0
		-- make("JESUS",<<"JESUS","SERGIO","JAIME">>,"new_turn","Start of turn")
		note
			testing: "G5_MESSAGE_TEXTUAL/.make"
		do
			a_source := "JESUS"
			some_targets := <<"JESUS","SERGIO","JAIME">>
			an_action := "new_turn"
			a_textual_message := "Start of turn"
			class_test.make (a_source,some_targets,an_action,a_textual_message)
			assert ("make was successful", class_test.source = a_source and class_test.targets = some_targets and class_test.action = an_action and class_test.textual_message = a_textual_message)
		end

feature -- Test negative

	make1
		-- make()
		note
			testing: "G5_MESSAGE_TEXTUAL/.make"
		local
			rescued: BOOLEAN
		do
			if not rescued then
				a_source := ""
				some_targets := VOID
				an_action := "new_turn"
				a_textual_message := VOID
				class_test.make (a_source,some_targets,an_action,a_textual_message)
			end
			assert ("make raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
