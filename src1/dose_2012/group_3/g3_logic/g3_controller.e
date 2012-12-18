note
	description: "Summary description for {G3_CONTROLLER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

class
	G3_CONTROLLER

create
	make,make_with_model

feature{NONE} --constructors

	make
		local
			defaul_model : G3_MODEL
		do
			create defaul_model.make
			make_with_model(defaul_model)
		end

	make_with_model(first_model : G3_MODEL)
		require
			model_void: first_model /= void
		local
			defaul_net : G3_NETWORK
		do
			model := first_model
			create defaul_net.make (false)
			net.set_controller (current)
			net := defaul_net

		end

feature{G3_START_GAME} -- features for initialize and setting

	set_tichu_game_window (game_window : G3_GAME_WINDOW)
		require
			not_void: game_window /= void
		do
			window := game_window
			model.subscribe (window)
		end

	set_tichu_model (first_model: G3_MODEL)
		require
			model_void: first_model /= void
		do
			model := first_model
		end

feature{G3_GAME_WINDOW} -- features for establish a connection

	run_in_server_mode (player_name: STRING)
			-- set this controller on server mode
		require
			valid_name : player_name.count > 0
		local
			new_player_id : G3_PLAYER_ID
		do
			-- start running net on server mode and wait connections
			create model.make
			create I_am.make
			create new_player_id.make
			new_player_id := new_player_id.get_server_id
			I_am.set_id (new_player_id)
			I_am.set_name (player_name)
			model.add_player (I_am)
			is_on_server_mode := true
			net.run_server_mode
			-- update window
			model.update
		ensure
			server_mode: is_on_server_mode
		end

	connect_to_game (server_ip : STRING; player_name : STRING )
			-- set this controller on client mode and try connect to server in server_ip address
		require
			is_valid_ip (server_ip) and player_name /= void and player_name.count > 0
		local
			connect_message : G3_MESSAGE
			new_player_id : G3_PLAYER_ID
		do
			-- make a message for connect
			create new_player_id.make
			create connect_message.make_with_parameters (new_player_id.get_server_id, new_player_id)
			connect_message.set_optional (player_name)
			connect_message := net.connect (server_ip, connect_message)
			new_player_id := connect_message.receiver_id
			if  new_player_id.is_register then
				model := connect_message.model
				I_am := model.get_player (new_player_id)
				-- update window
				model.update
			else
				-- announce a refused
				model.set_error_message("Connection refused by server")
				model.update
			end

		end


