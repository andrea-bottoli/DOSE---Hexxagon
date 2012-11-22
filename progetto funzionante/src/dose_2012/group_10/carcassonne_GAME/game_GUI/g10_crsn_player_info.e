note
	description: "Summary description for {G10_CRSN_PLAYER_INFO}."
	author: "Eleytherios S. Benisis"
	date: "$Date 14/11"
	revision: "$Revision$"

class
	G10_CRSN_PLAYER_INFO
inherit
	EV_HORIZONTAL_BOX

create
	make

-- attributes
feature {NONE}
	followers : G10_CRSN_FOLLOWER
	player : G10_CRSN_PLAYER
	score : G10_CRSN_SCORE

-- costructors.
feature {ANY}
	make()
	do
	end

-- mutator methods.
feature {G10_CRSN_SCOREBOARD_PANEL}
	update_follower_number(num : INTEGER) -- routine updates the number of followers of this object
	require
		followers_number_is_valid : num >= 0
		followers_obj_valid : followers /= void
	do
		ensure
			followers_obj_valid : followers /= void
			valid_mutation : old num = followers.get_follower_number
	end

	update_score(num : INTEGER) -- routine updates the score of this object's score attribute
	require
		score_number_is_valid : num >= 0
		score_obj_valid : followers /= void
	do
		ensure
			score_obj_valid : followers /= void
			valid_mutation : old num = score.get_score_number_display
	end

-- accesor methods.
feature {G10_CRSN_PLAYER_INFO,G10_CRSN_GAME_MAIN }
	get_follower_number() : INTEGER -- routine returns the follower number of this object's attribute.
	do
		ensure
			object_not_mutated : followers = old followers and followers.get_follower_number = old followers.get_follower_number and followers /= void
	end

	get_player_name() : STRING -- routine returns the name of the player object's attribute.
	do
		ensure
			object_not_mutated : player = old player and player.get_player_name_display = old player.get_player_name_display and player /= void
	end

	get_score() : INTEGER -- routine returns the score of the score attribute of this object.
	do
		ensure
			object_not_mutated : score = old score and score.get_score_number_display = old score.get_score_number_display and score /= void
	end

-- class invariants
invariant
	valid_attr : score /= void and player /= void and followers /= void
end
