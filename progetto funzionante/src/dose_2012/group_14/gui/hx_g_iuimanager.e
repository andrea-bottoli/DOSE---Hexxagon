note
	description: "Summary description for {HX_G_IUIMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_IUIMANAGER

inherit
	ANY

feature

	repaint
	require
			deferred
	end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
	require
			deferred
	end

	game_stopped(code: INTEGER; reason: STRING)
	require
			deferred
	end


end
