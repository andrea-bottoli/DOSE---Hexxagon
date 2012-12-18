note
	description: "Summary description for {G21_NET_GAME}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_NET_GAME

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

feature
	listener : G21_NOTIFYLISTENER

feature
	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent close_window)
		set_title("Triple Triad")
		set_size(1024, 768)
		disable_user_resize
	end

	addlistener(listener_a : G21_NOTIFYLISTENER)
	require
		listener /= Void
	do
		listener := listener_a
	ensure
		listener = listener_a
	end

feature {NONE}
	close_window
	do
		(create {EV_ENVIRONMENT}).application.destroy
	end
end