feature{G3_INETWORK,EQA_TEST_SET} -- features for establish a connection and receive comunication

	register_players (message : G3_MESSAGE) : G3_MESSAGE
			-- this feature shall be called by net on a new connection
			-- register new player if possible
			-- model.update
			-- make a message to response
			-- update all registers clients
			-- return message to new client
			-- when four player are connected start game
		require
			are_correct_identifiers: message.receiver_id.id = 1 and message.sender_id.id = 0
		local
			new_player : G3_PLAYER
			new_player_id : G3_PLAYER_ID
			number_of_players : INTEGER
			registered_id : G3_PLAYER_ID
			update_message : G3_MESSAGE

		do
			if (attached {STRING} message.optional as new_player_name) and (model.number_of_players < 4) then
				create new_player_id.make
				new_player_id.set_id (model.number_of_players+1)
				create new_player.make
				new_player.set_id (new_player_id)
				-- validate name
				new_player.set_name (new_player_name)
				model.add_player (new_player)
				-- check if can start game
				if model.number_of_players = 4 then
					model.start_game
					model.set_before_9_cards (true)
					model.set_passing_cards_stage (false)
					model.set_playing_round_stage (false)
				end
				model.update
				-- update all registered clients
				from
					number_of_players := model.number_of_players - 1
				until
					number_of_players <= 1
				loop
					create registered_id.make
					registered_id.set_id (number_of_players)
					create update_message.make_with_parameters (registered_id, I_am.id)
					update_message.set_model (model)
					update_message.set_as_update_msg
					net.send_to_client (update_message)
					number_of_players := number_of_players -1
				end
				-- make a message to new connection response
				message.set_sender_id (I_am.id)
				message.set_receiver_id (new_player_id)
				message.set_model (model)
				message.set_as_connection_msg
			else
				-- make a message to new connection refused
				create new_player_id.make
				new_player_id.set_id (-1)
				message.set_sender_id (I_am.id)
				message.set_receiver_id (new_player_id)
				message.set_as_connection_msg
			end

			Result := message

		end

	receive (message : G3_MESSAGE)
			-- this feature shall be called by net when a message from client arrives
		require
			message.sender_id.is_register and message.receiver_id = my_id
		do
			-- identify what kind of message and perform associated action

			if message.is_update_msg and (attached {G3_MODEL} message.model as attached_model) then
					-- update message is receive on server mode and client mode
				model := attached_model
				model.subscribe (window)
				-- solve problem with of reference to model in GAME_WINDOW
				-- window.set_model(model) or copy all fields
				model.update
			end

			if message.is_invoke_msg and (attached {G3_INVOCATION} message.optional as new_invocation) then
					-- invocation message is receive always on server mode

				if new_invocation.name_invocation.is_equal ("on_play") then
					-- check turn
					if message.sender_id = model.turn then
						if attached {G3_COMBINATION} new_invocation.parameters as parameters then
							internal_on_play(parameters, message.sender_id)
						else
							-- send error message, not well formed invoker message
							-- maybe call feature notify
						end
					else
						-- send error message not has the turn, wath hapened here?
						-- notify to sender
						-- maybe call feature notify
					end
				end

				if new_invocation.name_invocation.is_equal ("on_request_bomba") then
					if attached {G3_COMBINATION} new_invocation.parameters as parameters then
						internal_on_request_bomba(parameters, message.sender_id)
					else
						-- send error message, not well formed invoker message
						-- maybe call feature notify
					end
				end

				if new_invocation.name_invocation.is_equal ("on_pass_card") then
					if (attached {G3_PLAYER_ID} new_invocation.parameters as receiver) and (attached {G3_CARD} new_invocation.parameters2 as card) then
						internal_on_pass_card(receiver, message.sender_id, card)
					else
						-- send error message, not well formed invoker message
						-- maybe call feature notify
					end
					-- TODO
				end

				if new_invocation.name_invocation.is_equal ("on_say_tichu") then
					internal_on_say_tichu(message.sender_id)
				end

				if new_invocation.name_invocation.is_equal ("on_say_grand_tichu") then
					internal_on_say_grand_tichu(message.sender_id)
				end

				if new_invocation.name_invocation.is_equal ("on_say_not_to_grand_tichu") then
					internal_on_say_not_to_grand_tichu(message.sender_id)
				end

				if new_invocation.name_invocation.is_equal ("on_pass") then
					-- check turn
					if message.sender_id = model.turn then
						internal_on_pass(message.sender_id)
					end
				end

			end


		end


