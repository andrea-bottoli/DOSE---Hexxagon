note
	description: "THE WINDOW WHERE THE TICHU WILL BE PLAYED"
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_GAME_WINDOW

inherit
	G3_ABSTRACT_OBSERVER

feature{G3_START_GAME}

	intialize_game_window(wind:EV_FIXED port:STRING name:STRING is_server:BOOLEAN)
		--intialize game window
		local


				internal_pixmap: EV_PIXMAP
				pix_back: EV_PIXMAP
				pix2:EV_PIXMAP
				pix:EV_PIXMAP
				pix3:EV_PIXMAP
				pix4:EV_PIXMAP
				what_tip: STRING
		do
			dragon:="left"
			create pix_back.default_create
			create pix.default_create
			create pix2.default_create
			create pix3.default_create
			create pix4.default_create

			pix_back.set_with_named_file ("dose_2012/images/group_03/black.png")
			pix.set_with_named_file ("dose_2012/images/group_03/table_font.png")
			pix2.set_with_named_file ("dose_2012/images/group_03/cards_font.png")
			what_tip := "dose_2012/images/group_03/tip1.png"
			pix3.set_with_named_file (what_tip)
			pix4.set_with_named_file ("dose_2012/images/group_03/dr_con_image.png")

			create bomb_but.make_with_text ("Bomb")
			create pass_but.make_with_text ("Pass")
			create tichu_but.make_with_text ("Tichu")
			create grand_tichu_but.make_with_text ("Grand Tichu")
			create play_but.make_with_text ("Play")
			create cards_down.make
			create cards_play.make
			create player_cards.make
			create comps
			wind.wipe_out
			main_cont:=wind
			wind.set_background_pixmap (pix_back)
			create internal_pixmap
			internal_pixmap.set_with_named_file ("dose_2012/images/group_03/font1.png")
			create game_con.default_create
			create cards_con.default_create
			create points_con.default_create
			create turn_con.default_create
			create tip_con.default_create
			create dragon_con.default_create
			create cards_but.make
			game_con.set_background_pixmap (pix)
			cards_con.set_background_pixmap (pix2)
			tip_con.set_background_pixmap (pix3)
			dragon_con.set_background_pixmap (pix4)
			wind.extend_with_position_and_size (game_con,0, 0, 840, 400)
			wind.extend_with_position_and_size (points_con,840, 0, 160, 200)
			wind.extend_with_position_and_size (turn_con,840,150, 160, 200)
			wind.extend_with_position_and_size (cards_con,0,400, 840, 200)
			wind.extend_with_position_and_size (tip_con,840,320,160,280)
			game_con.extend_with_position_and_size (play_but,700 ,350, 100, 50)
			game_con.extend_with_position_and_size (pass_but,600 ,350, 100, 50)
			game_con.extend_with_position_and_size (dragon_con,0,250,350,150)
			pass_but.select_actions.extend (agent press_pass)
			game_con.extend_with_position_and_size (tichu_but,500 ,350, 100, 50)
			tichu_but.select_actions.extend (agent say_tichu)
			game_con.extend_with_position_and_size (bomb_but,400 ,350, 100, 50)
			bomb_but.select_actions.extend (agent press_bomb)
			play_but.select_actions.extend (agent try_drop_cards(cards_down))

			is_bomb_button_enable :=true
			is_tichu_button_enable :=true
			is_grand_tichu_button_enable :=true
			play_but.disable_sensitive
			bomb_but.disable_sensitive
			tichu_but.disable_sensitive
			pass_but.disable_sensitive

			change_player_turn
			change_points( ["","",0,0],["","",0,0])
			intialize_logic(is_server,port,name)
		end


	set_contoller(control:G3_CONTROLLER)
	do
		control_logic:=control
	end


	intialize_menu
		-- intialize menu
		do

		end
	intialize_logic(is_server:BOOLEAN port:STRING name:STRING)
	local
		

	do
--		create id.make
--		create model.make
--		create player.make
		if is_server then
			control_logic.run_in_server_mode (name)
		else
			control_logic.connect_to_game (port, name)
		end

	end


feature {G3_CONTROLLER,G3_START_GAME}
	set_model(mod:G3_MODEL)
	do
		model:=mod
	end

