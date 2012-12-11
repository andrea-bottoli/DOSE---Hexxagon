note
	description: "G3 message encoder."
	author: "LYDATAKIS KATEROS GEORGIOU"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_MESSAGE_ENCODER

feature
	encode(CARDS:G3_CARD):STRING
	do

	ensure
		not Result.is_empty
	end

end
