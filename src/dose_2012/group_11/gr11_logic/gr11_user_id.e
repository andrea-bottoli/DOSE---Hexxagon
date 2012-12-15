note
	description: "Represents the user id of the player"
	author: "Milano4"
	date: "09/11/2012"
	revision: "0.5"

class
	GR11_USER_ID

inherit
	ANY
		redefine
			is_equal
		end

feature --status

	id:STRING_8
	--return the user id of the player

	is_equal(user_id: GR11_USER_ID) : BOOLEAN
	do
		result := id.is_equal (user_id.id)
	end

end
