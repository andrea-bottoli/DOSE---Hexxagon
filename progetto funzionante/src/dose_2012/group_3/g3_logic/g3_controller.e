note
	description: "Summary description for {G3_CONTROLLER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

class
	G3_CONTROLLER

feature

	register_players (message : G3_MESSAGE) : G3_MESSAGE
			-- this feature shall be called by net on a new connection
		require
			identified_receiver: message.receiver_id/=void
		do

		end

	receive (message : G3_MESSAGE)
			-- this feature shall be called by net when a message from client arrives
		do

		end

	set_tichu_window (game_window: G3_ABSTRACT_OBSERVER)
			-- set window reference to this controller and suscribe the model to the window.
		require
			game_window_void: game_window /= Void
		do

		ensure
			window_linked: is_window_linked
			model_window_suscribed: is_model_window_suscribed
		end

	set_tichu_model (first_model: G3_ABSTRACT_SUBJECT)
		require
			model_void: first_model /= void
		do

		end

	on_play(combination: G3_COMBINATION)
		-- play the cards if the parameter is a valid combination.
		require
			combination_void: combination/=void
		do

		end

	on_request_bomba()
		--set the special bomb request if it is possible
		do

		end

	on_say_tichu()
		--set the special tichu move only if it is call before the firs move
		do

		end

	on_say_grand_tichu()
		--set the special tichu move only if it is call before the ninth card is played.
		do

		end

	on_pass()
		-- change the player turn
		do

		ensure
			different_turn: old model.turn /= model.turn

		end


feature --Status report

	is_window_linked: BOOLEAN
		--returns if window is linked  with this controller
		do

		end
	is_model_window_suscribed: BOOLEAN
		-- returns if the model is observed by tichu window
		do

		end


feature{NONE} --internal structure

	model : G3_MODEL

	net : G3_INETWORK

	tichu_window: G3_GAME_WINDOW

	internal_on_play(combination: G3_COMBINATION; id:G3_PLAYER_ID)
		do

		end

	internal_on_request_bomba(id:G3_PLAYER_ID)
		do

		end

	internal_on_say_tichu(id:G3_PLAYER_ID)
		do

		end

	internal_on_say_grand_tichu(id:G3_PLAYER_ID)
		do

		end

	internal_on_pass(id:G3_PLAYER_ID)
		do

		end



end
