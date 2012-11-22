note
	description: "Simulates a player of the game bang and his possible, in game, actions."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_PLAYER

create
	make

feature --Atrributes
	Hand: LINKED_LIST[G4_CARDS]
	Allowed_Hand: LINKED_LIST[G4_CARDS]
	Player_Name: STRING

feature --Constructor
	make
	do
	ensure
		Hand.is_empty = True
		Allowed_Hand.is_empty = True
		Player_Name.is_empty = True
	end

feature --Setters and getters

	set_player_name(a_player_name: STRING)
	do
	ensure
		Player_Name.is_empty = False
	end

	get_player_name: STRING
	require
		Player_Name.is_empty = False
	do

	end

	get_player_hand(): LINKED_LIST[G4_CARDS]
	do

	end

feature --Functions

	--Simulates the Player's play action
	play(a_card: G4_CARDS)
	require
		Hand.is_empty = False
		Allowed_Hand.has(a_card) = True
	do
	ensure
		Hand.count = old Hand.count - 1
	end

	--Simulates the Player's discard a card action
	discard(a_card: G4_CARDS)
	require
		Hand.is_empty = False
	do
	ensure
		Hand.count = Hand.count - 1
	end

	--Simulates the Player's draw from a card pile action
	draw(a_card: G4_CARDS)
	do
	ensure
		Hand.count = old Hand.count + 1
	end
end
