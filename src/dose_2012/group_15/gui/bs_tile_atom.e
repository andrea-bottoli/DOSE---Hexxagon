note
	description: "Summary description for {BS_TILE_ATOM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_TILE_ATOM

inherit
	--EV_MODEL_PICTURE
	BS_GFX

create
	make

feature -- Initialization

	make(a_color : INTEGER)
		require
			-- 0 = gray (for empty atom on game field)
			-- 1 = blue
			-- 2 = yellow
			-- 3 = red
			-- 4 = green
			valid_color: a_color >= 0 and a_color <= 4
		do
			create model_picture
--			set_minimum_size (16, 16)
			set_color(a_color)
		end

feature -- Model picture

	get_model_picture : EV_MODEL_PICTURE
		do
			Result := model_picture
		end

	set_pos(x, y : INTEGER)
		do
			model_picture.set_point_position (x, y)
		end


feature {BS_GAME_WINDOW} -- Image changes

	set_color(a_color : INTEGER)
		require
			-- 0 = gray (for empty atom on game field)
			-- 1 = blue
			-- 2 = yellow
			-- 3 = red
			-- 4 = green
			valid_color: a_color >= 0 and a_color <= 4
		local
			l_pix : EV_PIXMAP
		do
			create l_pix
			inspect a_color
			when 0 then
				l_pix.set_with_named_file (get_gfx_file_name("block_gray"))
			when 1 then
				l_pix.set_with_named_file (get_gfx_file_name("block_blue"))
			when 2 then
				l_pix.set_with_named_file (get_gfx_file_name("block_yellow"))
			when 3 then
				l_pix.set_with_named_file (get_gfx_file_name("block_red"))
			when 4 then
				l_pix.set_with_named_file (get_gfx_file_name("block_green"))
			else

			end

			model_picture.set_pixmap (l_pix)
		end

feature {NONE} -- Implementation

	model_picture : EV_MODEL_PICTURE

end
