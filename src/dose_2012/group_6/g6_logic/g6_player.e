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

	active: BOOLEAN
			--is the player still playing?

	in_jail: BOOLEAN
			--this prisoner the player?

	name: STRING
			-- The name of the player.

	position: INTEGER
			-- Actual position of the player

	money: INTEGER
			-- The money of the player

	potential_money: INTEGER
			-- how much money does this player would have if sold / mortgaged all their properties? this
			-- value is updated just after each properties modification

	jail_cards: INTEGER
			-- Number of the jail cards of the player

	properties: LINKED_LIST [INTEGER]
			-- Properties of the player, max 22 elements

feature -- Initialization

	make (new_name: STRING; new_id: INTEGER)
			-- Create a player with the initial state
		require
			valid_name: new_name /= Void and new_name /~ ""
			valid_id: new_id >= 0
		do
			name := new_name;
			position := 1;
			money := 1500;
			jail_cards := 0;
		ensure
			valid_position: position = 1
			valid_money: money = 1500
			valid_jail_cards: jail_cards = 0
			valid_properties: properties.count = 0
		end

feature -- Basic Operations

	increment_jail_cards

			-- Increment in one the number of jail cards
		require
			valid_old_numb: jail_cards >= 0 and jail_cards < 2
		do
			jail_cards := jail_cards + 1;
		ensure
			valid_new_numb: jail_cards >= 1 and jail_cards <= 2
		end

	decrement_jail_cards

			-- Decrement in one the number of jail cards
		require
			valid_old_numb: jail_cards >= 1 and jail_cards <= 2
		do
			jail_cards := jail_cards - 1;
		ensure
			valid_new_numb: jail_cards >= 0 and jail_cards < 2
		end

	increment_money (m: INTEGER)

			-- Increment in m the money of the player
		require
			valid_m: m > 0
		do
			money := money + m;
		end

	decrement_money (m: INTEGER)

			-- Decrement in m the money of the player
		require
			valid_m: m > 0
		do
			money := money - m;
		end

	add_property (p: INTEGER)

			-- Add a property of the player
		require
			valid_old_elements: properties.count >= 0 and properties.count <= 27 and not properties.has (p)
		do
			properties.extend (p);
		ensure
			valid_new_elements: properties.count >= 1 and properties.count <= 28 and properties.has (p)
		end

	delete_property (p: INTEGER)

			--Delete a property of a player
		require
			valid_old_elements: properties.count >= 1 and properties.count <= 28 and properties.has (p)
		local
			i: INTEGER
		do
			i := 1;
			properties.go_i_th (i);
			from
			until
				properties.item = p
			loop
				i := i + 1;
				properties.go_i_th (i);
			end
			properties.remove;
		ensure
			valid_new_elements: properties.count >= 0 and properties.count <= 27 and not properties.has (p)
		end

	increment_position (d: INTEGER)

			--Increment in d the position
		require
			valid_d: d >= 2 and d <= 12
		do
			position := position + d;
		end

invariant
	valid_name: name /= Void and name /~ ""
	valid_position: position >= 1 and position <= 40
	valid_jail_cards: jail_cards >= 0 and jail_cards <= 2
	valid_properties: properties.count >= 0 and properties.count <= 28

end
