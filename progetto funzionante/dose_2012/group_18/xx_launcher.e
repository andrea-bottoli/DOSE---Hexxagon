note
	description: "Launcher for the Hexxagon main window."
	author: "Cairo2, Crete2, Milano2"
	date: "30/10/2012"
	revision: "1.0"

class
	XX_LAUNCHER

inherit
	LAUNCHER

feature --Attributes

	gui_to_chat: XX_GUI_TO_CHAT_INTERFACE
	chat_to_gui: XX_CHAT_TO_GUI_INTERFACE
	net_to_chat: XX_NET_TO_CHAT_INTERFACE
	chat_to_net: XX_CHAT_TO_NET_INTERFACE
	gui_interface: XX_GUI_INTERFACE
	net_interface: XX_NET_INTERFACE
	gui: XX_GUI
	net: XX_NET
	chat: XX_CHAT

feature -- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		do
		 	io.put_string("Hexxagon coming soon")
		end

end
