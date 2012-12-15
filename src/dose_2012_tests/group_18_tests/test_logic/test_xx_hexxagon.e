note
	description: "Test on XX_HEXXAGON class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "type/manual"

class
	TEST_XX_HEXXAGON

inherit
	EQA_TEST_SET

feature -- Test routines

	--Tests the routine make_hexxagon
	test_make_hexxagon
		note
			testing:  "covers/{XX_HEXXAGON}.make_hexxagon"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
		do
			create l_hexxagon.make_hexxagon
			assert ("Hexxagon not Void ", l_hexxagon/=Void)
		end

	--Tests the routine associated_move
	test_associated_move
		note
			testing:  "covers/{XX_HEXXAGON}.associated_move"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_possible_move: XX_POSSIBLE_MOVES
		do
			create l_hexxagon.make_hexxagon
			create l_possible_move.make_possible_moves
			l_possible_move.set_move (0, 1, 2)
			l_hexxagon.associated_move (l_possible_move)
			assert ("Possible move is not void ", l_possible_move/=Void)
		end

	--Tests the routine other_move
	test_other_move
		note
			testing:  "covers/{XX_HEXXAGON}.other_move"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_possible_move: XX_POSSIBLE_MOVES
		do
			create l_hexxagon.make_hexxagon
			create l_possible_move.make_possible_moves
			l_hexxagon.other_move (l_possible_move)
			assert ("possible move is not void", l_possible_move/=Void)
		end

	--Tests the routine receive_gui_board
	test_receive_gui_board

		note
			testing:  "covers/{XX_HEXXAGON}.receive_gui_board"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_gui_board: XX_BOARD
		do
			create l_hexxagon.make_hexxagon
			create l_gui_board.make_board
			l_hexxagon.receive_board (l_gui_board)
			assert ("gui board is not void", l_gui_board/=void)
		end

	--Tests the routine receive_game_status
	test_receive_game_status

		note
			testing:  "covers/{XX_HEXXAGON}.receive_game_status"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_player1: XX_PLAYER
			l_player2: XX_PLAYER
			l_is_active: BOOLEAN
			l_id_player1: STRING
			l_id_player2: STRING
			l_color_player1: STRING
			l_color_player2: STRING
			l_i: INTEGER
			l_j: INTEGER
		do
			create l_hexxagon.make_hexxagon

			from
				l_i:=0
			until
				l_i>=2
			loop
				l_id_player1:="id_player"
				l_id_player1.append_integer (l_i)
				l_id_player1:="id_player"
				l_id_player1.append_integer ((l_i+4))
				from
					l_j:=0
				until
					l_j>=2
				loop
					if(l_j=0)then
						l_color_player1:="Rubies"
						l_color_player2:="Pearls"
						l_is_active:=TRUE
					else
						l_color_player1:="Pearls"
						l_color_player2:="Rubies"
						l_is_active:=FALSE
					end
					create l_player1.make_player (l_id_player1, l_color_player1)
					create l_player2.make_player (l_id_player2, l_color_player2)
					l_hexxagon.receive_game_status (l_player1, l_player2, l_is_active)
					assert ("player not void", l_player1/=Void and l_player2/=Void)
					l_j:=l_j+1
				end
				l_i:=l_i+1
			end
		end

	--Tests the routine abort_game
	test_abort_game

		note
			testing:  "covers/{XX_HEXXAGON}.abort_game"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
		do
			create l_hexxagon.make_hexxagon
			l_hexxagon.abort_game
			assert ("hexxagon is not void ", l_hexxagon/=Void)
		end

	--Tests the routine exit_game
	test_exit_game

		note
			testing:  "covers/{XX_HEXXAGON}.exit_game"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
		do
			create l_hexxagon.make_hexxagon
			l_hexxagon.exit_game
			assert ("hexxagon is not void ", l_hexxagon/=Void)
		end

	--Tests the routine victory
	test_victory

		note
			testing:  "covers/{XX_HEXXAGON}.victory"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
		do
			create l_hexxagon.make_hexxagon
			l_hexxagon.victory
			assert ("hexxagon is not void ", l_hexxagon/=Void)
		end

	--Tests the routine defeat
	test_defeat

		note
			testing:  "covers/{XX_HEXXAGON}.defeat"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
		do
			create l_hexxagon.make_hexxagon
			l_hexxagon.defeat
			assert ("hexxagon is not void ", l_hexxagon/=Void)
		end

	--Tests the routine set_single_player
	test_set_single_player
		note
			testing:  "covers/{XX_HEXXAGON}.set_single_player"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_name_player: STRING
			l_color_player: STRING
			l_i: INTEGER
		do
			create l_hexxagon.make_hexxagon

			from
				l_i:=0
			until
				l_i>=4
			loop
				l_name_player:="NamePlayer"
				l_name_player.append_integer (l_i)

				l_color_player:="Rubies"
				l_hexxagon.set_single_player (l_name_player, l_color_player)
				assert ("hexxagon is not void ", not l_name_player.is_equal (""))

				l_color_player:="Pearls"
				l_hexxagon.set_single_player (l_name_player, l_color_player)
				assert ("hexxagon is not void ", not l_name_player.is_equal (""))
				l_i:=l_i+1
			end
		end

	--Tests the routine set_server_setup
	test_set_server_setup
		note
			testing:  "covers/{XX_HEXXAGON}.set_multi_player"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_name_player: STRING
			l_color_player: STRING
			l_ip: STRING
			l_port: INTEGER
			l_i: INTEGER
			l_j: INTEGER
		do
			create l_hexxagon.make_hexxagon

			--First test
			l_name_player:="NamePlayer"
			l_color_player:="Rubies"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_server_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Pearls"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_server_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Rubies"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_server_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Pearls"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_server_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void and inputs are valid ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end
		end

	--Tests the routine receive_chat_enable
	test_receive_chat_enable
		note
			testing:  "covers/{XX_HEXXAGON}.receive_chat_enable"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_chat_enable: BOOLEAN
		do
			create l_hexxagon.make_hexxagon
			l_chat_enable:=TRUE

			l_hexxagon.receive_chat_enable (l_chat_enable)
			assert ("hexxagon not void ", l_hexxagon/=Void)
		end

