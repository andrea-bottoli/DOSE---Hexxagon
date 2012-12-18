note
	description: "Summary description for {G3_CONTROLLER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$1.0$"

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
			default_net : G3_NETWORK_RIO_CUARTO_6
		do
			model := first_model
			create default_net.make_thread
			net := default_net
		end

feature{G3_START_GAME} -- features for initialize and setting

	set_tichu_game_window (game_window : G3_GAME_WINDOW)
		require
			not_void: game_window /= void
		do
			window := game_window
			window.set_model (model) -- OJO
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
			create I_am.make
			create new_player_id.make
			new_player_id := new_player_id.get_server_id
			I_am.set_id (new_player_id)
			I_am.set_name (player_name)
			model.add_player (I_am)
			is_on_server_mode := true
			-- register on net
			net.set_controller (current)
			net.run_server_mode
			create net2.make_thread
			net2.set_ip_numbers_of_players (net.ip_numbers_of_players)
			net.launch
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
			-- register on net
			net.set_controller (current)

			-- make a message for connect
			create new_player_id.make
			create connect_message.make_with_parameters (new_player_id.get_server_id, new_player_id)
			connect_message.set_optional (player_name)
			connect_message := net.connect (server_ip, connect_message)
			new_player_id := connect_message.receiver_id
			if  new_player_id.is_register then
				model := connect_message.model
				I_am := model.get_player (new_player_id)
				print ("storing reference to player in controller.connect "+new_player_id.id.out)
			else
				model.set_error_message("Connection refused by server")
				io.new_line
				Print ("NO WELL CONNECT !!!!")
			end
			create net2.make_thread
			print ("IP server for net2 :"+net.ip_number_of_server)
			net2.set_ip_number_of_server (net.ip_number_of_server)
			net.launch
			-- update relations
			window.set_model (model)
			model.subscribe (window)
			model.update

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
			model2 : G3_MODEL
			model3 : G3_MODEL

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
					print ("LLegaron 4 model.start_game")
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
					create model3.make
					model3.copy(model)
					model3.unsubscribe (void)
					update_message.set_model (model3)
					update_message.set_as_update_msg
					net2.send_to_client (update_message)
					number_of_players := number_of_players -1
				end
				-- make a message to new connection response
				message.set_sender_id (I_am.id)
				message.set_receiver_id (new_player_id)
				--
				create model2.make
				model2.copy(model)
				model2.unsubscribe (void)
				io.new_line
				print ("JUGADOR DENTRO del modelo2 "+model2.get_player (new_player_id).name)
				io.new_line
				print ("id_register_player in model2: "+model2.get_player (new_player_id).id.id.out+ " - " )
				io.new_line
				message.set_model (model2)
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
			-- this feature shall be called by net when a message from client or server arrives
		require
			expected_identifiers : message.sender_id.is_register and message.receiver_id.is_equal (my_id)
		do
			-- identify what kind of message and perform associated action
			io.new_line
			Print ("Dentro de receive ")
			io.new_line
			if message.is_update_msg and (attached {G3_MODEL} message.model as attached_model) then
					-- update message is receive on server mode and client mode
				io.new_line
				print ("attached model (for update) my id : "+attached_model.get_player (my_id).id.id.out)
				io.new_line
				model := attached_model
				window.set_model (model)
				model.subscribe (window)
				model.update
			end

			if message.is_invoke_msg and (attached {G3_INVOCATION} message.optional as new_invocation) then
					-- invocation message is receive always on server mode (except window_give_dragon)

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
						-- TODO check when dragon!!!
					end
				end

				-- in client mode
				if new_invocation.name_invocation.is_equal ("window_give_dragon") then
					internal_window_give_dragon(message.sender_id)
				end

				-- inserver mode
				if new_invocation.name_invocation.is_equal ("delivery_dragon_cards") then
					-- check receiver id
					if (attached {G3_PLAYER_ID} new_invocation.parameters as receiver_id) then
						delivery_dragon_cards (receiver_id)
					end

				end

			end


		end

