note
	description: "Summary description for {G10_GUI_PLAYER_INFO}."
	author: "Eleytherios S. Benisis"
	date: "$Date 9/12"
	revision: "$player info class is a group class containing the player name display the score and the number of followers display that a player posses in the game$"

class
	G10_GUI_PLAYER_INFO
inherit
	EV_FIXED
	G10_GAME_CONSTANTS
	undefine
		copy , is_equal, default_create
	end

create
	make

-- attributes
feature {NONE}
	followers : G10_GUI_FOLLOWER
	player : G10_GUI_PLAYER
	score : G10_GUI_SCORE

-- costructors.
feature {ANY}
	make(player_id : INTEGER)
	do
		default_create()
		init_followers()
		init_player()
		init_score()
		if player_id = 1 then
			update_background(pix_game_red_info_panel)
		elseif player_id = 2 then
			update_background(pix_game_blue_info_panel)
		elseif player_id = 3 then
			update_background(pix_game_yellow_info_panel)
		end

		set_minimum_height (player_info_height)
		set_minimum_width (player_info_width)

		--draw_player_info() -- This will paint on top of the previous added pixmaps 3 more pixmaps (points_pix, follower_num__available_pix, userid_pix)
	end

-- mutator methods.
feature {G10_GUI_SCOREBOARD_PANEL}
	init_followers() -- routine initializes the followers.
	do
		create followers.make()
	ensure
		followers_not_void : followers /= void
	end

	init_player() -- routine initializes the player.
	do
		create player.make()
	ensure
		player_not_void : player /= void
	end

	init_score() -- routine initializes the score.
	do
		create score.make()
	ensure
		score_not_void : score /= void
	end

	draw_player_info()
	require
		followers_not_void : followers /= void
		player_not_void : player /= void
		score_not_void : score /= void
	do
		extend (player)
		extend_with_position_and_size (followers, 0, 100, followers.minimum_width, followers.minimum_height)
		extend_with_position_and_size (score, 0, 130, score.minimum_width, score.minimum_height)
	ensure
		player_drawned : current.has (player)
		followers_drawned : current.has(followers)
		score_drawned : current.has (score)
	end

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

	update_background(a_pixmap : EV_PIXMAP) -- routine sets the background of this object to arg pixmap
	require
		arg_pixmap_not_void : a_pixmap /= void
	do
		set_background_pixmap(a_pixmap)
		ensure
			background_changed_to_arg_pixmap: background_pixmap.is_equal (a_pixmap)
	end

	update_background_color() -- routine sets the background color of this object to white
	local
		c : EV_COLOR
	do
		create c.make_with_8_bit_rgb (130, 130, 130)
		set_background_color(c)
	end

-- accesor methods.
feature {G10_GUI_PLAYER_INFO,G10_GUI_GAME_MAIN }
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
