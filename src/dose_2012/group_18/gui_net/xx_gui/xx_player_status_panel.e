note
	description: "Summary description for {XX_PLAYER_STATUS_PANEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_PLAYER_STATUS_PANEL

inherit
	EV_FRAME

	XX_GUI_CONSTANTS
	undefine
		default_create,
		copy,
		is_equal
	end

create
	make_panel

feature --Constructor

	make_panel
	do
		default_create
		create_elements
		build_panel
	end

feature{NONE} --Attributes

	content_panel: EV_VERTICAL_BOX

	--components that compose the "Game Status"
	name_player: STRING
	color_player: STRING
	score_player: EV_LABEL
	score_value: INTEGER

	pixmap_color_player: EV_PIXMAP

	--components that compose the "Net Status"
	ip_player: EV_LABEL
	port_player: EV_LABEL


feature{NONE} --Implementation

	--Creates the elements
	create_elements
	do
		name_player:=""
		color_player:=""
		create content_panel
		create pixmap_color_player.make_with_size (80, 70)
		create score_player.make_with_text ("Score: 0")
		create ip_player
		create port_player
	end

	--Builds the panel
	build_panel
	do
		pixmap_color_player.set_with_named_file (file_system.pathname_to_string (img_hexagonal_blank))

		set_elements_size
		set_elements_style
		add_elements

		content_panel.disable_homogeneous
		content_panel.disable_item_expand (pixmap_color_player)
		content_panel.disable_item_expand (score_player)
		content_panel.disable_item_expand (ip_player)
		content_panel.disable_item_expand (port_player)

		extend (content_panel)
	end

	--add elements to the panel
	add_elements
	do
		content_panel.extend (pixmap_color_player)
		content_panel.extend (score_player)
		content_panel.extend (ip_player)
		content_panel.extend (port_player)
	end

	--Sets sizes of elements
	set_elements_size
	do
		pixmap_color_player.set_minimum_size (80, 70)
		score_player.set_minimum_height (25)
		ip_player.set_minimum_height (15)
		port_player.set_minimum_height (15)
	end

	--Sets styles of elements
	set_elements_style
	local
		l_font: EV_FONT
		l_color: EV_COLOR
	do
		create l_font
		create l_color

		l_color.set_rgb_with_8_bit (0, 0, 255)
		l_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
		l_font.set_weight ({EV_FONT_CONSTANTS}.Weight_black)
		l_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
		l_font.preferred_families.extend ("Arial Black")
		l_font.set_height_in_points (12)
		score_player.set_font (l_font)
		score_player.set_foreground_color (l_color)
		score_player.align_text_center

		l_color.set_rgb_with_8_bit (0, 0, 255)
		ip_player.set_foreground_color (l_color)
		ip_player.align_text_center

		l_color.set_rgb_with_8_bit (0, 0, 255)
		port_player.set_foreground_color (l_color)
		port_player.align_text_center
	end

feature {XX_GAME_PANEL} --Setter Methods

	--Sets the name of player
	set_name_player(a_name_p: STRING)
	require
		name_not_void: a_name_p/=Void
	do
		name_player:=a_name_p
		set_text (name_player)
	ensure
		name_is_setted: name_player.is_equal (a_name_p)
	end

	--Sets the color of player
	set_color_player(a_color_p: STRING)
	require
		color_not_void: a_color_p/=Void
	do
		color_player:=a_color_p
		pixmap_color_player.draw_pixmap (0, 0, load_color_pixmap (a_color_p))
	ensure
		color_is_setted: color_player.is_equal (a_color_p)
	end

	--Sets the score of player
	set_score_player(a_score_p: INTEGER)
	require
		score_not_negative: a_score_p>=0
	local
		l_s: STRING
	do
		score_value:=a_score_p
		l_s:="Score: "
		l_s.append_integer (score_value)
		score_player.set_text (l_s)
	ensure
		score_is_setted: score_value=a_score_p
	end

	--Sets the ip of player
	set_ip_player(a_ip_p: STRING; a_port_p: INTEGER)
	require
		ip_not_void: a_ip_p/=Void
		port_not_negative: a_port_p>=0
	local
		l_s: STRING
	do
		l_s:="ip: "
		l_s.append (a_ip_p)
		ip_player.set_text (l_s)
		l_s:="port: "
		l_s.append_integer (a_port_p)
		port_player.set_text (l_s)
	end

feature{XX_GAME_PANEL} --Clean Method

	clean_player_status
	do
		name_player:=""
		color_player:=""
		pixmap_color_player:=pixmap_color_blank
		score_player.set_text ("Score: 0")
		ip_player.remove_text
	end


feature{NONE} --Method for loading pixmap

	load_color_pixmap(a_color_player: STRING): EV_PIXMAP
	do
		if(a_color_player.is_equal (string_color_ruby))then
			Result:=pixmap_color_ruby
		elseif (a_color_player.is_equal (string_color_pearl)) then
			Result:=pixmap_color_pearl
		end
	end


	--Return the pixmap hexagonal blank
	pixmap_color_blank:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_blank))
		end


	--Returns the pixmap hexagonal blank
	pixmap_color_ruby:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_ruby))
		end

	--Returns the pixmap hexagonal pearl
	pixmap_color_pearl:	EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_hexagonal_pearl))
		end


feature{XX_GAME_PANEL} --Methods for checking the contracts
	--Checks if the game status
	is_player_status_empty: BOOLEAN
	do
		Result:= is_name_empty and is_color_empty and is_score_empty
	end

	--Checks if the network status
	is_network_status_empty: BOOLEAN
	do
		Result:= is_ip_empty and is_port_empty
	end

feature{NONE}
	--Checks if the name is setted
	is_name_empty: BOOLEAN
	do
		Result:=name_player.is_empty
	end

	--Checks if the color is setted
	is_color_empty: BOOLEAN
	do
		Result:=color_player.is_empty
	end

	--Checks if the score is setted
	is_score_empty: BOOLEAN
	do
		Result:=score_player.text.is_empty
	end

	--Checks if the ip is setted
	is_ip_empty: BOOLEAN
	do
		Result:=ip_player.text.is_empty
	end

	--Checks if the port is setted
	is_port_empty: BOOLEAN
	do
		Result:=port_player.text.is_empty
	end
end