feature
	on_update

		do



			dragon:="left"
			id:=control_logic.my_id
			if(model.game_over) then
				game_end(model.team_info (1),model.team_info(2))
			end
			if( not model.has_error_message) then
				print (" I HERE !!!! in window")

				if control_logic.passing_cards_stage then
					play_but.disable_sensitive
					bomb_but.disable_sensitive
					tichu_but.disable_sensitive
					pass_but.disable_sensitive
					change_tip("tip2.png")
					show_all_cards(model.get_player (id).cards)

				elseif model.number_of_players=4 and control_logic.playing_round_stage then
					play_but.enable_sensitive
					bomb_but.enable_sensitive
					tichu_but.enable_sensitive
					pass_but.enable_sensitive
					change_player_turn
					update_tichu_table(model.top_play.cards)
					show_all_cards(model.get_player (id).cards)
					change_points(model.team_info (1),model.team_info (2))
				elseif control_logic.before_9_cards then
					play_but.disable_sensitive
					bomb_but.disable_sensitive
					tichu_but.disable_sensitive
					pass_but.disable_sensitive
					change_tip("tip1.png")
					show_fist_cards(model.get_player (id).cards)
					ask_for_grand
				end

			else
				io.putstring (model.error_message)
			end





		end

feature{ANY}

	give_dragon:G3_PLAYER_ID
	local

		send:INTEGER
	do
		send:=control_logic.my_id.id

		if dragon.is_equal ("left") then
			send:=send+3
				if send >4 then
					send:=send-4
				end
		else
			send:=send+1
				if send >4 then
					send:=send-4
				end
		end
		Result:=model.get_players.at (send).id

	end

	show_fist_cards(cards :LINKED_LIST [G3_CARD])
			-- show player 8 first cards
		local
			pix:EV_PIXMAP
			fix:EV_FIXED
			i:INTEGER
		do
			i:=0
			cards_con.wipe_out
			cards_down.wipe_out
			cards_play.wipe_out
			player_cards:=cards
			if not cards_but.is_empty then
				from
					cards_but.start
				until cards_but.item.index=8
				loop
					cards_but.item.destroy
					cards_but.forth
				end
				cards_but.wipe_out
			end
			from
				cards.start
			until
				cards.off
			loop
				create fix.default_create
				create pix.default_create
				pix.set_with_named_file (comps.card_path (cards.item))
				fix.set_background_pixmap (pix)
				fix.pointer_button_release_actions.extend (agent add_to_play(fix,?,?,?,?,?,?,?,?))
				cards_but.extend (fix)

				cards.forth
			end
			from
				cards_but.start
			until
				cards_but.off
			loop
				cards_con.extend_with_position_and_size (cards_but.item, i*60, 0, 60,90)
				i:=i+1
				cards_but.forth
			end
		end

	show_all_cards(cards : LINKED_LIST [G3_CARD])
			-- show player all cards
		local
			pix:EV_PIXMAP
			fix:EV_FIXED
			i:INTEGER
		do
			i:=0
			cards_con.wipe_out
			cards_down.wipe_out
			cards_play.wipe_out
			player_cards:=cards
			if not cards_but.is_empty then
				from
					cards_but.start
				until cards_but.off
				loop
					cards_but.item.destroy
					cards_but.forth
				end
				cards_but.wipe_out
			end
			from
				cards.start
			until
				cards.off
			loop
				create fix.default_create
				create pix.default_create
				pix.set_with_named_file (comps.card_path (cards.item))
				fix.set_background_pixmap (pix)
				fix.pointer_button_release_actions.extend (agent add_to_play(fix,?,?,?,?,?,?,?,?))
				cards_but.extend (fix)

				cards.forth
			end
			from
				cards_but.start
			until
				cards_but.off
			loop
				cards_con.extend_with_position_and_size (cards_but.item, i*60, 0, 60,90)
				i:=i+1
				cards_but.forth
			end
		end

	set_tichu_button(is_on : BOOLEAN)
			-- enable or disable tichu button
		do
			if is_on then
				control_logic.on_say_tichu
			end
		ensure
			(is_on and is_tichu_button_enable) or ((not is_on) and is_tichu_button_enable = false)
		end

	set_grand_tichu_button(is_on : BOOLEAN)
		-- enable or disable grand tichu button
		do
			if is_on then
				control_logic.on_say_grand_tichu
			end
		ensure
			(is_on and is_grand_tichu_button_enable) or ((not is_on) and is_grand_tichu_button_enable = false)
		end

	set_bomb_button(is_on : BOOLEAN)
			-- enable or disable bomb button
		local
				combi:G3_COMBINATION
		do
			if is_on then
				create combi.make_with_parameter (cards_down)
				if combi.is_valid then
					control_logic.on_play (combi)
				end
			end
		ensure
			(is_on and is_bomb_button_enable) or ((not is_on) and is_bomb_button_enable = false)
		end

	change_player_turn
			-- change players turn in turn_con

		local
			turn :EV_LABEL
			sco:STRING
			color:EV_COLOR
		do
			create color.make_with_8_bit_rgb (10,55, 0)

			create sco.make_empty

			if control_logic.playing_round_stage then
				sco.append ("Turn of player ")
				sco.append_integer(model.turn.id)
			elseif control_logic.passing_cards_stage then
				sco.append ("Trade cards")
			else
				sco.append ("Wait for players")
			end

			create turn.make_with_text (sco)
			turn.set_background_color (color)
			turn_con.wipe_out
			turn_con.extend_with_position_and_size (turn,0,0,160,200)
		end

	change_points(team1: TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER] team2: TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER])
			-- change team points in points_con
		local
			score :EV_LABEL
			sco:STRING
			color:EV_COLOR
		do
			create color.make_with_8_bit_rgb (10,55, 0)

			create sco.make_empty
			sco.append ("team 1 : ")
			sco.append_integer(team1.score_global)
			sco.append ("%Nteam 2 : ")
			sco.append_integer(team2.score_global)
			create score.make_with_text (sco)
			score.set_background_color (color)
			points_con.wipe_out

			points_con.extend_with_position_and_size (score ,0, 0, 160, 200)
		end

	update_player_cards(cards :LINKED_LIST [G3_CARD])
			-- change player cards when player drop cards
		do

		end

	update_tichu_table(cards :LINKED_LIST [G3_CARD])
			-- update tichu table with the cards that the last player droped
			local
				i : INTEGER
				pix : EV_PIXMAP
			do
				game_con.wipe_out
				game_con.extend_with_position_and_size (dragon_con,0,250,350,150)
				game_con.extend_with_position_and_size (play_but,700 ,350, 100, 50)
				game_con.extend_with_position_and_size (pass_but,600 ,350, 100, 50)
				game_con.extend_with_position_and_size (tichu_but,400 ,350, 100, 50)
				game_con.extend_with_position_and_size (grand_tichu_but,500 ,350, 100, 50)
				game_con.extend_with_position_and_size (bomb_but,300 ,350, 100, 50)
				from cards.start
				until cards.off
				loop
					create pix
					pix.set_with_named_file (comps.card_path (cards.item))

					game_con.extend_with_position_and_size (pix,i, 0, 60, 90)
					i:=i+60
					cards.forth
				end
			end

	try_drop_cards(cards :LINKED_LIST [G3_CARD])
			-- give call to logic for player dropped cards
		local
			combi:G3_COMBINATION
		do
			change_tip("tip3.png")
			create combi.make_with_parameter (cards)
			if combi.is_valid then
				control_logic.on_play (combi)
				update_tichu_table(cards)
			else
				player_cards.append (cards_down)
				show_all_cards(player_cards)
			end
		end
	press_pass
		do
			change_tip("tip5.png")
			if(control_logic.have_the_turn) then
						control_logic.on_pass
			end

		end
	press_bomb
			-- calls when bomb button pressed
		require
			is_bomb_button_enable
		local
			combi:G3_COMBINATION
		do
			change_tip("tip4.png")
			if not cards_down.is_empty then
				create combi.make_with_parameter (cards_down)
			else
				create combi.make
			end
			if(control_logic.is_possible_play_bomba (combi)) then
				control_logic.on_request_bomba (combi)
			end
		end

	say_tichu
		require
			is_tichu_button_enable
		do
			change_tip("tip6.png")
			if(control_logic.playing_round_stage) then
				control_logic.on_say_tichu
			end
		end

	say_grand_tichu(said:BOOLEAN)
		require
			is_grand_tichu_button_enable
		do
			change_tip("tip1.png")
			if(said) then
				control_logic.on_say_grand_tichu
			else
				control_logic.on_say_not_to_grand_tichu
			end
			game_con.wipe_out
		end

