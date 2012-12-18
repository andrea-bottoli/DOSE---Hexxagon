note
	description: "Summary description for {CP_BOARD_BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_BOARD_BUTTON

inherit
	EV_MODEL_MOVE_HANDLE
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end
create
	make_with_image

feature {NONE} -- Implementation

	make_with_image (btn_img: EV_PIXMAP;caller:CP_BOARD_VIEW)
		do
			default_create


			create btn_image.make_with_pixmap (btn_img)

			create normal
			create hover

			normal.set_with_named_file (file_system.pathname_to_string(board_btn_empty))
			hover.set_with_named_file (file_system.pathname_to_string (board_btn_hover))
			current.disable_moving
			extend (btn_image)
			btn_image.set_point_position (0, 0)
			btn_image.pointer_enter_actions.extend (agent event_on_enter)
			btn_image.pointer_leave_actions.extend (agent event_on_leave)
			btn_image.pointer_button_press_actions.extend(agent event_on_click(?,?,?,?,?,?,?,?))
			enable_events_sended_to_group
			insect_on := Void
			board_caller := caller
		end


feature {NONE} -- Event Features

	event_on_enter
	do
		btn_image.set_pixmap (hover)
	end

	event_on_leave
	do
		btn_image.set_pixmap (normal)
	end

	event_on_click(a, b, cf: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
	do
		if(board_caller.game_view_caller.selected_insect/=Void)then
			if(insect_on = Void)then
					if(not (board_caller.game_view_caller.selected_insect.is_equal ("")))then
						set_insect_on(board_caller.game_view_caller.selected_insect.to_string_8,"black") -- to do
						board_caller.game_view_caller.set_selected ("")
	 
					end
			else
				board_caller.game_view_caller.from_board.set_item (TRUE)
				board_caller.game_view_caller.set_selected (insect_on)

			end
		end
	end



feature   -- Change images in the event of placing an insect

	set_insect_on(insect,color:STRING)
			-- Set insect image on button
	do
			create insect_on.make_from_string (insect)
			if(color.is_equal ("black"))then
				if(insect.is_equal ("CP_SOLDIER_ANTS") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_ant_normal))
				elseif(insect.is_equal ("CP_QUEEN_BEE") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_bee_normal))
				elseif(insect.is_equal ("CP_SPIDER") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_spider_normal))
				elseif(insect.is_equal ("CP_BEETLES") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_beetles_normal))
				elseif(insect.is_equal ("CP_GASSHOPPER"))then
					normal.set_with_named_file (file_system.pathname_to_string (black_grasshopper_normal))
				end
			else
				if(insect.is_equal ("CP_SOLDIER_ANTS") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_ant_normal))
				elseif(insect.is_equal ("CP_QUEEN_BEE") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_bee_normal))
				elseif(insect.is_equal ("CP_SPIDER") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_spider_normal))
				elseif(insect.is_equal ("CP_BEETLES") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_beetles_normal))
				elseif(insect.is_equal ("CP_GASSHOPPER"))then
					normal.set_with_named_file (file_system.pathname_to_string (white_grasshopper_normal))
				end
			end
		btn_image.set_pixmap (normal)
	end


feature {NONE} -- Attributes

board_caller:CP_BOARD_VIEW
normal: EV_PIXMAP
hover: EV_PIXMAP
insect_on: STRING
btn_image: EV_MODEL_PICTURE
btn_normal_image: EV_PIXMAP
btn_hover_image:EV_PIXMAP
btn_click_image:EV_PIXMAP

end
