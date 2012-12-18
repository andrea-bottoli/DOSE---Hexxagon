note
	description: "Trolololo lollolo lollolo lollolo looo."
	author: "Debrecen1"
	date: "02.12.2012"
	revision: "$Revision$"

class ZB_CONNECTION

inherit
	POLL_COMMAND
		redefine
			make
		end

create
	make

feature {NONE} -- Initialization

	make (s: IO_MEDIUM)
		do
			Precursor (s)
			create client_name.make_empty
		end

feature

	is_waiting: BOOLEAN

	client_name: STRING

	execute (arg: ANY)
		do
			is_waiting := True
		end

	initialize
		do
			is_waiting := False
		end

	set_client_name (s: STRING)
		require
			s_exists: s /= Void
		do
			client_name := s.twin
		end

end
