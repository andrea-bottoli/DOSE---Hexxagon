note
	description: "Constants of the net."
	author: "Team Milano2"
	date: "05-12-2012"
	revision: "0.3"

class
	XX_NET_CONSTANTS

feature --Constants of the xx_net

	--Command "clean_game_window"
	command_clean_game_windo: STRING = "clean_game_window@"

	--Command "switch_panel_menu_to_game"
	command_switch_panel_menu_to_game: STRING = "command_switch_panel_menu_to_game@"

	--Command "switch_panel_game_to_menu"
	command_switch_panel_game_to_menu: STRING = "command_switch_panel_game_to_menu@"

	--Command "chat_enable"
	command_chat_enable: STRING = "chat_enable@"

	--Command "victory"
	command_victory: STRING = "victory@"

	--Command "defeat"
	command_defeat: STRING = "defeat@"

	--Command "draw"
	command_draw: STRING = "draw@"

	--Command "chat_message"
	command_chat_message: STRING = "chat_message@"

	--Command "request_name_player"
	command_request_name_player: STRING = "request_name_player@"

	--Command "name_player"
	command_name_player: STRING = "name_player@"

	--Command "board_sensitive"
	command_board_sensitive: STRING = "board_sensitive@"
end
