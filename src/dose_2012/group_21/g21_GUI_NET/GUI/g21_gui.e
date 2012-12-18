note
	description : "G21_GUI summary description"
	author: "Crete5"

class
	G21_GUI
inherit
	EV_APPLICATION
	G21_NOTIFYLISTENER
	rename message as notifiermessage
	undefine default_create, copy end
	G21_CARD_MESSAGE
	undefine default_create, copy end

create
	newGUI

feature {NONE} -- Atributes

		-- A list of player's cards on hand
		cards: ARRAY[G21_XLABEL]
		menu: ARRAYED_LIST[STRING]
		-- A reprasantation of game board
		board: ARRAY[G21_CARD]
		msg : STRING
		type : INTEGER
		-- A list with all game rules
		rulesList : ARRAYED_LIST[STRING]
		-- The active rule
		rule : INTEGER
		actionListener : ARRAYED_LIST[G21_ACTIONLISTENER]
		notifyListener : ARRAYED_LIST[G21_MSG_LISTENER]
		main_win : G21_MAIN_WINDOW
		deck : ARRAY[G21_CARD]

feature {ANY} -- Operations

	newGUI () --Constructor of GUI
		require
		local
			i : INTEGER
		do
			default_create
			create main_win
			--Adds rules
			from i := 1 until i = rulesList.count
			loop
				main_win.add_rule(rulesList.item)
				rulesList.forth
			end
			main_win.show
			launch
		ensure
		end

	updatePlayerHand(cards_a : ARRAYED_LIST[G21_CARD]; player : INTEGER)
		require
			cards_a /= Void
			player < 2
			player > 0
		local
			i : INTEGER
		do
			cards.make_empty
			from i := 1
			until i = cards_a.count
			loop
			cards.force (create {G21_XLABEL}.XLabel(cards_a.item), i)
			cards_a.forth
			end

			if (player = 1) then main_win.update_p1_hand(cards) end
			if (player = 2) then main_win.update_p2_hand(cards) end
		ensure
			cards = cards_a
		end

	updateHand(cards_a : ARRAYED_LIST[G21_CARD])
		require
			cards_a /= Void
		local
			i : INTEGER
		do
--			updateGUIHand()
			cards.make_empty
			from i := 1
			until i = cards_a.count
			loop
			cards.force (create {G21_XLABEL}.XLabel(cards_a.item), i)
			cards_a.forth
			end
			main_win.update_p1_hand(cards)
		ensure
			cards = cards_a
		end

	updateBoard(board_a : G21_CARD)
		require
			board_a /= Void
		do
--			updateGUIBoard()
		ensure
			board_a = board
		end

	message(msg_a : STRING; type_a : INTEGER)
		require
			msg_a /= Void
			type_a >= 0
		do
		ensure
			msg = msg_a
		end

	rules(rulesList_a : ARRAYED_LIST[STRING])
		require
			rulesList_a /= Void
		do

		ensure
			rulesList = rulesList_a
		end

	setRule(rule_a : INTEGER)
		require
			rule_a > 0
			--rule_a <= rulesList.size()
		do
		ensure
		end

	addActionListener(listener_a : G21_ACTIONLISTENER)--invar: actionListeners list != NULL. ti kanoume me afto???????
		require
			listener_a /= Void
		do
		ensure
		--	actionListeners.add(listener_a)--edo i sto do??????
		end

	addNotifyListener(listener_a : G21_NOTIFYLISTENER)--omoies apories me apo pano
		require
			listener_a /= Void
		do
		ensure
		--	notifyListeners.add(listener_a)
		end

	 playerDeck(deck_a : ARRAY[G21_CARD]; player_a : INTEGER)
	 require
	 	deck_a /= Void
	 do
	 	deck := deck_a
	 ensure
	 	deck = deck_a
	 end

