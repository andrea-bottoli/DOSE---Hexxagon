note
	description: "Class that represents a message of number of players"
	author: "MILANO7: Jiang Wu"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_NUMBER_PLAYER
inherit
	G1_MESSAGE

create
	make_players

feature -- Initialization

	make_players (is_request:BOOLEAN)
		do
			l_is_request := is_request
		end

	set_number_players(players:INTEGER)
		do
			number_of_players := players
			l_is_request := FALSE
		end

	get_number_players:INTEGER
		do
			Result := number_of_players
		end

feature {NONE} --Measurent

	l_is_request: BOOLEAN
			-- Request number of player:
			--   TRUE: request
			--   FALSE: reply

	number_of_players: INTEGER
			-- Number of players

end
