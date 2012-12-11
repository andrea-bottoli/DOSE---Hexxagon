note
	description: "Test routines for the IG_HEX class"
	author: "Adriana Selleri Rocha"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_IG_HEX

	inherit
	EQA_TEST_SET

feature -- Test routines

	test_IG_HEX_color_set
			-- Verifies if the color of the HEX was correctly set
		note
			testing:  "covers/{IG_HEX}"
			testing:  "user/IG"
		local
			l_hex: IG_HEX
		do
			create l_hex.make("p")
			assert ("Color is correct", l_hex.color.is_equal("p"))
		end

end

