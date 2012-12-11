note
	description: "Represents the capital ship"
	author: "Milano4"
	date: "1/12/2012"
	revision: "0.1"

class
	GR11_CAPITAL_SHIP

inherit
	GR11_BASE_SHIP

feature --query

	tail:GR11_BASE_SHIP
	--it's the tail of the capital ship

	front:GR11_BASE_SHIP
	--it's the front of the capital ship	

end
