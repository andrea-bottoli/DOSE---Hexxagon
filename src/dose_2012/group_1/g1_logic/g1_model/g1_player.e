note
	description: "Class representing the player."
	author: "Group 1 - Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_PLAYER

create
	make

feature --Attributes

	id_player: INTEGER

	name: STRING

	money: INTEGER

	position: INTEGER

	token: G1_TOKEN

	jail_cards: INTEGER

	number_of_utilities: INTEGER

	number_of_railways: INTEGER

	properties: LINKED_LIST [G1_DEED]

feature -- Initialization

	make (player_id: INTEGER; player_name: STRING)
			-- Create a new player with id = player_id and name = player_name
		require
			valid_id: player_id > 0
			valid_name: player_name /= Void
		do
			id_player := player_id
			create name.make_from_string (player_name) -- Name of the player
			money := 1500 -- Money initial of the player
			jail_cards := 0 -- Initial value of the jail cards
			number_of_utilities := 0
			number_of_railways := 0
			create properties.make
		end

feature -- Operations

	get_id_player: INTEGER
			-- Return the id of the player
		do
			Result := id_player
		end

	set_id_player (player_id: INTEGER)
			-- Set the id of the player
		require
			valid_id: player_id > 0
		do
			id_player := player_id
		ensure
			valid_set: id_player > 0 and id_player = player_id
		end

	increment_jail_cards
			-- Increment the number of the jails
		require
			valid_cards: jail_cards >= 0 and jail_cards < 2
		do
			jail_cards := jail_cards + 1
		ensure
			valid_cards: jail_cards >= 1 and jail_cards <= 2
		end

	decrement_jail_cards
			-- Decrement the number of the jails
		require
			valid_cards: jail_cards >= 1 and jail_cards <= 2
		do
			if jail_cards > 0 then
				jail_cards := jail_cards - 1
			end
		ensure
			valid_cards: jail_cards >= 0 and jail_cards < 2
		end

	increment_money (a_money: INTEGER)
			-- Increment the value ef the money in mon units
		require
			valid_money: a_money > 0
		do
			money := money + a_money
		ensure
			valid_money: money > 0 and money = (old money + a_money)
		end

	decrement_money (a_money: INTEGER)
			-- Decrement the value of the money in mon units
		require
			valid_money: a_money > 0
		do
			if money >= a_money then
				money := money - a_money
			end
		ensure
			valid_money: (money > 0) and (money = (old money - a_money))
		end

	increment_number_utilities ()
			-- Increases the number of utilities in 1
		do
			number_of_utilities := number_of_utilities + 1
		ensure
			valid_sum: number_of_utilities = old number_of_utilities + 1
		end

	decrement_number_utilities ()
			-- Decreases the number of utilities in 1
		require
			valid_utility: number_of_utilities > 0
		do
			number_of_utilities := number_of_utilities - 1
		ensure
			valid_number_utility: (number_of_utilities = (old number_of_utilities - 1)) and (number_of_utilities > 0)
		end

	increment_number_railways ()
			-- Increases the number of railways in 1
		do
			number_of_railways := number_of_railways + 1
		ensure
			valid_number_railways: (number_of_railways = (old number_of_railways + 1)) and (number_of_railways > 0)
		end

	decrement_number_railways ()
			-- Decreases the number of railways in 1
		require
			valid_railways: number_of_railways > 0
		do
			number_of_railways := number_of_railways - 1
		ensure
			valid_number_railways: (number_of_railways = (old number_of_railways - 1)) and (number_of_railways > 0)
		end

	add_property (a_property: G1_DEED)
			-- Add a property of the player
		require
			valid_properties: properties.count >= 0 and properties.count <= 27 -- and not properties.has (a_property)
		do
			properties.extend (a_property);
		ensure
			valid_new_properties: properties.count >= 1 and properties.count <= 28 and properties.has (a_property)
		end

	delete_property (a_property: G1_DEED)
			--Delete a property of a player
		require
			valid_properties: properties.count >= 1 and properties.count <= 28 and properties.has (a_property)
		do
			properties.prune (a_property)
		ensure
			valid_new_properties: properties.count >= 0 and properties.count <= 27 and not properties.has (a_property)
		end

	set_position (a_position: INTEGER)
		require
			valid_position: a_position > 0 and a_position < 7
		do
			position := a_position
		ensure
			position: position = a_position
		end

	get_name: STRING
		do
			Result := name
		end

	set_name (a_name: STRING)
		require
			valid_a_name: a_name /= Void
		do
			name := a_name
		ensure
			valid_name: name = a_name
		end

	set_token (a_token: G1_TOKEN)
		require
			valid_a_token: a_token /= Void
		do
			token := a_token
		ensure
			valid_token: token = a_token
		end

invariant
	valid_id: id_player > 0
	valid_money: money >= 0
	valid_jails: jail_cards >= 0 and jail_cards <= 2
	valid_properties: properties.count >= 0 and properties.count <= 28

end
