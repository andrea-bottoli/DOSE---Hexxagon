note
	description: "Summary description for {LOGIC}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_LOGIC

inherit

	G2_LOGIC_ILOGIC

feature {ANY} --Attributes

	g2_open: BOOLEAN

	g2_same: BOOLEAN

	g2_same_wall: BOOLEAN

	g2_sudden_death: BOOLEAN

	g2_plus: BOOLEAN

	g2_combo: BOOLEAN

	g2_elemental: BOOLEAN

	g2_state: G2_LOGIC_STATE

	g2_gui: G2_GUI_IMAIN_MENU

	g2_net: G2_NET_INET

	g2_deck: ARRAY [BOOLEAN]

feature {ANY} --setter
	set_gui(a_gui: G2_GUI_IMAIN_MENU)
		require else
			non_void: a_gui /=void
		do
			ensure then
			g2_gui:g2_gui=a_gui
		end
	set_net(a_net:  G2_NET_INET)
		require else
			non_void: a_net/=void
		do
			ensure then
			g2_net:g2_net=a_net
		end

	set_state (e_state: G2_LOGIC_STATE)
		require else
			non_void: e_state /= void
		do
		ensure then
			g2_state: g2_state = e_state
		end

	set_Rules (e_open, e_same, e_same_wall, e_sudden_death, e_plus, e_combo, e_elemental: BOOLEAN)
		do
			ensure then
			g2_rules:g2_open=e_open and g2_same=e_same and g2_same_wall=e_same_wall and g2_sudden_death=e_sudden_death and g2_plus=e_plus and g2_combo=e_combo and g2_elemental=e_elemental
		end

feature {ANY} --Initialization
	--calls all the procedures needed to initialize game

	init_game ()
		do
		end
			--distributes the deck cards randomly to the players

	distribute_card (e_deck: ARRAY [BOOLEAN])
		require
			deck_is_non_void: e_deck /= void
		do
		ensure
			player1_cards_non_void: g2_state.g2_player1 /= void
			player2_cards_non_void: g2_state.g2_player2 /= void
		end
			--randomly choose the player to start

	define_first_player ()
		do
		end

feature {ANY} --Game procedures

		--looking a card at the current player's cards and return it

	find_chosen_card (a_card: G2_LOGIC_CARD): G2_LOGIC_CARD
		require
			non_void_card: a_card /= void
		do
		ensure
			non_void_returned_card: Result/=void
		end
			--play the given card at the given COORDINATES

	play_card (e_card: G2_LOGIC_CARD; x, y: INTEGER)
		require
			non_void: e_card /= void
		do
		end
			--change the color of a card when it is captured

	capture (card: G2_LOGIC_CARD)
		require
			non_void: card /= void
		do
		end
			--return true when matrix is full

	matrix_is_full (): BOOLEAN
		do
		end
			--decide which player won the game

	end_of_game ()
		do
		end
			--quiting the game

	quit ()
		do
		end
			--check if the state is valid:invalid moves at occupied cells at matrix

	is_valid_state (): BOOLEAN
		do
		end

invariant
	five_cards_player1: g2_state.g2_player1.count = 5
	five_cards_player2: g2_state.g2_player2.count = 5
	g2_matrix_3X3: g2_state.g2_matrix.count = 3

end
