note
	description: "Summary description for {G21_NET_GAME_JOIN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_NET_GAME_JOIN

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end
	G21_COMMONS
		undefine default_create, copy end

feature
	listener : G21_ACTIONLISTENER

feature
	initialize
	do
		Precursor {EV_TITLED_WINDOW}
		close_request_actions.extend(agent close_window)
		set_title("Triple Triad - Join a multiplayer game")
		set_size(280, 350)
		disable_user_resize

		extend (net_horizontal_box)
		net_horizontal_box.extend (ip_img)
		net_horizontal_box.extend (ip_text)
		net_horizontal_box.extend (port_img)
		net_horizontal_box.extend (port_text)

		net_horizontal_box.disable_item_expand (ip_img)
		net_horizontal_box.disable_item_expand (ip_text)
		net_horizontal_box.disable_item_expand (port_img)
		net_horizontal_box.disable_item_expand (port_text)
		net_horizontal_box.extend (ok)
		ip_img.set_minimum_width (280)
		ip_img.set_minimum_height (100)
		ip_img.set_with_named_file (rpath("ip.png"))
		ip_text.set_text ("192.168.1.1")
		ip_text.set_tooltip ("I.P.")
		ip_text.align_text_center
		port_img.set_minimum_width (280)
		port_img.set_minimum_height (100)
		port_img.set_with_named_file (rpath("port.png"))
		port_text.set_text ("65535")
		port_text.set_tooltip ("Port")
		port_text.align_text_center
		ok.set_text ("OK")
		ok.pointer_button_press_actions.extend (agent OnOKClick (?, ?, ?, ?, ?, ?, ?, ?))
		set_minimum_width (282)
		set_minimum_height (250)
		set_maximum_width (282)
		set_maximum_height (284)
		set_title ("Display window")

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

	onOKClick(a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
	do
	--	listener.message("Join;"+ip_text.text+";"+port_text.text)
		port_text.text.prune_all(' ')
		listener.joinGame(ip_text.text,port_text.text.to_integer)
	end

feature {NONE}
	net_horizontal_box: EV_VERTICAL_BOX
	ip_img, port_img: EV_PIXMAP
	ip_text, port_text: EV_TEXT_FIELD
	ok: EV_BUTTON

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	TT_folder: STRING = "group_21"
end
