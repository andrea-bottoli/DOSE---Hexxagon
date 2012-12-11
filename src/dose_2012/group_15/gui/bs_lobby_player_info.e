note
	description: "Summary description for {BS_LOBBY_PLAYER_INFO}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BS_LOBBY_PLAYER_INFO

inherit

	EV_TITLED_WINDOW
	BS_GUI_COLORS
	BS_GFX
		undefine
			copy,
			default_create
		end

create
	make_with_info

feature {NONE} -- Initialization

	make_with_info(a_player_type : INTEGER; a_name, a_machine_info : STRING)
		require
			name_not_void_or_empty_or_too_long : a_name /= Void and not a_name.is_empty -- and a_name.count <= 15
			-- not want to check also name is not currently in list of previously defined players but not sure how to do this
			valid_player_type: a_player_type >= 0 and a_player_type <= 3
		do
			create con_main
			--create btn_rem_player.make_with_text_and_action ("Rem ->", agent rem_player)
			--con_main.extend_with_position_and_size(btn_rem_player, 320, 90, 60, 30)

			create pix_player_type
			inspect a_player_type
			when 0 then
				pix_player_type.set_with_named_file (get_gfx_file_name("human_player_50x50"))
			when 1 then
					pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_easy_50x50"))
			when 2 then
					pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_medium_50x50"))
			when 3 then
					pix_player_type.set_with_named_file (get_gfx_file_name("ai_player_hard_50x50"))
			else
				-- Nothing.
			end
			create btn_player_type
			btn_player_type.set_pixmap (pix_player_type)

			create lbl_player_name.make_with_text (a_name)
			lbl_player_name.align_text_vertical_center
			lbl_player_name.align_text_left

			if a_machine_info /= Void then
				create lbl_machine_info.make_with_text (a_machine_info)
			else
				create lbl_machine_info
			end

			lbl_machine_info.align_text_vertical_center
			lbl_machine_info.align_text_left

			con_main.set_minimum_size(160, 50)
			con_main.set_background_color (col_white)
			btn_player_type.select_actions.extend (agent player_selected)
			con_main.extend_with_position_and_size(btn_player_type, 0, 0, 50, 50)
--			con_main.extend_with_position_and_size(pix_player_type, 0, 0, 50, 50)
			con_main.extend_with_position_and_size (lbl_player_name, 55, 0, 55, 50)
			con_main.extend_with_position_and_size (lbl_machine_info, 110, 0, 50, 50)
		end

feature {BS_LOBBY_WINDOW} -- Interface for Lobby Window

	get_container : EV_FIXED
		do
			Result := con_main
		end

	player_selected
		local
			question_dialog: EV_CONFIRMATION_DIALOG
		do
	-- want to do a QA here but dont seem to have current :(

		end


feature {NONE} -- Implementation

	-- Controls
	pix_player_type : EV_PIXMAP
	lbl_player_name : EV_LABEL
	lbl_machine_info : EV_LABEL
	con_main : EV_FIXED
	btn_player_type : EV_BUTTON
	--btn_rem_player : EV_BUTTON

end
