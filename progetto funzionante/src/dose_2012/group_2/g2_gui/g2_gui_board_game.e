note
	description: "Summary description for {G2_GUI_BOARD_GAME}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_BOARD_GAME

create
	make_gui_board_game

feature

	make_gui_board_game
		do
		end

feature {NONE} -- inicialization

	inicialize_board
			--initializes the board
		do
		end

	update (logic: G2_LOGIC_ILOGIC)
			--update the board_game and card the player.
		do
		end

feature --miscellanies

	message_player_leaves_game
			--Shows message when a player leaves game voluntarily.
		do
		end

	select_turn
			--selects at random the shift the player.
		do
		end

feature

	is_my_turn: BOOLEAN

	board: ARRAY2 [G2_GUI_CELL]

	player1, player2: LINKED_LIST [G2_GUI_CARD]

end
