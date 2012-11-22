note
	description: "Summary description for {TEST_SET_G5_INET_TO_GUI}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_INET_TO_GUI

inherit

	EQA_TEST_SET

feature {NONE}

	rescued: BOOLEAN

feature -- Test routines

	test_set_inet_to_gui_start_game_command_0
	-- creation is corrected
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		rescued:= instance/=void
		assert ("number of players to start the game is correct",rescued)

	end

	test_set_inet_to_gui_rematch_0
	-- check that name player is correct
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		name:STRING
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		if not rescued then
			name:=""
		end
		instance.rematch (name)
		assert("name player corrected",rescued)
	rescue
		if not rescued then
			name:="my_name"
			rescued:=name.count>0
			retry
		end

	end


	test_set_inet_to_gui_connect_0
	--verifies that the player's name is correct
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		name:STRING
		port:INTEGER
	do
		port:=2000
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		if not rescued then
			name:=""
		end
		rescued:= rescued and instance.connect (name, "192.0.0.0", port)
		assert("correct player's name to connect",rescued)
	rescue
		if not rescued then
			name:="my_name"
			rescued:= name.count>0
			retry
		end
	end

	test_set_inet_to_gui_connect_1
	-- verifies that the player's server-port is correct
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		port_server:INTEGER
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		if not rescued then
			port_server:= 0
		end
		rescued:= instance.connect ("my_name", "192.0.0.0", port_server) and rescued
		assert("correct player's server port to connect",rescued)
	rescue
		if not rescued then
			port_server:=1030
			rescued:= true
			retry
		end
	end

	test_set_inet_to_gui_connect_2
	-- verifies that the player's ip is correct
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		ip_:STRING
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		ip_:="not_valid"
		rescued:= instance.connect ("my_name", ip_, 2000)
		assert("correct player's server port to connect",not rescued)
	end

	test_set_inet_to_gui_connect_3
	-- verifies that the player's ip is correct
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		ip_:STRING
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		ip_:="192.1.0.0"
		rescued:= instance.connect ("my_name", ip_, 2000)
		assert("correct player's server port to connect",rescued)
	end

	test_set_inet_to_gui_play_card_0
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		card:STRING
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		if not rescued then
			card:=""
		end
		instance.play_card (card)
		assert("correct card name",rescued)
		rescue
			if not rescued then
				rescued:=true
				card:="M1"
			end

	end

	test_set_inet_to_gui_play_card_1
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		card:STRING
	do
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		if not rescued then
			card:="M"
		end
		instance.play_card (card)
		assert("correct card name",rescued)
		rescue
			if not rescued then
				rescued:=true
				card:="M5"
			end

	end

	test_set_inet_to_gui_select_from_supply_0
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		cards:ARRAY[STRING]
		card_:STRING
	do
		if not rescued then
			card_:=""
		end
		cards.make_filled ("", 1, 10)
		cards.put ("M1", 1)
		cards.put (card_, 2)
		cards.put ("M1", 3)
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		instance.selected_from_supply (cards)
		assert("ID cards are correct",rescued)
	rescue
		if not rescued then
			rescued:=true
			card_:="M4"
		end
	end

	test_set_inet_to_gui_select_from_hand_0
	local
		associated_gui: G5_IGUI_TO_NET
		instance: G5_INET_TO_GUI
		cards:ARRAY[STRING]
		card_:STRING
	do
		if not rescued then
			card_:="S3"
		end
		cards.make_filled ("", 1, 10)
		cards.put ("M1", 1)
		cards.put (card_, 2)
		cards.put ("M1", 3)
		associated_gui:= create {G5_GUI}.make
		instance:= create {G5_NET_CLIENT}.make(associated_gui)
		instance.select_from_hand (cards)
	rescue
		if not rescued then
			rescued:=true
			card_:="T6"
		end
	end
end
