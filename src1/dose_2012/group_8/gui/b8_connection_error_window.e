note
	description: "Connection error window"
	author: "Dimitris Deyannis"
	date: "2/3/2012"
	revision: "0.0.1"

class
	B8_CONNECTION_ERROR_WINDOW

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
			make_with_title("Connection Error")
			disable_user_resize
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(400,300)

		close_request_actions.extend (agent request_close_window)
		create_container_conncetion_error
	end

create_container_conncetion_error
		-- the constructor of the report_problem container
	do
		-- Set the container
		create con_connection_error
		put(con_connection_error)
		con_connection_error.set_background_pixmap(pix_connection_error)
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
	con_connection_error: EV_FIXED

-- PIX

	-- Conncection Error window background
	pix_connection_error: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file(file_system.pathname_to_string(img_connection_error))
		end

end
