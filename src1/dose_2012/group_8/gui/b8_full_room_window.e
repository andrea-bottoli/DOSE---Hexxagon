note
	description: "Full room window"
	author: "Dimitris Deyannis"
	date: "3/12/2012"
	revision: "0.0.1"

class
	B8_FULL_ROOM_WINDOW

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
			make_with_title("Full room")
			disable_user_resize
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(400,300)

		close_request_actions.extend (agent request_close_window)
		create_container_full_room
	end

create_container_full_room
		-- the constructor of the full_room container
	do
		-- Set the container
		create con_full_room
		put(con_full_room)
		con_full_room.set_background_pixmap(pix_full_room)
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
	con_full_room: EV_FIXED

-- PIX

	-- Full room window background
	pix_full_room: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_full_room))
		end


end