feature {G21_GUI} -- Operations

	updateGUIHand()
		require
			cards /= Void
		do
		ensure
		end

	updateGUIMenu()
		require
			menu /= Void -- sosto??
		do
		ensure
		end

	updateGUIBoard()
		require
			board /= Void
		do
		ensure
		end

	updateGUIFrame()
		require
			board /= Void
			cards /= Void
			menu /= Void
		do
		ensure
		end

	newAIGame()
		do

		end

	newGame(port : INTEGER)
		require
			0 > port
			port < 65535
		do
		ensure
			0 < port
			port < 65535
		end

	joinGame(IP : STRING; port : INTEGER)
		require
		do
			--notifyJoinGame(IP, port)
		ensure
			0 < port
			port < 65535
		end

	clearAll()

		require
		do
		ensure
			--card.size = 0
			--hand.size = 0


		--	do

			--	from i := 0 until i = 9
			--	loop
			--		board[i] = 0
			--		i := i + 1
			--	end
		--	end
		end

--	onMouseClickCard()
--		require
--		do
--		ensure
--		end

--	onMouseClickMenu()
--		require
--		do
--		ensure
--		end

--	onMouseClickBoard()
--		require
--		do
--		ensure
--		end

--	onMouseClickRulesList()
--		require
--		do
--		ensure
--		end

	notifyPlayCard(card : G21_CARD; position : INTEGER)
		require
			card /= Void
			position < 8
			position > 0
		do
--			actionListeners.get().playCard(card, position)
		ensure
		end

	notifySelectRule(rule_a : INTEGER)
		require
			rule_a > 0
		do
--			actionListeners.get().selectRule(rule)
		ensure
		end

	notifyNewGame(port : INTEGER)
		require
			0 < port
			port < 65535
		local
			net_game : G21_NET_GAME
		do
			create net_game
			net_game.show
			--launch
--			actionListeners.get().newGame(port)
		ensure
		end

	notifyJoinGame(IP : STRING; port : INTEGER)
		require-- to or me tis ip dn mporoume na to valoyme. etsi dn einai?
			0 < port
			port < 65535
		do
--			actionListeners.get().joinGame(IP, port)
		ensure
		end

	notifySave()
		require
		do
--			actionListeners.get().save()
		ensure
		end

	notifyError(msg_a : STRING)
		require
			msg_a /= Void
		do
--			notifyListeners.get().errorMessage(msg)
		ensure
		end

	notifyMessage(msg_a : STRING)
		require
			msg_a /= Void
		do
--			notifyListeners.get().errorMessage(msg)
		ensure
		end

	notifyStatusMessage(msg_a : STRING)
		require
			msg_a /= Void
		do
--			notifyListeners.get().statusMessage(msg)
		ensure
		end

	errorMessage(msg_a : STRING)
	do

	end

	statusMessage(msg_a : STRING)
	do

	end

	sendCardPick(card_a : G21_CARD)
	do
		listener.message("Player1 "+"Select Card"+card_a.cardName)
	end

	sendCardSelect(card : G21_CARD)
	do

	end

	sendCardPlay(card : G21_CARD; row : INTEGER ; col : INTEGER)
	do
		actionListener.playCard(card, row , col)
	end

	notifiermessage(msg_a : STRING)
	local
		i : INTEGER
		net_game_join : G21_NET_GAME
		ip_la : STRING
		port_la : INTEGER

	do
		--Save Game
		if (msg_a = "SAVE") then
			from i := 1
			until i = actionListener.count
			loop
				actionListener.item.save
				actionListener.forth
			end
		end

		if (msg = "EXIT") then
			from i := 1
			until i = notifyListener.count
			loop
				notifyListener.item.messageReceived("EXIT")
				notifyListener.forth
			end
		end

		if (msg = "AI_EASY") then
			from i := 1
			until i = actionListener.count
			loop
				actionListener.item.newGame(false,1,0)
				actionListener.forth
			end
		end

		if (msg = "AI_MEDIUM") then
			from i := 1
			until i = actionListener.count
			loop
				actionListener.item.newGame(false,2,0)
				actionListener.forth
			end
		end

		if (msg = "AI_HARD") then
			from i := 1
			until i = actionListener.count
			loop
				actionListener.item.newGame(false,3,0)
				actionListener.forth
			end
		end

		--Join Game
		if (msg_a = "JOINGAME") then

			create net_game_join
			net_game_join.show
			net_game_join.addListener(actionListener.item)
		end

		if (msg_a = "HOSTGAME") then

			create net_game_host
			net_game_host.show
			net_game_host.addListener(actionListener.item)
		end
	end
end
