deferred class
	G19_STEP

feature

	get_player(): G19_PLAYER_INFO
		deferred
		end

	get_actions(): LIST[TUPLE[x, y: INTEGER; action_type: STRING]]
		deferred
		end

end
