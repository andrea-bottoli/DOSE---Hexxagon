note
	description: "Represents a player"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_PLAYER

create
	make

feature -- Measurement

	id: INTEGER
			-- Id of the player

	name: STRING
			-- The name of the player.

	position: INTEGER
			-- Actual position of the player

	money: INTEGER
			-- The money of the player.

	jail_cards: INTEGER
			-- Number of the jail cards of the player

	properties: array [INTEGER]
			-- Properties of the player, max 22 elements

feature -- Initialization

	make (new_name: STRING; new_id: INTEGER)
			-- Create a player with the initial state
		require
			valid_name: new_name /= Void and new_name /~ ""
			valid_id: new_id >= 0
		do
		ensure
			valid_position: position = 0
			valid_money: money = 1500
			valid_jail_cards: jail_cards = 0
			valid_properties: properties.count = 0
		end

feature --

	increment_jail_cards

			-- Increment in one the number of jail cards
		require
			valid_old_numb: jail_cards >= 0 and jail_cards < 2
		do
		ensure
			valid_new_numb: jail_cards >= 1 and jail_cards <= 2
		end

	decrement_jail_cards

			-- Decrement in one the number of jail cards
		require
			valid_old_numb: jail_cards >= 1 and jail_cards <= 2
		do
		ensure
			valid_new_numb: jail_cards >= 0 and jail_cards < 2
		end

	increment_money (m: INTEGER)

			-- Increment in m the money of the player
		require
			valid_m: m > 0
		do
		end

	decrement_money (m: INTEGER)

			-- Decrement in m the money of the player
		do
		end

	add_property (p: INTEGER)

			-- Add a property of the player
		require
			valid_old_elements: properties.count >= 0 and properties.count <= 27 and not properties.has (p)
		do
		ensure
			valid_new_elements: properties.count >= 1 and properties.count <= 28 and properties.has (p)
		end

	delete_property (p: INTEGER)

			--Delete a property of a player
		require
			valid_old_elements: properties.count >= 1 and properties.count <= 28 and properties.has (p)
		do
		ensure
			valid_new_elements: properties.count >= 0 and properties.count <= 27 and not properties.has (p)
		end

	increment_position (d: INTEGER)

			--Increment in d of the position
		require
			valid_d: d >= 2 and d <= 12
		do
		end

invariant
	valid_id: id > 0
	valid_name: name /= Void and name /~ ""
	valid_position: position >= 1 and position <= 40
	valid_jail_cards: jail_cards >= 0 and jail_cards <= 2
	valid_properties: properties.count >= 0 and properties.count <= 28

end
