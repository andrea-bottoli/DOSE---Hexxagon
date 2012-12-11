note
	description: "Summary description for {CP_BAG_BUTTON}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_BAG_BUTTON

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make_bag_button

feature {NONE} -- Implementation

	make_bag_button(insect:CP_INSECT;color:STRING;caller:CP_PLAYER_BAG)
		do
			default_create
			create normal.default_create
			if(color.is_equal ("black"))then
				if(insect.generator.is_equal ("CP_SOLDIER_ANTS") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_ant_normal_big))
				elseif(insect.generator.is_equal ("CP_QUEEN_BEE") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_bee_normal_big))
				elseif(insect.generator.is_equal ("CP_SPIDER") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_spider_normal_big))
				elseif(insect.generator.is_equal ("CP_BEETLES") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (black_beetles_normal_big))
				else
					normal.set_with_named_file (file_system.pathname_to_string (black_grasshopper_normal_big))
				end
			else
				if(insect.generator.is_equal ("CP_SOLDIER_ANTS") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_ant_normal_big))
				elseif(insect.generator.is_equal ("CP_QUEEN_BEE") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_bee_normal_big))
				elseif(insect.generator.is_equal ("CP_SPIDER") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_spider_normal_big))
				elseif(insect.generator.is_equal ("CP_BEETLES") = TRUE)then
					normal.set_with_named_file (file_system.pathname_to_string (white_beetles_normal_big))
				else
					normal.set_with_named_file (file_system.pathname_to_string (white_grasshopper_normal_big))
				end
			end
			current.pointer_button_release_actions.extend (agent event_on_click(?,?,?,?,?,?,?,?))
			current.set_background_pixmap (normal)

			insect_on := insect
			bag_caller := caller
		end


feature {NONE} -- Event Features

	event_on_click(a, b, cf: INTEGER_32; d, e, f: REAL_64; g, h: INTEGER_32)
	do
 		bag_caller.caller.set_selected (insect_on.generator.as_string_8)
 		bag_caller.caller.from_board.set_item (FALSE)
	end




feature {NONE} -- Attributes

bag_caller: CP_PLAYER_BAG
normal: EV_PIXMAP
hover: EV_PIXMAP
insect_on: CP_INSECT
btn_image: EV_MODEL_PICTURE
btn_normal_image: EV_PIXMAP
btn_hover_image:EV_PIXMAP
btn_click_image:EV_PIXMAP


end
