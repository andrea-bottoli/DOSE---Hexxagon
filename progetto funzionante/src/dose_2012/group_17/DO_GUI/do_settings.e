note
	description: "Summary description for {DO_SETTINGS}."
	author: "Martin Paulucci"
	date: "13/11/2011"
	revision: "$Revision$"

class
	DO_SETTINGS

create
	make

feature {ANY} -- Initialization

	make(new_players, new_kingdom_cards, new_piles_to_exhaust, new_nro_of_each_card, new_nro_of_each_vp : INTEGER; cards: LINKED_LIST[INTEGER])
			-- Initialization for `Current'.
		do
		end


feature {ANY} --implementation

	available_cards : LINKED_LIST[INTEGER]

	players : INTEGER

	kingdom_cards : INTEGER

	piles_to_exhaust : INTEGER

	nro_of_each_card : INTEGER

	nro_of_each_vp : INTEGER

feature -- Measurement

feature -- Status report

	min_players : INTEGER = 2
	max_players : INTEGER = 4
	min_kingdom_cards : INTEGER = 10
	max_kingdom_cards : INTEGER = 12
	min_piles_to_exhaust : INTEGER = 3
	max_piles_to_exhaust : INTEGER = 10
	min_nro_of_each_card : INTEGER = 10
	max_nro_of_each_card : INTEGER = 14
	min_nro_of_each_vp : INTEGER = 8
	max_nro_of_each_vp : INTEGER = 18

	valid_number_of_players(m : INTEGER) : BOOLEAN
		do
		end

	valid_number_of_kingdom_cards(m : INTEGER) : BOOLEAN
		do
		end

	valid_number_of_piles_to_exhaust(m : INTEGER) : BOOLEAN
		do
		end

	valid_number_of_nro_of_each_card(m : INTEGER) : BOOLEAN
		do
		end

	valid_number_of_nro_of_each_vp(m : INTEGER) : BOOLEAN
		do
		end

feature -- Status setting

	set_players(new_nr_of_players : INTEGER)
		require
			valid_number_of_players(new_nr_of_players)
		do
		ensure
			players = new_nr_of_players
		end

	set_kingdom_cards(new_nr_of_kingdom_cards : INTEGER)
		require
			valid_number_of_kingdom_cards(new_nr_of_kingdom_cards)
		do
		ensure
			kingdom_cards = new_nr_of_kingdom_cards
		end

	set_piles_to_exhaust(new_nr_of_piles_to_exhaust : INTEGER)
		require
			valid_number_of_piles_to_exhaust(new_nr_of_piles_to_exhaust)
		do
		ensure
			piles_to_exhaust = new_nr_of_piles_to_exhaust
		end

	set_nro_of_each_card(new_nr_of_nro_of_each_card : INTEGER)
		require
			valid_number_of_nro_of_each_card(new_nr_of_nro_of_each_card)
		do
		ensure
			nro_of_each_card = new_nr_of_nro_of_each_card
		end

	set_nro_of_each_vp(new_nr_of_nro_of_each_vp : INTEGER)
		require
			valid_number_of_nro_of_each_vp(new_nr_of_nro_of_each_vp)
		do
		ensure
			nro_of_each_vp = new_nr_of_nro_of_each_vp
		end
end
