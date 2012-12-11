note
	description: "Summary description for {LOCALMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_LOCALMANAGER

inherit
	G20_MANAGER
	redefine make, initialization, update, destroy end


create
	make

feature
	make
		do

		end

feature {G20_CORE}
	initialization :LIST[STRING]
		do

		end

	update(move :G20_MOVEMENT)
		do

		end

	destroy
		do

		end

end
