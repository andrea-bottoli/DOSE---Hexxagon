note
	description: "Class representing the board in the game."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_BOARD

create
	make

feature -- Attributes

	cards_chance: LINKED_LIST [G1_CARD]
			--List of cards "chance", 16 cards

	cards_comunity_chest: LINKED_LIST [G1_CARD]
			--List of cards "comunity chest", 16 cards

	cells_deed: LINKED_LIST [G1_CELL]
			--List of deeds of the board, 40 deeds

	bank: G1_BANK

feature -- Initilization

	make
			-- Initialize the board whit default values
		do
		end

feature -- Status Report

	get_next_card_chance (): G1_CARD
			-- returns the next card "chance"
		do
		ensure
			get_next_card: Result = cards_chance.first
		end

	get_next_card_comunity (): G1_CARD
			-- returns the next card "comunity chest"
		do
		ensure
			get_next_card: Result = cards_comunity_chest.first
		end

	withdraw_bank (money: INTEGER)
			--Remove the money to the bank
		require
			valid_money: money > 0 and money < 20000
		do
		end

	deposit_bank (money: INTEGER)
			--Enter the money to the bank
		require
			valid_money: money > 0 and money < 20000
		do
		end

	move_player (player: G1_PLAYER; position: INTEGER)
			--Move player to the position
		require
			valid_position: position > 0 and position <= 39
		do
		end

invariant
	valid_cards_chance: cards_chance.count = 16
	valid_cards_comunity_chest: cards_comunity_chest.count = 16
	valid_cells_deed: cells_deed.count = 40
	valid_bank: bank /= Void

end