feature {G3_INETWORK}

	special (message: G3_MESSAGE)
		do
			message.set_as_update_msg
			net2.send_to_client (message)
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

	is_possible_play_after_mah_jong(id:G3_PLAYER_ID; combination:G3_COMBINATION):BOOLEAN
		local
			player:G3_PLAYER
			posible_combination, combination_bomb:G3_COMBINATION
		do
			Result:=True
			player:= model.get_player(id)
			if model.mah_jong_number /= Void and not (is_possible_play_bomba(combination)) then
				if  (has_chosen_mah_jong(model.mah_jong_number, player.cards)) and
				    not(has_chosen_mah_jong(model.mah_jong_number, combination.cards))
				then
					if not(model.top_play.cards.count=1)then
						posible_combination:=player.get_biggest_straight(model.mah_jong_number,model.top_play.cards.count)
						if(posible_combination/=void and then posible_combination.kills(model.top_play)) then
							Result:=False
						end
					else--only one card	in top	
						posible_combination:=player.get_combination_with_number(model.mah_jong_number)
						combination_bomb:= player.get_bomba_with_number (model.mah_jong_number)
						if (posible_combination/=void) and then (posible_combination.kills (model.top_play) or combination_bomb.kills (model.top_play)) then
							Result:=False
						end
					end
					--else he has the card but doesn't kill the hand (TODO what if he has a biggest bomb with the card?)
				end
				--else doesn't has the card or he play the card
			end
			--else is not mah jong played or he play a bomb

		end

	is_possible_pass_after_mah_jong(id:G3_PLAYER_ID):BOOLEAN
		local
			player:G3_PLAYER
			posible_combination, combination_bomb:G3_COMBINATION
		do
			Result:=True
			player:= model.get_player(id)
			if model.mah_jong_number /= Void then
				if (has_chosen_mah_jong(model.mah_jong_number, player.cards)) then
					if not(model.top_play.cards.count=1)then
						posible_combination:=player.get_biggest_straight(model.mah_jong_number,model.top_play.cards.count)
						if posible_combination/=void and posible_combination.kills(model.top_play) then
							Result:=False
						end
					else --only one card in top	
						posible_combination:=player.get_combination_with_number(model.mah_jong_number)
						combination_bomb:=player.get_bomba_with_number (model.mah_jong_number)
						if (posible_combination/=void) and then (posible_combination.kills (model.top_play) or combination_bomb.kills (model.top_play)) then
							Result:=False
						end
					end
					--else he has the card but doesn't kill the hand (TODO what if he has a biggest bomb with the card?)
				end
				--else doesn't has the card
			end
			--else is not mah jong played

		end

	on_play(combination: G3_COMBINATION)
			-- play the cards if is possible.
		require
			my_turn : have_the_turn
			stage_of_game : playing_round_stage
			valid_combination : is_possible_play (combination)
			player_is_a_bomber : my_id = model.forced_to_play_bomba implies is_possible_play_bomba(combination)
			forced_after_mah_jong: is_possible_play_after_mah_jong(my_id,combination)
		local
			player_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			if is_on_server_mode then
				-- make a move
				model.do_a_move (combination)
				--remove obligation for mah jong chosen card
				if has_chosen_mah_jong(model.mah_jong_number,combination.cards) then
					model.set_mah_jong_number (void)
				end
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
				net2.send_to_server (message)
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
				net2.send_to_server (message)
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
				net2.send_to_server (message)
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
				net2.send_to_server (message)
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
				net2.send_to_server (message)
			end

		end

	on_pass_card(receiver:G3_PLAYER_ID; card:G3_CARD)
			-- delivery card to receiver player
		require
			stage_of_game: passing_cards_stage
			number_of_cards : model.get_player (I_am.id).cards.count >= 12
			forced_after_mah_jong:is_possible_pass_after_mah_jong(my_id)
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
				net2.send_to_server (message)
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
				if model.dragon then
					-- update local for blocking
					model.update
					-- make consult across the net model.continue_interrupted_dragon with remote window.give_dragon)
					create player_id.make
					create message.make_with_parameters (model.dragon_id, I_am.id)
					create invocation.make("window_give_dragon")
					message.set_optional (invocation)
					message.set_as_invoke_msg
					net2.send_to_client (message)
					-- interrupte normal (go to end)	
				else
					-- normal ejecution
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
					update_all_clients
				end
			else
				-- send command to server, running on client mode
				create player_id.make
				create message.make_with_parameters (player_id.get_server_id, I_am.id)
				create invocation.make("on_pass")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net2.send_to_server (message)
				-- free turn for blocking window
				model.do_a_pass
				model.update
			end
		ensure
			change_turn: old model.turn /= model.turn
		end


		delivery_dragon_cards (receiver : G3_PLAYER_ID)
				-- delivery cards to custom receiver player
			do
				-- return to normal ejecution (from dragon)
				model.continue_interrupted_dragon (receiver)
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
				update_all_clients
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

	net : G3_NETWORK_RIO_CUARTO_6

	net2 : G3_NETWORK_RIO_CUARTO_6

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
			--remove obligation for mah jong chosen card
			if has_chosen_mah_jong(model.mah_jong_number,combination.cards) then
				model.set_mah_jong_number (void)
			end
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
			message : G3_MESSAGE
			invocation : G3_INVOCATION
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
			-- check dragon
			if model.dragon then
				-- update local for blocking
				model.update
				-- make consult across the net model.continue_interrupted_dragon with remote window.give_dragon)
				create player_id.make
				create message.make_with_parameters (model.dragon_id, I_am.id)
				create invocation.make("window_give_dragon")
				message.set_optional (invocation)
				message.set_as_invoke_msg
				net2.send_to_client (message)
				-- interrupte normal (go to end)
			else
				-- normal ejecution
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
				update_all_clients
			end
		ensure
			change_turn: old model.turn /= model.turn
		end

	-- invoke in client mode
	internal_window_give_dragon (sender_id : G3_PLAYER_ID)
			-- consult window for know who to give cards of dragon and response to server
		require
			server_consult_dragon : sender_id.id = 1
		local
			receiver_id : G3_PLAYER_ID
			message : G3_MESSAGE
			invocation : G3_INVOCATION
		do
			-- consult window
			receiver_id := window.give_dragon
			-- send to server
			create message.make_with_parameters (sender_id, I_am.id)
			create invocation.make("delivery_dragon_cards")
			invocation.set_parameters (receiver_id)
			message.set_optional (invocation)
			message.set_as_invoke_msg
			net2.send_to_server (message)
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
				net2.send_to_client (message)
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
				net2.send_to_client (message)
				number_of_players := number_of_players -1
			end
		end

	has_chosen_mah_jong(card_number:STRING;cards:LINKED_LIST[G3_CARD]):BOOLEAN
		do
			Result:=False
			from
				cards.start
			until
				cards.off
			loop
				if cards.item.number.is_equal(card_number) then
					Result:= True
				end
			end
		end





end
