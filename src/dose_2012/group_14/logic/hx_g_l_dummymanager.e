note
	description: "Summary description for {HX_G_L_DUMMYMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_L_DUMMYMANAGER

inherit
	HX_G_IUIMANAGER

create
	make

feature

	game: HX_L_LOGIC
	finished: BOOLEAN
	stopped: BOOLEAN
	window: HX_G_L_TESTING_BOARD

	make()
		local
			l_template_path: STRING
		do
			create game.initialize(Current)
			finished := FALSE
			stopped := FALSE
			l_template_path := "dose_2012/group_14/logic/templates/default.hx"
			game.start_single_player ("Player 1", 1, l_template_path)
			--game.start_multiplayer_one("Player 1", "Player 2", l_template_path)

			create window.create_with_game (game)
			window.show
		end

	repaint()
		do
			if window /= void then
				window.repaint
			end
		end

	request_move()
		do
			if window /= void then
				window.repaint
			end
		end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
		local
			question_dialog: EV_CONFIRMATION_DIALOG
			text: STRING
		do
			window.repaint
			finished := TRUE

			text := "Game finished."
			text.append_string ("%N winner id: ")
			text.append_integer (l_message.winner_id)
			text.append_string ("%N player1 pieces: ")
			text.append_integer (l_message.player1_pieces)
			text.append_string ("%N player2 pieces: ")
			text.append_integer (l_message.player2_pieces)
			create question_dialog.make_with_text (text)
			question_dialog.show_modal_to_window (window)
			window.destroy
		end

	game_stopped(code: INTEGER; reason: STRING)
		do
			stopped := TRUE
		end

end