feature{G3_GAME_WINDOW} --features for play

	is_possible_play_bomba (combination: G3_COMBINATION) : BOOLEAN
			--return if combination is a "straight flush" or if it is a "four of a kind" and kill last play
		do
			Result:= combination.is_bomba and combination.kills (model.top_play)
		end

	is_possible_play (combination: G3_COMBINATION) : BOOLEAN
			-- return true if is combination possible to play
		require
			my_turn: have_the_turn
			combination_void: combination /= void
		local
			last_combination_played : G3_COMBINATION
		do
			-- check if is combination possible to play
			if not combination.is_valid then
				Result := False
			else
				-- verified in model
				last_combination_played := model.top_play
				Result := combination.kills (last_combination_played)
			end
		end

	on_play(combination: G3_COMBINATION)
			-- play the cards if is possible.
		require
			my_turn : have_the_turn
			stage_of_game : playing_round_stage
			valid_combination : is_possible_play (combination)
			player_is_a_bomber : my_id = model.forced_to_play_bomba implies is_possible_play_bomba(combination)
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			if is_on_server_mode then
				-- make a move
				model.do_a_move (combination)
				-- remove obligation of bomber
				if I_am.id = model.forced_to_play_bomba then
					create player_id.make
					player_id.set_id (-1)
					model.set_forced_to_play_bomba (player_id)
				end
				-- check queue of requires bomba
				if requests_bomba.count /= 0 and not model.top_play.cards.first.is_the_dog
				then
					--store the natural order turn and remember which player must play bombas
					model.set_interrupted (model.turn)
					model.set_forced_to_play_bomba ( requests_bomba.first)
					-- altered turn
					model.detoned_bomb (requests_bomba.first)
					requests_bomba.start
					requests_bomba.remove
				end
				-- start new round if is over
				if not model.game_over and model.is_the_round_over then
					model.start_round
					model.set_before_9_cards (true)
					model.set_passing_cards_stage (false)
					model.set_playing_round_stage (false)
				end
				update_all_clients
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_play")
				invocation.set_parameters (combination)
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
				-- delivery the turn for blocking window
				model.do_a_pass
			end
			model.update

		ensure
			change_turn: old model.turn /= model.turn and model.top_play = combination
		end

	on_request_bomba (combination : G3_COMBINATION)
			--set the special bomba request if it is possible
		require
			stage_of_game : playing_round_stage
			valid_combination: combination.is_valid and is_possible_play_bomba(combination)
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			-- difference in client mode server mode
			if is_on_server_mode then
				requests_bomba.sequence_put (I_am.id)
				-- no update all client
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_request_bomba")
				invocation.set_parameters (combination)
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
			end
		ensure
			queued_player: old requests_bomba.count < requests_bomba.count
		end

	on_say_tichu
			--set the special tichu move only if it is call before the firs move
		require
			stage_of_game : can_say_tichu_stage
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			-- difference in client mode server mode
			if is_on_server_mode then
				model.set_tichu (I_am.id)
				model.update
				-- update all clients
				update_all_clients
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_say_tichu")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
			end

		end

	on_say_grand_tichu
			--set the special tichu move only if it is call before the ninth card is played.
		require
			stage_of_game : before_9_cards
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			if is_on_server_mode then
				-- count number of player that said
				model.set_responses_to_grand_tichu(model.responses_to_grand_tichu + 1)
				-- change stage if all response
				if model.responses_to_grand_tichu = 4 then
					model.set_before_9_cards (false)
					model.set_passing_cards_stage (true)
				end
				model.set_grand_tichu (I_am.id)
				model.update
				update_all_clients
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_say_grand_tichu")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
			end

		end

	on_say_not_to_grand_tichu
			-- say not to grand tichu
		require
			stage_of_game : before_9_cards
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			if is_on_server_mode then
				-- count number of player that said
				model.set_responses_to_grand_tichu(model.responses_to_grand_tichu + 1)
				-- change stage if all response
				if model.responses_to_grand_tichu = 4 then
					model.set_before_9_cards (false)
					model.set_passing_cards_stage (true)
				end
				update_all_clients
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_say_not_to_grand_tichu")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
			end

		end

	on_pass_card(receiver:G3_PLAYER_ID; card:G3_CARD)
			-- delivery card to receiver player
		require
			stage_of_game: passing_cards_stage
			number_of_cards : model.get_player (I_am.id).cards.count >= 12
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			-- difference in client mode server mode
			if is_on_server_mode then
				model.remove_card_to_player (I_am.id, card)
				model.give_card_to_player (receiver, card)

				-- check if passing stage
				if model.number_of_given_card = 12 then
					model.set_passing_cards_stage (false)
					model.set_playing_round_stage (true)
					model.update_given_cards
					model.update
					update_all_clients
				else
					model.update
				end
			else
				-- send to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_pass_card")
				invocation.set_parameters (receiver)
				invocation.set_parameters2 (card)
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
				-- remove card for arrive to condition required for feature
				model.remove_card_to_player (I_am.id, card)
				model.update
			end
		ensure
			change_stage_of_game : is_on_server_mode and model.number_of_given_card = 12 implies model.playing_round_stage
		end

	on_pass
			-- pass the turn to next player
		require
			my_turn : have_the_turn
			stage_of_game : playing_round_stage
			table_not_empty : model.top_play /= void
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			-- check no bomba was called
			if is_on_server_mode then
				-- make a move
				model.do_a_pass
				-- remove obligation of bomber and restore the turn to their natural owner
				if I_am.id = model.forced_to_play_bomba then
					create player_id.make
					player_id.set_id (-1)
					model.set_forced_to_play_bomba (player_id)
					--restore turn to interrupted player
					model.restore_interrupted
				end
				-- check requires bomba
				if requests_bomba.count /= 0 and not model.top_play.cards.first.is_the_dog
				then
					--store the natural order turn and remember which player must play bombas
					model.set_interrupted (model.turn)
					model.set_forced_to_play_bomba ( requests_bomba.first)

					-- altered turn
					model.detoned_bomb (requests_bomba.first)
					requests_bomba.start
					requests_bomba.remove
				end
				update_all_clients
			else
				-- send command to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_pass")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net.send_to_server (message)
				-- free turn for blocking window
				model.do_a_pass
			end
			model.update
		ensure
			change_turn: old model.turn /= model.turn
		end


		delivery_dragon_cards (receiver : G3_PLAYER_ID)
				-- delivery cards to custom receiver player
			do
				
			end


