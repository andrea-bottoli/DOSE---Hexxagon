note
	description: "[
		Eiffel tests for B8_LOGIC & B8_GAME_TILE.
	]"
	author: "George Vardakis,Stefano Di Palma,Andrea Braschi"
	date: "08/12/2012"
	revision: "1.0"
	testing: "type/manual"

class
	B8_TEST_LOGIC_AND_GAME_TILE

inherit
	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do

		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed. You can use it, for example, if you need
			-- to free resources etc. that your test were using.
		end
feature
	new_game:B8_LOGIC

feature -- Test routines

	test_valid_move

		note
			testing:  "covers/{B8_LOGIC}.make_a_move"
			testing:	"user/B8"
		do
			create new_game.make
			new_game.set_player_id(0)
		 	new_game.set_game_mode ({B8_MODE}.four_player)
			new_game.start_game
			if(new_game.make_a_move (0, 0,0, new_game.get_players[1].get_tile ({B8_GAME_TILE}.binomino)))then
				assert("Player still has the placed tile",new_game.get_players[1].get_tiles.count=20)
				assert("The move is not confirmed",new_game.confirm_last_move ().is_equal ("0 0 0 0 0 1"))
				assert ("Placing the second tile on the board is not valid",new_game.make_a_move(1,0,19,new_game.get_players[2].get_tiles[1]))
			else
				assert ("Tile1 was not added", false)
			end

		end

	test_start_game_and_initial_color
			-- New test routine
		note
			testing:  "covers/{B8_LOGIC}.start_game"
			testing:	"user/B8"
		do
			create new_game.make
			new_game.set_player_id(0)
		 	new_game.set_game_mode ({B8_MODE}.four_player)
			new_game.start_game
			assert("game is started",new_game.game_is_started=True)
			assert ("The initial active player is the one with ID=0", new_game.get_turn=0)
			assert("The colour of the player with ID=0 must be Blue",new_game.get_color=0)
			assert("The ID of this player's logic must be 0",new_game.get_player_id=0)
			assert("The board of the game must be empty",new_game.get_board.get_placed_number = 0)
			new_game.abort_game
			assert("Game is finished",new_game.game_is_started=False)
		end

	test_rotate_and_place
		note
			testing:	"covers/{B8_GAME_TILE}.rotate"
			testing:	"covers/{B8_GAME_TILE}.place"
			testing:	"user/B8"
		local
			tile,tile2,tile3: B8_GAME_TILE
			i:INTEGER
		do
			create tile.make (0, {B8_GAME_TILE}.pentamino8)
			tile.rotate (1,1)
			tile.rotate (1,1)
			tile.place (1, 19,1)
			create tile2.make (0, {B8_GAME_TILE}.pentamino8)
			tile2.place (1, 19,1)
			tile2.rotate (1,1)
			tile2.rotate (1,1)
			from i:=1
			until i>tile.get_monomini.count
			loop
				assert("The coordinates are different",tile.get_monomini[i].get_x=tile2.get_monomini[i].get_x
					and tile.get_monomini[i].get_y=tile2.get_monomini[i].get_y)
				i:=i+1
			end
			create tile3.make (0, {B8_GAME_TILE}.trinomino1)
			tile3.rotate (1,1)
			tile3.rotate (1,1)
			tile3.rotate (1,1)
			assert("first monomino bad-placed on rotation ",tile3.get_monomini[1].get_x=0
					and tile3.get_monomini[1].get_y=0)
			assert("second monomino bad-placed on rotation",tile3.get_monomini[2].get_x=0
					and tile3.get_monomini[2].get_y=-1)
			assert("third monomino bad-placed on rotation",tile3.get_monomini[3].get_x=1
					and tile3.get_monomini[3].get_y=-1)
			tile3.place(0,1,1)
			assert("first monomino bad-placed on place",tile3.get_monomini[1].get_x=0
							and tile3.get_monomini[1].get_y=1)
			assert("second monomino bad-placed on place"+tile3.get_monomini[2].get_x.out+" "+tile3.get_monomini[2].get_y.out,tile3.get_monomini[2].get_x=0
							and tile3.get_monomini[2].get_y=0)
			assert("third monomino bad-placed on rotation",tile3.get_monomini[3].get_x=1
							and tile3.get_monomini[3].get_y=0)
		end

	test_rotate_and_place2
		note
			testing:	"covers/{B8_GAME_TILE}.rotate"
			testing:	"covers/{B8_GAME_TILE}.place"
			testing:	"user/B8"
		local
			tile: B8_GAME_TILE
		do
			create tile.make (2, {B8_GAME_TILE}.pentamino1)
			tile.rotate (1,1)
			assert("The coordinates 1 are different on rotate",tile.get_monomini[1].get_x=0 and tile.get_monomini[1].get_y=0)
			assert("The coordinates 2 are different on rotate",tile.get_monomini[2].get_x=-1 and tile.get_monomini[2].get_y=0)
			assert("The coordinates 3 are different on rotate",tile.get_monomini[3].get_x=-1 and tile.get_monomini[3].get_y=1)
			assert("The coordinates 4 are different on rotate",tile.get_monomini[4].get_x=-1 and tile.get_monomini[4].get_y=2)
			assert("The coordinates 5 are different on rotate",tile.get_monomini[5].get_x=-1 and tile.get_monomini[5].get_y=3)
			tile.place (16,3,1)
			assert("The coordinates 1 are different on place",tile.get_monomini[1].get_x=16 and tile.get_monomini[1].get_y=3)
			assert("The coordinates 2 are different on place",tile.get_monomini[2].get_x=15 and tile.get_monomini[2].get_y=3)
			assert("The coordinates 3 are different on place",tile.get_monomini[3].get_x=15 and tile.get_monomini[3].get_y=4)
			assert("The coordinates 4 are different on place",tile.get_monomini[4].get_x=15 and tile.get_monomini[4].get_y=5)
			assert("The coordinates 5 are different on place",tile.get_monomini[5].get_x=15 and tile.get_monomini[5].get_y=6)
		end

	test_set_rotatione
	note
			testing:	"covers/{B8_GAME_TILE}.set_rotation"
			testing:	"covers/{B8_GAME_TILE}.get_rotation"
			testing:	"user/B8"
		local
			tile: B8_GAME_TILE
		do
			create tile.make (2, {B8_GAME_TILE}.pentamino1)
			tile.rotate (1,1)
			tile.rotate (1,1)
			assert("bad rotation returned",tile.get_rotation=2)
			tile.reset_position(1)
			tile.rotate (-1,1)
			tile.rotate (-1,1)
			assert("bad rotation returned",tile.get_rotation=-2)
			tile.reset_position(1)
			tile.set_rotation(3)
			assert("bad rotation returned",tile.get_rotation=3)
			tile.reset_position(1)
			tile.set_rotation(-3)
			assert("bad rotation returned",tile.get_rotation=-3)
			
		end

	test_reset_position
		note
			testing:	"covers/{B8_GAME_TILE}.reset_position"
			testing:	"user/B8"
		local
			i,j:INTEGER
			t1,t2:B8_GAME_TILE
		do
			from i:=1
			until i>20
			loop
				create t1.make (1, i)
				create t2.make (1,i)
				t1.place (2, 2,2)
				t1.rotate (1,2)
				t1.rotate (1,2)
				t1.rotate (1,2)
				t1.rotate (-1,2)
				t1.rotate (-1,2)
				t1.reset_position (2)

				from j:=1
				until j>t1.get_monomini.count
				loop
					assert(j.out+"th monomino from "+i.out+"th tile x bad resetted",t1.get_monomini[j].get_x=t2.get_monomini[j].get_x)
					assert(j.out+"th monomino from "+i.out+"th tile y bad resetted",t1.get_monomini[j].get_y=t2.get_monomini[j].get_y)
					j:=j+1
				end
				i:=i+1
			end
		end

	test_reset_position2
		note
			testing:	"covers/{B8_GAME_TILE}.reset_position"
			testing:	"user/B8"
		local
			i,j,k:INTEGER
			t1,t2:B8_GAME_TILE
		do
			from i:=1
			until i>20
			loop
				create t1.make (1,i)
				create t2.make (1,i)
				from k:=1
				until k>t1.get_monomini.count
				loop
					t1.place (2,2,k)
					t1.rotate (1,k)
					t1.rotate (1,k)
					t1.rotate (1,k)
					t1.rotate (-1,k)
					t1.rotate (-1,k)
					t1.reset_position (k)

					from j:=1
					until j>t1.get_monomini.count
					loop
						assert(j.out+"th monomino from "+i.out+"th tile x bad resetted",t1.get_monomini[j].get_x=t2.get_monomini[j].get_x)
						assert(j.out+"th monomino from "+i.out+"th tile y bad resetted",t1.get_monomini[j].get_y=t2.get_monomini[j].get_y)
						j:=j+1
					end
					k:=k+1
				end
				i:=i+1
			end
		end

	test_undo_last_move
		note
			testing:  "covers/{B8_LOGIC}.undo_last_move"
			testing:	"user/B8"
		do
			create new_game.make
			new_game.set_player_id(0)
		 	new_game.set_game_mode ({B8_MODE}.four_player)
			new_game.start_game
			if(new_game.make_a_move (0, 0,0, new_game.get_players[1].get_tile ({B8_GAME_TILE}.trinomino2)))then
				assert("Player still has the placed tile",new_game.get_players[1].get_tiles.count=20)
				assert ("The undo does not work",new_game.get_players[1].get_last_placed/=Void)
				new_game.undo_last_move
				assert ("The move is confirmed", new_game.confirm_last_move=Void)
				assert ("The undo does not work",new_game.get_players[1].get_last_placed=Void)
				assert("Player has not the undo tile",new_game.get_players[1].get_tiles.count=21)
			else
				assert ("Tile1 was not added", false)
			end

		end

	test_set_rotation
		note
			testing:	"covers/{B8_GAME_TILE}.set_rotation"
			testing:	"covers/{B8_GAME_TILE}.get_rotation"
			testing:	"user/B8"
		local
			tile: B8_GAME_TILE
		do
			create tile.make (2, {B8_GAME_TILE}.pentamino1)
			tile.rotate (1,1)
			tile.rotate (1,1)
			assert("bad rotation returned",tile.get_rotation=2)
			tile.reset_position(1)
			tile.rotate (-1,1)
			tile.rotate (-1,1)
			assert("bad rotation returned",tile.get_rotation=-2)
			tile.reset_position(1)
			tile.set_rotation(3)
			assert("bad rotation returned",tile.get_rotation=3)
			tile.reset_position(1)
			tile.set_rotation(-3)
			assert("bad rotation returned",tile.get_rotation=-3)

		end

end


