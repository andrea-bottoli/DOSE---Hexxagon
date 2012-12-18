note
	description: "Class that represents a message of building for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_BUILDING

inherit

	G1_MESSAGE

create
	make, make_building

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			id_deed_build := 0
			id_deed_sell := 0
		end

	make_building (a_id_player: INTEGER; a_id_deed_build: INTEGER; a_id_deed_sell: INTEGER)
		require
			valid_id_player: a_id_player > 0
			valid_id: a_id_deed_build >= 0 and a_id_deed_build < 40
			valid_id: a_id_deed_sell >= 0 and a_id_deed_sell < 40
			valid_buy_sell : a_id_deed_build = 0 implies a_id_deed_sell /= 0 or a_id_deed_sell = 0 implies a_id_deed_build /= 0
		do
			id_player := a_id_player
			id_deed_build := a_id_deed_build
			id_deed_sell := a_id_deed_sell
		ensure
			valid_id_player: id_player = a_id_player
			valid_id_deed: id_deed_build = a_id_deed_build
			valid_id_shell: id_deed_sell = a_id_deed_sell
		end

feature --Measurent

	id_player: INTEGER
			-- Id of the player

	id_deed_build: INTEGER
			--Indicates the id where we will buy a house or hotel
			--If the value is zero, it does not buy

	id_deed_sell: INTEGER
			--Indicates the id where we will sell a house or hotel
			--If the value is zero, it does not sell

end
