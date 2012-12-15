note
	description: "Summary description for {TEST_XX_GUI}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Nada Feteha"

class
	TEST_XX_GUI
inherit
    EQA_TEST_SET

--feature -- Test routines
--	test_set_game_status--mfrod bt3ml eh
--		note
--			testing: "covers/{XX_GUI}.set_game_status"
--			testing: "user/XX"
--		local
--			l_GUI :XX_GUI
--			l_player:XX_PLAYER
--			l_player2:XX_PLAYER
--			l_is_active: BOOLEAN
--			l_p_port_number: INTEGER
--			l_p_id: STRING
--			l_p_color:STRING
--			--fr bqy
--		do
--		-- Test 1
--			create l_GUI.make
--			l_is_active:= TRUE

--			l_GUI.set_game_status(l_player,l_player2 ,l_is_active)
--			assert ("Game status is set",l_player.get_player_id /= Void)

--		-- Test 2
--			create l_GUI.make
--			l_is_active:= FALSE
--			l_p_id:="XX_P1_PIPPO"
--			l_p_color:="Rubies"
--			create l_player.make_player (l_p_id, l_p_color)

--				l_GUI.set_game_status(l_player ,l_player2 , l_is_active)
--				assert ("Game status isn't set",l_player.get_player_id= Void)
--		end

--	test_set_timer
--		note
--			testing: "covers/{XX_GUI}.set_timer"
--			testing: "user/XX"
--			local
--				l_GUI: XX_GUI
--				l_timer: XX_TIMER
--			do
--			 --Test 1
--			 create l_GUI.make
--			 create l_timer.make_timer
--			 l_GUI.set_timer (l_timer)
--			 assert ("Game Timer is set",l_timer/= Void)
--			end
--	test_set_board
--		note
--			testing: "{covers/XX_GUI}.set_board"
--			testing: "user/XX"
--		local
--			l_GUI :XX_GUI
--			l_board: XX_GUI_BOARD
--		do
--		 create l_GUI.make
--		 create l_board.make

--		 l_GUI.set_board (l_board)
--		  assert ("Board is set", l_board.get_array/=void )
--		end


--	test_set_network_status
--		note
--			testing: "covers/XX_GUI).set_network_status"
--			testing: "user/XX"
--		local
--			l_GUI :XX_GUI
--		do

--		end

end

