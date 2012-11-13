note
	description: "A description for the settings of the game to be played."
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_GAME_SETTINGS

feature -- Status Setting

	set_host_address (a_host_address: STRING)
			-- Set the address for hosting the game to `a_host_address'.
		require
			valid_address: is_address_valid (a_host_address)
		do
			-- TODO
		ensure
			address_set: a_host_address.is_equal (host_address)
		end

	set_user_name (a_user_name: STRING)
			-- Set the name of the current user to `a_user_name'.
		require
			user_name_not_empty: a_user_name /= Void and then not a_user_name.is_empty
		do
			-- TODO
		ensure
			user_name_set: a_user_name.is_equal (user_name)
		end

	set_total_players (a_players_count: INTEGER)
			-- Set the initial number of total players to `a_players_count'.
		require
			count_within_bounds: a_players_count >= 2 and a_players_count <= 4
			human_more_than_computer_players: a_players_count > computer_players
		do
			-- TODO
		ensure
			players_count_set: total_players = a_players_count
		end

	set_computer_players (a_computer_players_count: INTEGER)
			-- Set the initial number of computer players to `a_computer_players_count'.
		require
			count_within_bounds: a_computer_players_count >= 0 and a_computer_players_count <= 3
			computers_less_than_human_players: a_computer_players_count < total_players
		do
			-- TODO
		ensure
			computers_count_set: computer_players = a_computer_players_count
		end

	set_computer_level (a_level: INTEGER)
			-- Set the level of all computer players to `a_level'.
		require
			-- TODO: define levels as constants throughout the game
			level_within_bounds: a_level > 0 and a_level < 3
		do
			-- TODO
		ensure
			level_set: computer_level = a_level
		end


feature -- Query

	is_address_valid (a_host_address: STRING): BOOLEAN
			-- Return whether `a_host_address' has a valid format
			-- A valid address is a string with the following format: xxx.xxx.xxx.xxx:yyyy,
			-- where x and y are possibly different arbitrary integers
		require
			address_not_void: a_host_address /= Void and then not a_host_address.is_empty
		do
			-- TODO: check the address format
		end

feature -- Access

	host_address: STRING
		-- The machine's address on which the game is played.

	user_name: STRING
		-- The name of the current user.

	total_players: INTEGER
		-- The total number of initial players for the game.

	computer_players: INTEGER
		-- The total number of computer players for the game.

	computer_level: INTEGER
		-- The difficulty level of the computer players.

end
