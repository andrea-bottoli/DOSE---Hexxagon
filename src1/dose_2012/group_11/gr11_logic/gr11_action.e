note
	description: "Summary description for {GR11_ACTION}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.1"

deferred class
	GR11_ACTION

feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	deferred
	end
end