feature {NONE}

	dragon_feature
	local
		pix: EV_PIXMAP
	do
		create pix.default_create
		create left_but.make_with_text ("Left")
		create right_but.make_with_text ("Right")
		create close_but.make_with_text ("Close")
		pix.set_with_named_file ("dose_2012/images/group_03/dragon_give.png")
		dragon_con.wipe_out
		dragon_con.extend_with_position_and_size (pix, 0, 0, 350,150)
		dragon_con.extend_with_position_and_size (left_but, 50, 75, 60,60)
		dragon_con.extend_with_position_and_size (right_but, 150, 75, 60,60)
		dragon_con.extend_with_position_and_size (close_but, 250, 75, 60,60)
		left_but.select_actions.extend (agent choose_for_dragon("left"))
		right_but.select_actions.extend (agent choose_for_dragon("right"))
		close_but.select_actions.extend (agent close_above)
	end

	game_end(team1: TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER] team2: TUPLE [player1, player2: STRING; score_global, score_partial: INTEGER])
				-- change team points in points_con
			local
				score :EV_LABEL
				sco:STRING
				color:EV_COLOR
			do
				create color.make_with_8_bit_rgb (190,50, 50)
				create sco.make_empty
				sco.append ("team 1 : ")
				sco.append_integer(team1.score_global)
				sco.append (" ------ team 2 : ")
				sco.append_integer(team2.score_global)
				sco.append ("%NThe game is over ")
				if team1.score_global>team2.score_global then
					sco.append ("%N!!!!WINNER IS TEAM 1!!!!!")
				else
					sco.append ("%N!!!!WINNER IS TEAM 2!!!!!")
				end
				create score.make_with_text (sco)
				score.set_background_color (color)
				game_con.wipe_out


				game_con.extend_with_position_and_size (score ,0, 0, 840,400)
			end


	close_above
	local
		pix: EV_PIXMAP
	do
		create pix.default_create
		pix.set_with_named_file ("dose_2012/images/group_03/dr_con_image.png")
		dragon_con.wipe_out
		dragon_con.extend_with_position_and_size (pix, 0, 0, 350,150)
	end


	choose_for_dragon(where:STRING)
	do
		dragon:=where
	end

	mahjong_feature
	local
		pix: EV_PIXMAP
		fix: EV_FIXED
		cards: LINKED_LIST [EV_FIXED]
		i: INTEGER
		tmpstr,name: STRING
	do
		change_tip("tip7.png")
		create pix.default_create
		create cards.make
		tmpstr := ""
		from
			i:=2
		until
			i=15
		loop
			create name.make_empty
			name.append_integer (i)
			create pix.default_create
			create fix.default_create
			create tmpstr.make_empty
			tmpstr.append_integer (i)
			pix.set_with_named_file (comps.path+"/cards/mahjong"+name+".png")--+i.to_hex_string+
			fix.set_background_pixmap (pix)
			if(i=11) then
				fix.pointer_button_release_actions.extend (agent choosen_one("J",?,?,?,?,?,?,?,?))
			elseif(i=12) then
				fix.pointer_button_release_actions.extend (agent choosen_one("Q",?,?,?,?,?,?,?,?))
			elseif(i=13) then
				fix.pointer_button_release_actions.extend (agent choosen_one("K",?,?,?,?,?,?,?,?))
			elseif(i=14) then
				fix.pointer_button_release_actions.extend (agent choosen_one("A",?,?,?,?,?,?,?,?))
			else
				fix.pointer_button_release_actions.extend (agent choosen_one(tmpstr,?,?,?,?,?,?,?,?))
			end
			cards.extend (fix)
			i:=i+1
		end
		from
			cards.start
		until
			cards.off
		loop
			game_con.extend_with_position_and_size (cards.item, (cards.index-1)*60+15, 100, 60,90)
			cards.forth
		end


	end

	choosen_one(str_id: STRING a,b,c :INTEGER_32  d,e,f :REAL_64  g,h : INTEGER_32) -- The mahjong chosen card
	do
		io.putstring (str_id)
		from
			cards_down.start
		until
			cards_down.off
		loop
			if(cards_down.item.is_the_mahjongg) then
				cards_down.item.make (str_id, cards_down.item.kind, true ,0, cards_down.item.value)

			end
			cards_down.forth
		end

	end



	change_tip(name_tip: STRING)
	local
		pix: EV_PIXMAP
	do
		create pix.default_create
		pix.set_with_named_file (comps.path+"/"+name_tip)
		tip_con.wipe_out
		tip_con.extend_with_position_and_size (pix, 0, 0, 160, 280)
	end


	ask_for_grand
	local
		but1,but2:EV_BUTTON
		label:EV_LABEL
		color1,color2:EV_COLOR
		do
			create label.make_with_text ("Want to say grand tichu ?")
			create color1.make_with_8_bit_rgb (0,0, 0)
			create color2.make_with_8_bit_rgb (250,0, 0)
			label.set_foreground_color (color2)
			label.set_background_color (color1)
			create but1.make_with_text ("I say Grand tichu")
			create but2.make_with_text ("I don't say Grand tichu")
			but1.set_foreground_color (color2)
			but1.set_background_color (color1)
			but2.set_foreground_color (color2)
			but2.set_background_color (color1)
			game_con.extend_with_position_and_size (label, 280, 200, 150, 30)
			game_con.extend_with_position_and_size (but1, 200, 250, 150, 30)
			game_con.extend_with_position_and_size (but2, 350 , 250, 150, 30)
			but1.select_actions.extend (agent say_grand_tichu(true))
			but2.select_actions.extend (agent say_grand_tichu(false))
	end

	add_to_play (card:EV_FIXED a_a,a_b,a_c:INTEGER_32 b_a,b_b,b_c:REAL_64 c_a,c_b:INTEGER_32)
	local
		send:INTEGER
	do
		change_tip("tip2.png")
		player_cards.start
		from
			cards_but.start
		until
			cards_but.off
		loop
			if(cards_but.item = card) then
				if control_logic.passing_cards_stage then
					send:=control_logic.my_id.id
					if cards_but.last.index=14 then
						send:=send+3
						if send >4 then
							send:=send-4
						end
					elseif cards_but.last.index=13 then
						send:=send+2
						if send >4 then
							send:=send-4
						end
					elseif cards_but.last.index=12 then
						send:=send+1
						if send >4 then
							send:=send-4
						end
					end
					control_logic.on_pass_card (model.get_players.at (send).id, player_cards.item)
				else
					cards_con.set_item_position_and_size (cards_but.item,cards_play.count*60 ,100, 60, 90)
					cards_play.extend (cards_but.item)
					if(player_cards.item.is_the_mahjongg) then
						mahjong_feature
					end
					if(player_cards.item.is_the_dragon) then
						dragon_feature
					end
					cards_down.extend (player_cards.item)
				end
				player_cards.remove
				cards_but.remove
			elseif ((not cards_but.is_empty) ) then
				cards_but.forth
				player_cards.forth
			end
		end
	end

	player_cards:LINKED_LIST [G3_CARD]

	cards_down: LINKED_LIST [G3_CARD]

	cards_play : LINKED_LIST [EV_FIXED]

	cards_but:LINKED_LIST[EV_FIXED]

	is_bomb_button_enable : BOOLEAN
		-- says if the bomb button is enable
	is_tichu_button_enable : BOOLEAN
		-- says if the tichu button is enable
	is_grand_tichu_button_enable : BOOLEAN
		-- says if the grand tichu button is enable
	game_con:EV_FIXED
		--main container for game
	cards_con:EV_FIXED
		--container used to show the cards
	points_con : EV_FIXED
		--container used to show the points of the teams
	turn_con :EV_FIXED
		--container used to show players turn
	tip_con:EV_FIXED
		--container for image tips
	bomb_but : EV_BUTTON
		--button to play bomb
	tichu_but : EV_BUTTON
		--button to call tichu
	grand_tichu_but: EV_BUTTON
		--button to call grand tichu
	play_but : EV_BUTTON
		--button calls when a player want to drop cards
	pass_but : EV_BUTTON
		--button calls when a player want to pass
	menu_bar: EV_MENU_BAR
		--menu bar
	menu_game: EV_MENU
		--menu item game
	menu_Help: EV_MENU
		--menu item help
	menu_item_Leave: EV_MENU_ITEM
		--menu item leave
	menu_item_new_game: EV_MENU_ITEM
		--menu item new game
	main_cont : EV_FIXED
		-- the main container to which the button will be added
	comps:G3_COMPS

	model:G3_MODEL

	control_logic:G3_CONTROLLER

	id:G3_PLAYER_ID

	dragon:STRING

	dragon_con: EV_FIXED
	left_but,right_but,close_but: EV_BUTTON

end
