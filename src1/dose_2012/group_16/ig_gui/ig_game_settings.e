note
	description: "A description for the settings of the game to be played."
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_GAME_SETTINGS

inherit
	ANY redefine default_create end

feature {NONE} -- Initialization

	default_create
		do
			Precursor
			create host_address.make_empty
			create user_name.make_empty
		end

feature -- Status Setting

	set_host_address (a_host_address: STRING)
			-- Set the address for hosting the game to `a_host_address'.
		require
			valid_address: is_address_valid (a_host_address)
		do
			host_address.copy (a_host_address)
		ensure
			address_set: a_host_address.is_equal (host_address)
		end

	set_user_name (a_user_name: STRING)
			-- Set the name of the current user to `a_user_name'.
		require
			user_name_not_empty: a_user_name /= Void and then not a_user_name.is_empty
		do
			user_name.copy (a_user_name)
		ensure
			user_name_set: a_user_name.is_equal (user_name)
		end

	set_total_players (a_players_count: INTEGER)
			-- Set the initial number of total players to `a_players_count'.
		require
			count_within_bounds: a_players_count >= 2 and a_players_count <= 4
			human_more_than_computer_players: a_players_count > computer_players
		do
			total_players := a_players_count
		ensure
			players_count_set: total_players = a_players_count
		end

	set_computer_players (a_computer_players_count: INTEGER)
			-- Set the initial number of computer players to `a_computer_players_count'.
		require
			count_within_bounds: a_computer_players_count >= 0 and a_computer_players_count <= 3
			computers_less_than_human_players: a_computer_players_count < total_players
		do
			computer_players := a_computer_players_count
		ensure
			computers_count_set: computer_players = a_computer_players_count
		end

	set_computer_level (a_level: INTEGER)
			-- Set the level of all computer players to `a_level'.
		require
			-- TODO: define levels as constants throughout the game.
			level_within_bounds: a_level > 0 and a_level <= 3
		do
			computer_level := a_level
		ensure
			level_set: computer_level = a_level
		end


feature -- Query

	is_address_valid (a_host_address: STRING): BOOLEAN
			-- Return whether `a_host_address' has a valid format
			-- A valid address is a string with the following format: xxx.xxx.xxx.xxx,
			-- where xs are possibly different arbitrary digits.
		local
			l_not_empty: BOOLEAN
			l_regexp: RX_PCRE_MATCHER
		do
			l_not_empty := a_host_address /= Void and then not a_host_address.is_empty
			if l_not_empty then
					-- Does the address match the regular expression?
				create l_regexp.make
				l_regexp.compile ("^(?:\d{1,3}\.){3}\d{1,3}$")
				l_regexp.match (a_host_address)
				Result := l_regexp.has_matched
			else
				Result := False
			end
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
