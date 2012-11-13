note
	description: "Summary description for {XX_GUI_INTERFACE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	XX_GUI_INTERFACE

feature{NONE}	--Attributes of the gui that are involved with pre & post conditions

		--There are the EV component that compose the "Game Status"
	label_name_player1: EV_LABEL
	label_name_player2: EV_LABEL
	label_color_player1: EV_LABEL
	label_color_player2: EV_LABEL
	label_score_player1: EV_LABEL
	label_score_player2: EV_LABEL

		--There are the EV component that compose the "Net Status"
	label_ip_player1: EV_LABEL
	label_ip_player2: EV_LABEL
	label_port_player1: EV_LABEL
	label_port_player2: EV_LABEL


feature --Deferred Metods for change the gui view

		--Allow to set the game status in the express field
	set_game_statut(a_player1, a_player2: XX_PLAYER)
		require
			player_are_not_void: a_player1/=Void and a_player2/=Void
		deferred
		end


		--Allow to set the net status in the express field
	set_network_statut(a_net1, a_net2: ANY)
		require
			network_status_not_void: a_net1/=Void and a_net2/=Void
		deferred
		end

		--Allow to set the view of the timer in the gui
	set_timer(a_timer: XX_TIMER)
		require
			timer_not_void: a_timer/=Void
		deferred
		end

		--Allow to set the view of the board in the gui
	set_board(a_board: XX_BOARD)
		require
			board_not_void: a_board/=Void
		deferred
		end

		--Allow to clean the view of the timer in the gui, bringing it back to the default status
	clean_timer()deferred end

end
