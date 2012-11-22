note
	description: "Launcher for the ZOMBIES!!! main window."
	author: "Group7"
	date: "11.11.2011"
	revision: "1.0"

class
	ZB_LAUNCHER

inherit
	LAUNCHER

feature	-- Implementation

	launch (main_ui_window: MAIN_WINDOW)
			-- shows a dummy output
		local
			l_client: ZB_NET_CLIENT
			l_server: ZB_NET_SERVER
		do
			create l_client.make(Void)
			create l_server.make(Void)
			
		 	io.put_string("This is a dummy. No game yet...")
		end

end
