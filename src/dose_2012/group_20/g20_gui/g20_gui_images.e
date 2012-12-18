note
	description: "Summary description for {G20_GUI_IMAGES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GUI_IMAGES

inherit

	G20_GUI_CONSTANTS


feature

	default_mouse:EV_POINTER_STYLE
	do
		create Result
	end

	img_pick:EV_PIXMAP


	tile_images:ARRAY[EV_PIXMAP]
	do
		create Result.make_empty
		Result.grow (6)
		Result[1]:=img_turtle
		Result[2]:=img_star
		Result[3]:=img_mushroom
		Result[4]:=img_goomba
		Result[5]:=img_bullet
		Result[6]:=img_box
	end



	img_main_back: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_main_back))
			Result.set_minimum_height(700)
			Result.set_minimum_width(700)
			Result.stretch (700,700)
		end
	img_board_back: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_board_back))
			Result.set_minimum_height(700)
			Result.set_minimum_width(700)
		--	Result.stretch (700,700)
		end

	img_tile1: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_tile1))


		end
	img_tile2: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_tile2))


		end
	img_tile3: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_tile3))


		end
	img_tile_selected: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_tile_selected))


		end
	img_board_default: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_board_back))
		end

	img_dot1: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot1))
		end
	img_dot2: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot2))
		end
	img_dot3: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot3))
		end
	img_dot4: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot4))
		end
	img_dot5: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot5))
		end
	img_dot6: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_dot6))
		end
	img_tile_ground: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_tile_ground))
		end
	img_board_pane: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result

			Result.set_with_named_file (file_system.pathname_to_string (path_board_pane))
			Result.set_minimum_height(528)
			Result.set_minimum_width(700)
		end
	img_board_pane_default: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_board_pane))
			Result.set_minimum_height(528)
			Result.set_minimum_width(700)
		end
	img_satchel_pane: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_satchel_pane))
			Result.set_minimum_height(114)
			Result.set_minimum_width(332)
		end
	img_satchel_pane_default: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_satchel_pane))
			Result.set_minimum_height(114)
			Result.set_minimum_width(332)
		end
	img_score_pane: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_score_pane))
			Result.set_minimum_height(118)
			Result.set_minimum_width(367)
		end
	img_score_pane_default: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_score_pane))
			Result.set_minimum_height(118)
			Result.set_minimum_width(367)
		end

	img_turtle: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_turtle))
		end
	img_star: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_star))
		end
	img_mushroom: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_mushroom))
		end
	img_goomba: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_goomba))
		end
	img_bullet: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_bullet))
		end
	img_box: EV_PIXMAP
			-- returns the "wait" text picture
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (path_box))
		end

	img_trans:EV_PIXEL_BUFFER
		local
			l_pixmap:EV_PIXMAP
			l_pixel:EV_PIXEL_BUFFER_PIXEL
			l_iter:EV_PIXEL_BUFFER_ITERATOR
			i:NATURAL_32
		once
			create Result.make_with_size (61,77)
                        Result.lock
                        l_iter := Result.pixel_iterator

                        from l_iter.start until l_iter.off loop
                                create l_pixel
                                l_iter.item.set_rgba_value (0xFF000001)
                                l_iter.forth
                        end
        end

	img_pick_default: EV_PIXMAP
		once
              create Result.make_with_pixel_buffer (img_trans)
              Result.set_minimum_size (60, 60)



		end
end


