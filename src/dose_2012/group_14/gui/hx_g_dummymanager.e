note
	description: "Summary description for {HX_G_DUMMY_BOARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

 class
	HX_G_DUMMYMANAGER

inherit
	 HX_G_IUIMANAGER

create
	make,
	default_create

feature
	make
	do

	end

	repaint()
		do
		end

	request_move()
		do
		end

	game_finished(l_message: HX_L_IGAME_END_MESSAGE)
		do
		end

	game_stopped(code: INTEGER; reason: STRING)
		do
		end

end
