note
	description	: "Strings for the Graphical User Interface"
	author		: "Team Rio Cuarto9"
	date		: "23/11/12"
	revision	: "1.1"

class
	DO_INTERFACE_NAMES

feature -- Access

	Button_ok_item: STRING = "OK"
			-- String for "OK" buttons.

	Button_back_item: STRING = "BACK"

	Button_connect_item: STRING = "CONNECT"

	Menu_file_item: STRING = "&Game"
			-- String for menu "File"

	Menu_file_new_item: STRING = "&New%TCtrl+N"
			-- String for menu "File/New"

	Menu_file_new_online_item: STRING = "&Create new online game%TCtrl+O"
			-- String for menu "File/New Online Game"

	Menu_file_join_game_item: STRING = "&Join online game%TCtrl+J"
			-- String for menu "File/New"

	Menu_file_exit_item: STRING = "E&xit"
			-- String for menu "File/Exit"

	Menu_setting_item: STRING = "&Setting"
		-- String for menu "Setting"

	Menu_setting_set_item: STRING = "&Setting Options"
			-- String for menu "Setting options"

	Menu_help_item: STRING = "&Help"
			-- String for menu "Help"

	Menu_help_about_item: STRING = "&About..."
			-- String for menu "Help/About"

	Menu_rules_item: STRING = "&Rules..."
			-- String for menu "Help/Rules"

	Menu_help_help_item: STRING = "&Help..."
			-- String for menu "Help/Help"

	Files_path: STRING = ".\dose_2012\images\group_17\"
			--String for the relative path of the image

	On_about_message: STRING = "This game was developed by:%NArgentina team:%N%T-Damian Ojeda%N%T-Martin Paulucci%N%T-Alejandro Yaciuk%NBrazil team:%N%T-Netally Castilho%N%T-Tiago Duarte%N%T-Antionio Techio%NGreece team:%N%T-Marios Soundias%N%T-Spyrogiannis Vlachos%N%T-Ilias Zarafidis%N for the DOSE course%NDominion (R)%NVersion 1.0"

	Exit_message: STRING = "Are you sure?"

end -- class INTERFACE_NAMES
