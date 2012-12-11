note
    description: "[
        Eiffel tests for the B8_MODE class.
    ]"
    author: "Dimitris Deyannis,Stefano Di Palma"
    date: "08/12/2012"
    revision: "1.0"
    testing: "type/manual"

class
    B8_TEST_MODE

inherit
    EQA_TEST_SET

feature -- Test routines

	test_is_game_over
			-- Tests game over
		note
			testing:	"covers/{B8_MODE}.is_game_over"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
			i,j:INTEGER
			moves:ARRAYED_LIST[B8_MOVE]
			tile:B8_GAME_TILE
			valid:BOOLEAN
--			k,h:INTEGER
--			output_file: PLAIN_TEXT_FILE
		do
--            create output_file.make_open_write ("C:\Users\Stefano\Desktop\output.txt")
			create l_new_game.make
			create moves.make (100)
			moves.force (create {B8_MOVE}.make(0,10,10,{B8_GAME_TILE}.pentamino5,0,0,False))--must start at the corner of the board
			moves.force (create {B8_MOVE}.make(0,2,17,{B8_GAME_TILE}.pentamino5,0,0,True))--1
			moves.force (create {B8_MOVE}.make(1,0,0,{B8_GAME_TILE}.pentamino3,0,1,True))--2
			moves.force (create {B8_MOVE}.make(2,18,0,{B8_GAME_TILE}.pentamino8,0,2,True))--3
			moves.force (create {B8_MOVE}.make(2,16,3,{B8_GAME_TILE}.pentamino1,1,2,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(3,19,19,{B8_GAME_TILE}.pentamino5,1,3,True))--4

			moves.force (create {B8_MOVE}.make(0,4,15,{B8_GAME_TILE}.pentamino4,0,0,True))--5
			moves.force (create {B8_MOVE}.make(1,2,3,{B8_GAME_TILE}.pentamino10,0,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,3,3,{B8_GAME_TILE}.pentamino10,0,1,True))--6
			moves.force (create {B8_MOVE}.make(2,16,3,{B8_GAME_TILE}.pentamino1,1,2,True))--7
			moves.force (create {B8_MOVE}.make(3,14,15,{B8_GAME_TILE}.pentamino8,3,3,True))--8

			moves.force (create {B8_MOVE}.make(0,7,9,{B8_GAME_TILE}.pentamino6,0,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,7,10,{B8_GAME_TILE}.pentamino6,0,0,True))--9
			moves.force (create {B8_MOVE}.make(1,4,6,{B8_GAME_TILE}.pentamino6,3,1,True))--10
			moves.force (create {B8_MOVE}.make(2,13,7,{B8_GAME_TILE}.pentamino9,0,2,True))--11
			moves.force (create {B8_MOVE}.make(3,13,13,{B8_GAME_TILE}.pentamino6,1,3,True))--12

			moves.force (create {B8_MOVE}.make(0,9,8,{B8_GAME_TILE}.pentamino10,0,0,True))--13
			moves.force (create {B8_MOVE}.make(1,10,4,{B8_GAME_TILE}.pentamino12,0,1,True))--14
			moves.force (create {B8_MOVE}.make(2,13,9,{B8_GAME_TILE}.pentamino12,0,2,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(2,12,10,{B8_GAME_TILE}.pentamino12,0,2,True))--15
			moves.force (create {B8_MOVE}.make(3,8,14,{B8_GAME_TILE}.pentamino11,0,3,True))--16

			moves.force (create {B8_MOVE}.make(0,11,7,{B8_GAME_TILE}.tetramino4,2,0,True))--17
			moves.force (create {B8_MOVE}.make(1,13,4,{B8_GAME_TILE}.pentamino1,3,1,True))--18
			moves.force (create {B8_MOVE}.make(2,16,11,{B8_GAME_TILE}.pentamino4,0,2,True))--19
			moves.force (create {B8_MOVE}.make(3,9,19,{B8_GAME_TILE}.pentamino12,0,3,False))--This is out of the board
			moves.force (create {B8_MOVE}.make(3,9,17,{B8_GAME_TILE}.pentamino12,0,3,True))--20

			moves.force (create {B8_MOVE}.make(0,1,14,{B8_GAME_TILE}.pentamino4,1,0,False))--this is already played by the player
			moves.force (create {B8_MOVE}.make(0,0,15,{B8_GAME_TILE}.tetramino2,3,0,True))--21
			moves.force (create {B8_MOVE}.make(1,5,0,{B8_GAME_TILE}.pentamino7,1,1,True))--22
			moves.force (create {B8_MOVE}.make(2,17,13,{B8_GAME_TILE}.pentamino11,0,2,True))--23
			moves.force (create {B8_MOVE}.make(3,4,18,{B8_GAME_TILE}.pentamino1,0,3,True))--24

			moves.force (create {B8_MOVE}.make(0,5,12,{B8_GAME_TILE}.pentamino3,1,0,True))--25
			moves.force (create {B8_MOVE}.make(1,3,6,{B8_GAME_TILE}.pentamino5,0,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,3,7,{B8_GAME_TILE}.pentamino5,0,1,True))--26
			moves.force (create {B8_MOVE}.make(2,18,8,{B8_GAME_TILE}.tetramino4,3,2,True))--27
			moves.force (create {B8_MOVE}.make(3,13,18,{B8_GAME_TILE}.tetramino2,0,3,True))--28

			moves.force (create {B8_MOVE}.make(0,1,11,{B8_GAME_TILE}.pentamino8,0,0,True))--29
			moves.force (create {B8_MOVE}.make(1,4,9,{B8_GAME_TILE}.pentamino11,0,1,True))--30
			moves.force (create {B8_MOVE}.make(2,19,15,{B8_GAME_TILE}.tetramino3,1,2,True))--31
			moves.force (create {B8_MOVE}.make(2,9,11,{B8_GAME_TILE}.tetramino2,0,2,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(3,5,17,{B8_GAME_TILE}.trinomino1,3,3,True))--32

			moves.force (create {B8_MOVE}.make(0,0,7,{B8_GAME_TILE}.tetramino3,1,0,True))--33
			moves.force (create {B8_MOVE}.make(1,0,5,{B8_GAME_TILE}.trinomino1,0,1,True))--34
			moves.force (create {B8_MOVE}.make(2,8,11,{B8_GAME_TILE}.tetramino2,0,2,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(2,9,11,{B8_GAME_TILE}.tetramino2,0,2,True))--35
			moves.force (create {B8_MOVE}.make(3,15,18,{B8_GAME_TILE}.binomino,0,3,True))--36

			moves.force (create {B8_MOVE}.make(0,5,9,{B8_GAME_TILE}.pentamino2,2,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,6,9,{B8_GAME_TILE}.pentamino2,2,0,True))--37
			moves.force (create {B8_MOVE}.make(1,9,2,{B8_GAME_TILE}.pentamino8,0,1,True))--38
			moves.force (create {B8_MOVE}.make(2,12,0,{B8_GAME_TILE}.pentamino6,3,2,True))--39
			moves.force (create {B8_MOVE}.make(3,10,16,{B8_GAME_TILE}.tetramino3,0,3,True))--40

			moves.force (create {B8_MOVE}.make(0,3,19,{B8_GAME_TILE}.monomino,0,0,True))--41
			moves.force (create {B8_MOVE}.make(1,8,1,{B8_GAME_TILE}.tetramino2,1,1,True))--42
			moves.force (create {B8_MOVE}.make(2,11,1,{B8_GAME_TILE}.trinomino2,1,2,True))--43
			moves.force (create {B8_MOVE}.make(3,15,13,{B8_GAME_TILE}.binomino,0,3,False))--this is already played by the player
			moves.force (create {B8_MOVE}.make(3,14,17,{B8_GAME_TILE}.monomino,0,3,True))--44

			moves.force (create {B8_MOVE}.make(0,6,4,{B8_GAME_TILE}.trinomino1,3,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,11,10,{B8_GAME_TILE}.trinomino1,3,0,True))--45
			moves.force (create {B8_MOVE}.make(1,9,0,{B8_GAME_TILE}.binomino,0,1,True))--46
			moves.force (create {B8_MOVE}.make(2,16,7,{B8_GAME_TILE}.tetramino5,0,2,True))--47
			moves.force (create {B8_MOVE}.make(3,4,14,{B8_GAME_TILE}.trinomino2,0,3,True))--48

			moves.force (create {B8_MOVE}.make(0,15,11,{B8_GAME_TILE}.pentamino12,2,0,True))--49
			moves.force (create {B8_MOVE}.make(1,6,10,{B8_GAME_TILE}.trinomino2,1,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,6,11,{B8_GAME_TILE}.trinomino2,1,1,True))--50
			moves.force (create {B8_MOVE}.make(2,19,12,{B8_GAME_TILE}.binomino,1,2,True))--51
			moves.force (create {B8_MOVE}.make(3,3,15,{B8_GAME_TILE}.tetramino4,1,3,True))--52

			moves.force (create {B8_MOVE}.make(0,17,9,{B8_GAME_TILE}.tetramino5,3,0,True))--53
			moves.force (create {B8_MOVE}.make(1,9,7,{B8_GAME_TILE}.monomino,0,1,True))--54
			moves.force (create {B8_MOVE}.make(2,19,5,{B8_GAME_TILE}.tetramino1,0,2,False))--This is out of the board
			moves.force (create {B8_MOVE}.make(2,18,5,{B8_GAME_TILE}.tetramino1,0,2,True))--55

			moves.force (create {B8_MOVE}.make(0,18,7,{B8_GAME_TILE}.binomino,0,0,True))--56
			moves.force (create {B8_MOVE}.make(2,17,4,{B8_GAME_TILE}.monomino,0,2,True))--57

			moves.force (create {B8_MOVE}.make(0,16,4,{B8_GAME_TILE}.pentamino7,0,0,True))--58
			moves.force (create {B8_MOVE}.make(0,17,3,{B8_GAME_TILE}.pentamino1,0,0,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(0,18,4,{B8_GAME_TILE}.pentamino1,3,0,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(2,19,2,{B8_GAME_TILE}.trinomino1,1,2,True))--59

			moves.force (create {B8_MOVE}.make(0,7,16,{B8_GAME_TILE}.pentamino11,0,0,True))--60
			moves.force (create {B8_MOVE}.make(0,8,19,{B8_GAME_TILE}.trinomino2,0,0,True))--61
			moves.force (create {B8_MOVE}.make(0,14,13,{B8_GAME_TILE}.pentamino1,2,0,True))--62
			moves.force (create {B8_MOVE}.make(0,13,14,{B8_GAME_TILE}.pentamino9,1,0,True))--63

			l_new_game.set_player_id(0)
		 	l_new_game.set_game_mode ({B8_MODE}.four_player)
			l_new_game.start_game

		 	from
				i:=1
		 	until i>moves.count
		 	loop
		 		tile:=l_new_game.get_players[moves[i].color+1].get_tile(moves[i].tile)
		 		from j:=0
		 		until j>=moves[i].rotation or tile=Void
		 		loop
		 			tile.rotate (1,1)
		 			j:=j+1
		 		end
				valid:=l_new_game.make_a_move (moves[i].player, moves[i].x,moves[i].y,tile)
				if(valid)then
					l_new_game.confirm_last_move ()
				end
		 		if(moves[i].valid)then
--		 			if(not valid)then
--		 				output_file.close
--		 			end
					assert("the "+i.out+" move is not valid: "+moves[i].x.out+" "+moves[i].y.out,valid)
				else
--					if(valid)then
--		 				output_file.close
--		 			end
					assert("the "+i.out+" move is valid: "+moves[i].x.out+" "+moves[i].y.out,not valid)
				end
--				output_file.put_string ("%NAfter move "+i.out+"%N")
--				from k:=1
--				until k>l_new_game.get_board.get_placed_tiles.count
--				loop
--					tile:=l_new_game.get_board.get_placed_tiles[k]
--					output_file.put_string ("GameTile"+tile.get_color.out+" "+tile.get_type.out+":%N")
--					from h:=1
--					until h>tile.get_monomini.count
--					loop
--						output_file.put_string (tile.get_monomini[h].get_x.out+" "+tile.get_monomini[h].get_y.out+"%N")
--						h:=h+1
--					end
--					k:=k+1
--				end
				i:=i+1
		 	end
--		 	output_file.close

			assert("Game is not Over", l_new_game.get_game_mode.is_game_over)
			assert ("Game is started", not l_new_game.game_is_started)
			assert("Player 1 scoreis not correct",l_new_game.get_players[1].get_score=-4)
			assert("Player 2 scoreis not correct",l_new_game.get_players[2].get_score=-31)
			assert("Player 3 scoreis not correct",l_new_game.get_players[3].get_score=-25)
			assert("Player 4 scoreis not correct",l_new_game.get_players[4].get_score=-38)
		end

	test_is_game_over2
			-- Tests game over
		note
			testing:	"covers/{B8_MODE}.is_game_over"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
			i,j:INTEGER
			moves:ARRAYED_LIST[B8_MOVE]
			tile:B8_GAME_TILE
			valid:BOOLEAN
--			k,h:INTEGER
--			output_file: PLAIN_TEXT_FILE
		do
--            create output_file.make_open_write ("C:\Users\Stefano\Desktop\output.txt")
			create l_new_game.make
			create moves.make (100)
			moves.force (create {B8_MOVE}.make(0,10,10,{B8_GAME_TILE}.pentamino5,0,0,False))--must start at the corner of the board
			moves.force (create {B8_MOVE}.make(0,2,17,{B8_GAME_TILE}.pentamino5,0,0,True))--1
			moves.force (create {B8_MOVE}.make(1,0,0,{B8_GAME_TILE}.pentamino3,0,1,True))--2
			moves.force (create {B8_MOVE}.make(0,18,0,{B8_GAME_TILE}.pentamino8,0,2,True))--3
			moves.force (create {B8_MOVE}.make(0,16,3,{B8_GAME_TILE}.pentamino1,1,2,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(1,19,19,{B8_GAME_TILE}.pentamino5,1,3,True))--4

			moves.force (create {B8_MOVE}.make(0,4,15,{B8_GAME_TILE}.pentamino4,0,0,True))--5
			moves.force (create {B8_MOVE}.make(1,2,3,{B8_GAME_TILE}.pentamino10,0,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,3,3,{B8_GAME_TILE}.pentamino10,0,1,True))--6
			moves.force (create {B8_MOVE}.make(0,16,3,{B8_GAME_TILE}.pentamino1,1,2,True))--7
			moves.force (create {B8_MOVE}.make(1,14,15,{B8_GAME_TILE}.pentamino8,3,3,True))--8

			moves.force (create {B8_MOVE}.make(0,7,9,{B8_GAME_TILE}.pentamino6,0,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,7,10,{B8_GAME_TILE}.pentamino6,0,0,True))--9
			moves.force (create {B8_MOVE}.make(1,4,6,{B8_GAME_TILE}.pentamino6,3,1,True))--10
			moves.force (create {B8_MOVE}.make(0,13,7,{B8_GAME_TILE}.pentamino9,0,2,True))--11
			moves.force (create {B8_MOVE}.make(1,13,13,{B8_GAME_TILE}.pentamino6,1,3,True))--12

			moves.force (create {B8_MOVE}.make(0,9,8,{B8_GAME_TILE}.pentamino10,0,0,True))--13
			moves.force (create {B8_MOVE}.make(1,10,4,{B8_GAME_TILE}.pentamino12,0,1,True))--14
			moves.force (create {B8_MOVE}.make(0,13,9,{B8_GAME_TILE}.pentamino12,0,2,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(0,12,10,{B8_GAME_TILE}.pentamino12,0,2,True))--15
			moves.force (create {B8_MOVE}.make(1,8,14,{B8_GAME_TILE}.pentamino11,0,3,True))--16

			moves.force (create {B8_MOVE}.make(0,11,7,{B8_GAME_TILE}.tetramino4,2,0,True))--17
			moves.force (create {B8_MOVE}.make(1,13,4,{B8_GAME_TILE}.pentamino1,3,1,True))--18
			moves.force (create {B8_MOVE}.make(0,16,11,{B8_GAME_TILE}.pentamino4,0,2,True))--19
			moves.force (create {B8_MOVE}.make(1,9,19,{B8_GAME_TILE}.pentamino12,0,3,False))--This is out of the board
			moves.force (create {B8_MOVE}.make(1,9,17,{B8_GAME_TILE}.pentamino12,0,3,True))--20

			moves.force (create {B8_MOVE}.make(0,1,14,{B8_GAME_TILE}.pentamino4,1,0,False))--this is already played by the player
			moves.force (create {B8_MOVE}.make(0,0,15,{B8_GAME_TILE}.tetramino2,3,0,True))--21
			moves.force (create {B8_MOVE}.make(1,5,0,{B8_GAME_TILE}.pentamino7,1,1,True))--22
			moves.force (create {B8_MOVE}.make(0,17,13,{B8_GAME_TILE}.pentamino11,0,2,True))--23
			moves.force (create {B8_MOVE}.make(1,4,18,{B8_GAME_TILE}.pentamino1,0,3,True))--24

			moves.force (create {B8_MOVE}.make(0,5,12,{B8_GAME_TILE}.pentamino3,1,0,True))--25
			moves.force (create {B8_MOVE}.make(1,3,6,{B8_GAME_TILE}.pentamino5,0,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,3,7,{B8_GAME_TILE}.pentamino5,0,1,True))--26
			moves.force (create {B8_MOVE}.make(0,18,8,{B8_GAME_TILE}.tetramino4,3,2,True))--27
			moves.force (create {B8_MOVE}.make(1,13,18,{B8_GAME_TILE}.tetramino2,0,3,True))--28

			moves.force (create {B8_MOVE}.make(0,1,11,{B8_GAME_TILE}.pentamino8,0,0,True))--29
			moves.force (create {B8_MOVE}.make(1,4,9,{B8_GAME_TILE}.pentamino11,0,1,True))--30
			moves.force (create {B8_MOVE}.make(0,19,15,{B8_GAME_TILE}.tetramino3,1,2,True))--31
			moves.force (create {B8_MOVE}.make(0,9,11,{B8_GAME_TILE}.tetramino2,0,2,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(1,5,17,{B8_GAME_TILE}.trinomino1,3,3,True))--32

			moves.force (create {B8_MOVE}.make(0,0,7,{B8_GAME_TILE}.tetramino3,1,0,True))--33
			moves.force (create {B8_MOVE}.make(1,0,5,{B8_GAME_TILE}.trinomino1,0,1,True))--34
			moves.force (create {B8_MOVE}.make(0,8,11,{B8_GAME_TILE}.tetramino2,0,2,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(0,9,11,{B8_GAME_TILE}.tetramino2,0,2,True))--35
			moves.force (create {B8_MOVE}.make(1,15,18,{B8_GAME_TILE}.binomino,0,3,True))--36

			moves.force (create {B8_MOVE}.make(0,5,9,{B8_GAME_TILE}.pentamino2,2,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,6,9,{B8_GAME_TILE}.pentamino2,2,0,True))--37
			moves.force (create {B8_MOVE}.make(1,9,2,{B8_GAME_TILE}.pentamino8,0,1,True))--38
			moves.force (create {B8_MOVE}.make(0,12,0,{B8_GAME_TILE}.pentamino6,3,2,True))--39
			moves.force (create {B8_MOVE}.make(1,10,16,{B8_GAME_TILE}.tetramino3,0,3,True))--40

			moves.force (create {B8_MOVE}.make(0,3,19,{B8_GAME_TILE}.monomino,0,0,True))--41
			moves.force (create {B8_MOVE}.make(1,8,1,{B8_GAME_TILE}.tetramino2,1,1,True))--42
			moves.force (create {B8_MOVE}.make(0,11,1,{B8_GAME_TILE}.trinomino2,1,2,True))--43
			moves.force (create {B8_MOVE}.make(1,15,13,{B8_GAME_TILE}.binomino,0,3,False))--this is already played by the player
			moves.force (create {B8_MOVE}.make(1,14,17,{B8_GAME_TILE}.monomino,0,3,True))--44

			moves.force (create {B8_MOVE}.make(0,6,4,{B8_GAME_TILE}.trinomino1,3,0,False))--this is not at the corner of his game tile
			moves.force (create {B8_MOVE}.make(0,11,10,{B8_GAME_TILE}.trinomino1,3,0,True))--45
			moves.force (create {B8_MOVE}.make(1,9,0,{B8_GAME_TILE}.binomino,0,1,True))--46
			moves.force (create {B8_MOVE}.make(0,16,7,{B8_GAME_TILE}.tetramino5,0,2,True))--47
			moves.force (create {B8_MOVE}.make(1,4,14,{B8_GAME_TILE}.trinomino2,0,3,True))--48

			moves.force (create {B8_MOVE}.make(0,15,11,{B8_GAME_TILE}.pentamino12,2,0,True))--49
			moves.force (create {B8_MOVE}.make(1,6,10,{B8_GAME_TILE}.trinomino2,1,1,False))--this is at the border of his other tile
			moves.force (create {B8_MOVE}.make(1,6,11,{B8_GAME_TILE}.trinomino2,1,1,True))--50
			moves.force (create {B8_MOVE}.make(0,19,12,{B8_GAME_TILE}.binomino,1,2,True))--51
			moves.force (create {B8_MOVE}.make(1,3,15,{B8_GAME_TILE}.tetramino4,1,3,True))--52

			moves.force (create {B8_MOVE}.make(0,17,9,{B8_GAME_TILE}.tetramino5,3,0,True))--53
			moves.force (create {B8_MOVE}.make(1,9,7,{B8_GAME_TILE}.monomino,0,1,True))--54
			moves.force (create {B8_MOVE}.make(0,19,5,{B8_GAME_TILE}.tetramino1,0,2,False))--This is out of the board
			moves.force (create {B8_MOVE}.make(0,18,5,{B8_GAME_TILE}.tetramino1,0,2,True))--55

			moves.force (create {B8_MOVE}.make(0,18,7,{B8_GAME_TILE}.binomino,0,0,True))--56
			moves.force (create {B8_MOVE}.make(0,17,4,{B8_GAME_TILE}.monomino,0,2,True))--57

			moves.force (create {B8_MOVE}.make(0,16,4,{B8_GAME_TILE}.pentamino7,0,0,True))--58
			moves.force (create {B8_MOVE}.make(0,17,3,{B8_GAME_TILE}.pentamino1,0,0,False))--this is overlapping
			moves.force (create {B8_MOVE}.make(0,18,4,{B8_GAME_TILE}.pentamino1,3,0,False))--this is not his turn
			moves.force (create {B8_MOVE}.make(0,19,2,{B8_GAME_TILE}.trinomino1,1,2,True))--59

			moves.force (create {B8_MOVE}.make(0,7,16,{B8_GAME_TILE}.pentamino11,0,0,True))--60
			moves.force (create {B8_MOVE}.make(0,8,19,{B8_GAME_TILE}.trinomino2,0,0,True))--61
			moves.force (create {B8_MOVE}.make(0,14,13,{B8_GAME_TILE}.pentamino1,2,0,True))--62
			moves.force (create {B8_MOVE}.make(0,13,14,{B8_GAME_TILE}.pentamino9,1,0,True))--63

			l_new_game.set_player_id(0)
		 	l_new_game.set_game_mode ({B8_MODE}.two_player)
			l_new_game.start_game

		 	from
				i:=1
		 	until i>moves.count
		 	loop
		 		tile:=l_new_game.get_players[moves[i].color+1].get_tile(moves[i].tile)
		 		from j:=0
		 		until j>=moves[i].rotation or tile=Void
		 		loop
		 			tile.rotate (1,1)
		 			j:=j+1
		 		end
				valid:=l_new_game.make_a_move (moves[i].player, moves[i].x,moves[i].y,tile)
				if(valid)then
					l_new_game.confirm_last_move ()
				end
		 		if(moves[i].valid)then
--		 			if(not valid)then
--		 				output_file.close
--		 			end
					assert("the "+i.out+" move is not valid: "+moves[i].x.out+" "+moves[i].y.out,valid)
				else
--					if(valid)then
--		 				output_file.close
--		 			end
					assert("the "+i.out+" move is valid: "+moves[i].x.out+" "+moves[i].y.out,not valid)
				end
--				output_file.put_string ("%NAfter move "+i.out+"%N")
--				from k:=1
--				until k>l_new_game.get_board.get_placed_tiles.count
--				loop
--					tile:=l_new_game.get_board.get_placed_tiles[k]
--					output_file.put_string ("GameTile"+tile.get_color.out+" "+tile.get_type.out+":%N")
--					from h:=1
--					until h>tile.get_monomini.count
--					loop
--						output_file.put_string (tile.get_monomini[h].get_x.out+" "+tile.get_monomini[h].get_y.out+"%N")
--						h:=h+1
--					end
--					k:=k+1
--				end
				i:=i+1
		 	end
--		 	output_file.close

			assert("Game is not Over", l_new_game.get_game_mode.is_game_over)
			assert ("Game is started", not l_new_game.game_is_started)
			assert("Player 1 scoreis not correct",l_new_game.get_players[1].get_score=-4)
			assert("Player 2 scoreis not correct",l_new_game.get_players[2].get_score=-31)
			assert("Player 3 scoreis not correct",l_new_game.get_players[3].get_score=-25)
			assert("Player 4 scoreis not correct",l_new_game.get_players[4].get_score=-38)
		end

	test_next_move
			-- Tests the next move
		note
			testing:	"covers/{B8_MODE}.next_turn"
			testing:	"user/B8"
		local
			l_new_game: B8_LOGIC
		do
			create l_new_game.make
			l_new_game.set_player_id(0)
		 	l_new_game.set_game_mode ({B8_MODE}.four_player)
			l_new_game.start_game
			assert("It is turn 0", l_new_game.get_turn = 0)
			assert("Make a move", l_new_game.make_a_move (0,0,0,l_new_game.get_players[1].get_tiles[1]))
			l_new_game.confirm_last_move ()
			assert("Turn has changed", l_new_game.get_turn = 1)
		end
end