--Tests the routine set_server_setup
	test_set_client_setup
		note
			testing:  "covers/{XX_HEXXAGON}.set_multi_player"
			testing: "user/XX"
		local
			l_hexxagon: XX_HEXXAGON
			l_name_player: STRING
			l_color_player: STRING
			l_ip: STRING
			l_port: INTEGER
			l_i: INTEGER
			l_j: INTEGER
		do
			create l_hexxagon.make_hexxagon

			--First test
			l_name_player:="NamePlayer"
			l_color_player:="Rubies"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_client_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Pearls"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_client_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Rubies"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_client_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end

			l_color_player:="Pearls"
			from
				l_j:=0
			until
				l_j>=4
			loop
				l_ip:=""
				l_ip.append_integer ((l_j*4))
				l_ip.append (".")
				l_ip.append_integer ((l_j*6))
				l_ip.append (".")
				l_ip.append_integer ((l_j*9))
				l_ip.append (".")
				l_ip.append_integer ((l_j*11))
				from
					l_i:=1
				until
					l_i>=65535
				loop
					l_port:=l_i
					l_name_player.append_integer (l_i)

					l_hexxagon.set_client_setup (l_name_player, l_ip, l_port)
					assert ("hexxagon is not void and inputs are valid ", not l_name_player.is_equal ("") and (l_color_player.is_equal ("Rubies")=TRUE or l_color_player.is_equal ("Pearls")=TRUE) and not l_ip.is_equal ("") and (l_port>0 and l_port<65536))
					l_i:=l_i+1
				end
				l_j:=l_j+1
			end
		end

end
