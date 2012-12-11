note
	description : "G21_GUI summary description"
	author: "Crete5"

class
	G21_GUI

create
	newGUI

feature -- Atributes

		-- A list of player's cards on hand
		cards: ARRAYED_LIST[G21_CARD]
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
		notifyListener : ARRAYED_LIST[G21_NOTIFYLISTENER]

feature {ANY} -- Operations

	newGUI () --Constructor of GUI
		require
		do
		ensure
		end

	updateHand(cards_a : ARRAYED_LIST[g21_Card])
		require
		do
--			updateGUIHand()
		ensure
			cards = cards_a
		end

	updateBoard(board_a : g21_Card)
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

	newGame(port : INTEGER)
		require
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
		do
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

end
