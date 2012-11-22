note
	description: "Deferred class ISTATE for use at gui and net sub-componets."
	author: "Konstantinos Kleftogiwrgos"
	date: "13/11/2012"
	revision: "$Revision$"

deferred class
	G2_LOGIC_ISTATE

inherit

	Storable

feature {ANY} --procedure

	set_player1_cards (cards1: ARRAY [BOOLEAN])
		require
			non_void: cards1 /= void
		deferred
		end

	set_player2_cards (cards2: ARRAY [BOOLEAN])
		require
			non_void: cards2 /= void
		deferred
		end

	update_matrix (e_matrix: ARRAY2 [BOOLEAN])
		require
			non_void: e_matrix /= void
		deferred
		end

end
