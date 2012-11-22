note
	description: "Class representing the player."
	author: "Group 1 - Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_PLAYER

create
	make

feature --Attributes

	id_player: INTEGER

	money: INTEGER

	jail_cards: INTEGER

	properties: ARRAY [INTEGER]

feature -- Initialization

	make (player_id: INTEGER)
			-- Create a new player with player_id
		require
			valid_id: player_id > 0
		do
		ensure
			valid_money: money = 1500
			valid_jail_cards: jail_cards = 0
			valid_properties: properties.count = 0
		end

feature -- Operations

	get_id_player: INTEGER
			-- Return the id of the player
		do
		end

	set_id_player (player_id: INTEGER)
			-- Set the id of the player
		require
			valid_id: player_id > 0
		do
		ensure
			valid_set: id_player > 0 and id_player = player_id
		end

	increment_jail_cards
			-- Increment the number of the jails
		require
			valid_cards: jail_cards >= 0 and jail_cards < 2
		do
		ensure
			valid_cards: jail_cards >= 1 and jail_cards <= 2
		end

	decrement_jail_cards
			-- Decrement the number of the jails
		require
			valid_cards: jail_cards >= 1 and jail_cards <= 2
		do
		ensure
			valid_cards: jail_cards >= 0 and jail_cards < 2
		end

	increment_money (mon: INTEGER)
			-- Increment the value ef the money in mon units
		require
			valid_money: mon > 0
		do
		ensure
			valid_money: money > 0 and money = (money + mon)
		end

	decrement_money (mon: INTEGER)
			-- Decrement the value of the money in mon units
		require
			valid_money: mon > 0
		do
		ensure
			valid_money: money > 0 and money = (money - mon)
		end

	add_property (prop: INTEGER)

			-- Add a property of the player
		require
			valid_properties: properties.count >= 0 and properties.count <= 27 and not properties.has (prop)
		do
		ensure
			valid_new_properties: properties.count >= 1 and properties.count <= 28 and properties.has (prop)
		end

	delete_property (prop: INTEGER)

			--Delete a property of a player
		require
			valid_properties: properties.count >= 1 and properties.count <= 28 and properties.has (prop)
		do
		ensure
			valid_new_properties: properties.count >= 0 and properties.count <= 27 and not properties.has (prop)
		end

invariant
	valid_id: id_player > 0
	valid_money: money >= 0
	valid_jails: jail_cards >= 0 and jail_cards <= 2
	valid_properties: properties.count >= 0 and properties.count <= 28

end
