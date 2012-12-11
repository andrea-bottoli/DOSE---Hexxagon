note
	description: "Summary description for {CORRIDOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_CORRIDOR

inherit
	CU_SQUARE

create
	make

feature {CU_BOARD} --constructor
	make(a_n: STRING; a_e:STRING; a_s:STRING; a_w: STRING)
		require
			valid_n: a_n.is_equal ("wall") or a_n.is_equal ("corridor") or a_n.is_equal ("door")
			valid_e: a_e.is_equal ("wall") or a_e.is_equal ("corridor") or a_e.is_equal ("door")
			valid_s: a_s.is_equal ("wall") or a_s.is_equal ("corridor") or a_s.is_equal ("door")
			valid_w: a_w.is_equal ("wall") or a_w.is_equal ("corridor") or a_w.is_equal ("door")
		do
			n:=a_n
			e:=a_e
			s:=a_s
			w:=a_w
		ensure
			corridor_initialized: n=a_n and e=a_e s=a_s and w=a_w
		end
feature --Access
	player_on: CU_PLAYER
			-- Indicates the player who is currently on this square

	pawn: INTEGER
		--The pawn on this corridor (not all pawns are assigned to players!)

	n: STRING
		attribute
		ensure
			valid_side: result.is_equal ("wall") or result.is_equal ("corridor") or result.is_equal ("door")
		end
	e: STRING
		attribute
		ensure
			valid_side: result.is_equal ("wall") or result.is_equal ("corridor") or result.is_equal ("door")
		end
	s: STRING
		attribute
		ensure
			valid_side: result.is_equal ("wall") or result.is_equal ("corridor") or result.is_equal ("door")
		end
	w: STRING
		attribute
		ensure
			valid_side: result.is_equal ("wall") or result.is_equal ("corridor") or result.is_equal ("door")
		end

feature {CU_GAME}--Actions
	player_moves_in(a_player: CU_PLAYER)
		require
			not_already_occupied: player_on = void
			valid_player: a_player /= void
		do
			player_on:=a_player
			pawn_moves_in(a_player.pawn)
		ensure
			occupied_corridor: player_on = a_player
			structure_not_change: n.is_equal (old n) and s.is_equal (old s) and w.is_equal (old w) and e.is_equal (old e)
		end

	pawn_moves_in(a_pawn: INTEGER)
		require
			not_already_occupied: pawn = void
			valid_player: a_pawn>=0 and a_pawn<=5
		do
			pawn:= a_pawn
		ensure
			occupied_corridor: pawn = a_pawn
			structure_not_change: n.is_equal (old n) and s.is_equal (old s) and w.is_equal (old w) and e.is_equal (old e)
		end

	player_moves_out()
		require
			occupied_corridor: player_on /= void
		do
			player_on:=void
			pawn_moves_out
		ensure
			no_longer_occupied: player_on = void
			structure_not_change: n.is_equal (old n) and s.is_equal (old s) and w.is_equal (old w) and e.is_equal (old e)
		end

	pawn_moves_out
		require
			occupied_corridor: pawn /= void
		do
			pawn:=-1
		ensure
			no_longer_occupied: pawn = -1
			structure_not_change: n.is_equal (old n) and s.is_equal (old s) and w.is_equal (old w) and e.is_equal (old e)
		end
end
