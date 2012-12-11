note
	description: "How to play window"
	author: "Dimitris Deyannis"
	date: "3/12/2012"
	revision: "0.0.1"

class
	B8_HOW_TO_PLAY_WINDOW

inherit
	EV_TITLED_WINDOW
		redefine
			initialize
		end

	B8_GUI_CONST
		export
			{NONE} all
		undefine
			default_create, copy
		end


create
	make

feature {NONE}	-- Initialization
	make
		do
			make_with_title("How to play")
			disable_user_resize
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,300)

		close_request_actions.extend (agent request_close_window)
		create_container_how_to_play
	end

create_container_how_to_play
		-- the constructor of the how_to_pay container
	do
		-- Set the container
		create con_how_to_play
		put(con_how_to_play)

		-- Add logo box
		create logo_box
		create pix_blokus_logo
		pix_blokus_logo.set_with_named_file(file_system.pathname_to_string(img_blokus_logo))
		logo_box.set_background_pixmap(pix_blokus_logo)
		con_how_to_play.extend_with_position_and_size(logo_box, 0, 0, 460, 140)

		-- Add separator
		create separator
		con_how_to_play.extend_with_position_and_size(separator, 0, 140, 460, 20)

		-- Add how_to_play label
		create how_to_play_label
		how_to_play_label.set_text ("Useful Links%N%Nhttp://boardgamegeek.com/boardgame/2453/blokus%Nhttp://en.wikipedia.org/wiki/Blokus")
		con_how_to_play.extend_with_position_and_size(how_to_play_label, 0, 160, 460, 60)
	end


feature {NONE} -- Implementation / Agents

request_close_window
			-- The user wants to close the window using X button
		do
			destroy
		end


feature {NONE}	-- Attributes

-- Containers

	-- the main, fixed-size container to which all other widgets are added
	con_how_to_play: EV_FIXED

-- PIX

	-- logo_box background
	pix_blokus_logo: EV_PIXMAP

-- Boxes

	-- The box that contains the logo
	logo_box: EV_HORIZONTAL_BOX

-- Separators

	-- separator
	separator: EV_HORIZONTAL_SEPARATOR

-- Labels

	-- How to play label
	how_to_play_label: EV_LABEL


end
