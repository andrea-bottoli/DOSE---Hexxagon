note
	description: "Summary description for {HX_G_AI_DUMMYMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	HX_G_AI_DUMMYMANAGER

inherit
	HX_G_IUIMANAGER

create
	make

feature

	game: HX_L_LOGIC
	board: HX_L_IBOARD
	ai: HX_A_AI
	finished: BOOLEAN
	stopped: BOOLEAN

	make()
		do
			create game.initialize(Current)
			create ai.make(10)
			finished := FALSE
			stopped := FALSE
		end

	repaint
		do
		end

	request_move()
		local
			l_move: HX_L_IMOVE
		do
			l_move := ai.getMovement(board)
			board.move_piece_and_continue (
				l_move.source.x,
				l_move.source.y,
				l_move.destination.x,
				l_move.destination.y)
		end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
		do
			finished := TRUE
		end

	game_stopped(code: INTEGER; reason: STRING)
		do
			stopped := TRUE
		end

end