feature{G3_GAME_WINDOW} --Status report for G3_GAME_WINDOW and others

	is_on_server_mode : BOOLEAN

	can_say_tichu_stage: BOOLEAN
		do
			Result := I_am.all_cards_in_hand
		end

	before_9_cards : BOOLEAN
		do
			Result := model.before_9_cards
		end

	passing_cards_stage : BOOLEAN
		do
			Result := model.passing_cards_stage
		end

	playing_round_stage : BOOLEAN
		do
			Result := model.playing_round_stage
		end

	have_the_turn : BOOLEAN
			-- true if has the turn for play
		do
			Result := model.turn = I_am.id
		end

	my_id : G3_PLAYER_ID
		do
			Result := I_am.id
		end


feature{NONE} --internal structure and methods

	window : G3_GAME_WINDOW

	model : G3_MODEL

	net : G3_INETWORK

	I_am : G3_PLAYER

	requests_bomba : LIST [G3_PLAYER_ID]

	interrupted : G3_PLAYER_ID

	forced_to_play_bomba : G3_PLAYER_ID

	internal_on_play(combination: G3_COMBINATION; id:G3_PLAYER_ID)
		require
			has_the_turn : id = model.turn
			stage_of_game : playing_round_stage
			valid_combination : is_possible_play (combination)
			player_is_a_bomber : id = model.forced_to_play_bomba implies is_possible_play_bomba(combination)
		local
			player_id : G3_PLAYER_ID
		do
			-- make a move
			model.do_a_move (combination)
			-- remove obligation of bomber
			if id = model.forced_to_play_bomba then
				create player_id.make
				player_id.set_id (-1)
				model.set_forced_to_play_bomba (player_id)
			end
			-- check requires bomba
			if requests_bomba.count /= 0 and not model.top_play.cards.first.is_the_dog
			then
				--store the natural order turn and remember which player must play bombas
				model.set_interrupted (model.turn)
				model.set_forced_to_play_bomba ( requests_bomba.first)
				-- altered turn
				model.detoned_bomb (requests_bomba.first)
				requests_bomba.start
				requests_bomba.remove
			end
			-- start new round if is over
			if not model.game_over and model.is_the_round_over then
				model.start_round
				model.set_before_9_cards (true)
				model.set_passing_cards_stage (false)
				model.set_playing_round_stage (false)
			end
			model.update
			-- update all client
			update_all_clients
		ensure
			change_turn: old model.turn /= model.turn
		end

	internal_on_request_bomba(combination : G3_COMBINATION; id : G3_PLAYER_ID)
		require
			valid_combination: combination.is_valid and is_possible_play_bomba(combination)
		do
			requests_bomba.sequence_put (id)
		ensure
			queued_player: old requests_bomba.count < requests_bomba.count
		end

	internal_on_say_tichu(id:G3_PLAYER_ID)
		require
			stage_of_game : can_say_tichu_stage
		do
			model.set_tichu (id)
			model.update
			--update all clients
			update_all_clients

		end

	internal_on_say_grand_tichu(id:G3_PLAYER_ID)
		require
			stage_of_game: before_9_cards
		do
			-- count number of player that said
			model.set_responses_to_grand_tichu(model.responses_to_grand_tichu + 1)
			-- change stage if all response
			if model.responses_to_grand_tichu = 4 then
				model.set_before_9_cards (false)
				model.set_passing_cards_stage (true)
			end
			model.set_grand_tichu (id)
			model.update
			update_all_clients
		end

	internal_on_say_not_to_grand_tichu(id:G3_PLAYER_ID)
		require
			stage_of_game: before_9_cards
		do
			-- count number of player that said
			model.set_responses_to_grand_tichu(model.responses_to_grand_tichu + 1)
			-- change stage if all response
			if model.responses_to_grand_tichu = 4 then
				model.set_before_9_cards (false)
				model.set_passing_cards_stage (true)
			end
			update_all_clients
		end

	internal_on_pass_card(receiver,sender:G3_PLAYER_ID; card:G3_CARD)
		require
			stage_of_game: passing_cards_stage
			number_of_cards : model.get_player (sender).cards.count >= 12
		do
			model.remove_card_to_player (sender, card)
			model.give_card_to_player (receiver, card)

			-- check if passing stage
			if model.number_of_given_card = 12 then
				model.set_passing_cards_stage (false)
				model.set_playing_round_stage (true)
				model.update_given_cards
				model.update
				update_all_clients
			else
				model.update
			end
		ensure
			change_stage_of_game : model.number_of_given_card = 12 implies model.playing_round_stage
		end

	internal_on_pass(id:G3_PLAYER_ID)
		require
			has_the_turn : id = model.turn
			stage_of_game : playing_round_stage
		local
			player_id : G3_PLAYER_ID
		do
			-- check no bomba was called
			-- make a move
			model.do_a_pass
			-- remove obligation of bomber and restore the turn to their natural owner
			if id = model.forced_to_play_bomba then
				create player_id.make
				player_id.set_id (-1)
				model.set_forced_to_play_bomba (player_id)
				--restore turn to interrupted player
				model.restore_interrupted
			end
			-- check requires bomba
			if requests_bomba.count /= 0 and not model.top_play.cards.first.is_the_dog
			then
				--store the natural order turn and remember which player must play bombas
				model.set_interrupted (model.turn)
				model.set_forced_to_play_bomba ( requests_bomba.first)
				-- altered turn
				model.detoned_bomb (requests_bomba.first)
				requests_bomba.start
				requests_bomba.remove
			end
			model.update
			-- update all client
			update_all_clients
		ensure
			change_turn: old model.turn /= model.turn
		end

feature{NONE} -- auxiliar features

	is_valid_ip (ip : STRING) : BOOLEAN
			-- validate an ip address
		require
			ip /= void
		do
			Result := true
		end

	notify_all_clients
			-- this feature need revised, name suggest other behaviour
		local
			number_of_players : INTEGER
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
		do
			from
				number_of_players := model.number_of_players
			until
				number_of_players <= 1
			loop
				create player_id.make
				player_id.set_id (number_of_players)
				create message.make_with_parameters (player_id, I_am.id)
				message.set_model (model)
				message.set_as_update_msg
				net.send_to_client (message)
				number_of_players := number_of_players -1
			end
		end

	update_all_clients
			-- update all clients
		local
			number_of_players : INTEGER
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
		do
			from
				number_of_players := model.number_of_players
			until
				number_of_players <= 1
			loop
				create player_id.make
				player_id.set_id (number_of_players)
				create message.make_with_parameters (player_id, I_am.id)
				message.set_model (model)
				message.set_as_update_msg
				net.send_to_client (message)
				number_of_players := number_of_players -1
			end
		end






end
