note
	description: "Summary description for {RI_GAME_WINDOW}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_GAME_WINDOW

	inherit
--	
		EV_TITLED_WINDOW


	create
		initialize_window

	feature

		toolTipResource : EV_TOOLTIPABLE
		click_interface : RI_CLICK_INTERFACE
		board_view		: RI_BOARD_VIEW
		txt_Chat		: EV_TEXT
		btn_Send_Chat	: EV_BUTTON
		txt_Message		: EV_TEXT
		btn_Card		: EV_BUTTON
		btn_Mission		: EV_BUTTON
		btn_Info		: EV_BUTTON
		txt_Log			: EV_TEXT

		initialize_window	--Initializes the window
		do

		end

		send_chat			--Sends a chat to the NET module
		do

		end

		refresh_chat		--Refreshes the chat
		do

		end

		close_window		--Closes and gracefully disposes of the window
		do

		end


end
