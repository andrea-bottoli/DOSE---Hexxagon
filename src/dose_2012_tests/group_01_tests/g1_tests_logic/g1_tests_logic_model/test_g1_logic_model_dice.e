note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_G1_LOGIC_MODEL_DICE

inherit

	EQA_TEST_SET
		redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
			-- <Precursor>
		do
		end

	on_clean
			-- <Precursor>
		do
		end

feature -- Test routines

	test_make_dice_1
		note
			testing: "covers/{G1_DICE}.make_dice"
			testing: "user/G1"
		local
			dice_t: G1_DICE
		do
			create dice_t.make_dice
			print(dice_t.get_value_dice)
			assert ("Valid dice created", dice_t /= Void)
		end

	test_make_dice_2
		note
			testing: "covers/{G1_DICE}.make_dice"
			testing: "user/G1"
		local
			dice_t: G1_DICE
		do
			create dice_t.make_dice
			print(dice_t.get_value_dice)
			assert ("Valid value of the dice", dice_t.get_value_dice > 0 and dice_t.get_value_dice < 7)
		end

	test_get_value_dice
		note
			testing: "covers/{G1_DICE}.get_value_dice"
			testing: "user/G1"
		local
			dice_t: G1_DICE
			value: INTEGER
		do
			create dice_t.make_dice
			value := dice_t.get_value_dice
			print(dice_t.get_value_dice)
			assert ("Value is between 1 and 6", value > 0 and value < 7)
		end

end
