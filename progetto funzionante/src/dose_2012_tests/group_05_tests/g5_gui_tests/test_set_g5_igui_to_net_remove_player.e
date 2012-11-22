note
	description: "Summary description for {TEST_SET_G5_IGUI_TO_NET_PUT_CARDS}."
	author: "JESUS CASTELLI"
	date: "$19/11/2012$"
	revision: "$0.0$"

class
	TEST_SET_G5_IGUI_TO_NET_REMOVE_PLAYER

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

	a_player_name: STRING
		-- parameter of the command to test

feature -- Preparation of Tests

	on_prepare
		-- Initializes the necessary elements
		do
			create gui.make
			class_test := gui
		end

feature -- Test positive

	remove_player0
		-- remove_player("JESUS")
		note
			testing: "G5_IGUI_TO_NET/.remove_player"
		do
			a_player_name := "JESUS"
			class_test.remove_player (a_player_name)
			assert ("remove_player was successful ", TRUE)
		end

feature -- Test negative

	remove_player1
		-- Removed yourself
		note
			testing: "G5_IGUI_TO_NET/.remove_player"
		local
			rescued: BOOLEAN
			main_view: G5_MAIN_VIEW
		do
			if not rescued then
				main_view.make (<<"JESUS","JAIME","SERGIO">>, "JESUS")
				a_player_name := "JESUS"
				class_test.remove_player (a_player_name)
			end
			assert ("remove_player raised problem", rescued)
			rescue
				if not rescued then
					rescued := TRUE
					retry
				end
		end

end
