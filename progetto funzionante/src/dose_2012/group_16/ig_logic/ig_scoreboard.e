note
	description: "Summary description for {IG_SCOREBOARD}."
	author: "Daiane Hemerich, Lucélia Chipeaux, Renata De Paris"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_SCOREBOARD

create
	make

feature -- Status Setting

	make (a_id_player:IG_PLAYER)
			--Set the player of the Scoreboard
		require
			valid_player: is_player_valid(a_id_player)
		do
			-- TODO
		ensure
			id_player.is_equal(a_id_player)
		end

	add_color_score (color:STRING; points: INTEGER)
			--Add point(s) in the color score
		require
			valid_color: is_color_valid(color) and points >= 0
		do
			-- TODO increase score
		ensure
			-- TODO ensure score was increased
		end

	points_for_color (a_color:STRING): INTEGER
		--Return the number of points for a specific color
		require
			valid_color: is_color_valid(a_color)
		do
			-- Calculate the points for a specific color

		end

feature -- Query
	is_player_valid(a_id_player:IG_PLAYER): BOOLEAN
				--Return if player is valid
		require
			player_not_void: a_id_player /= Void
		do
			-- TODO: check if the player is valid
		end

	is_color_valid(color:STRING): BOOLEAN
				--Return if color is valid
		do
			-- TODO: check if the color is valid
		end


feature -- Access

	id_player: IG_PLAYER
		-- Returns the Id of the player
	player_score: ARRAY2[INTEGER]
		-- Returns the Score of player accordding to the colors

invariant
	--Fbesser
	--player_score must always be >=0 for every color
end
