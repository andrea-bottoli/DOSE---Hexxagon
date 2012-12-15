note
	description: "Summary description for {CU_THROW_DICES}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_THROW_DICES

inherit
	CU_WINDOWS

create
	make

feature
	make
	do
		create ok_button.make_with_text ("Accept")
		ok_button.select_actions.extend (agent hide)

		create con_dices
		set_image (12, con_dices)
		con_dices.extend_with_position_and_size (ok_button, 135, 325, 80, 40)

		make_with_title ("Dices - Cluedo")
		set_size (350,370)
		put (con_dices)
		disable_user_resize
	end

	set_image (dices_value: INTEGER; a_con_dices: EV_FIXED)
	do
		inspect dices_value
		when 2 then
			a_con_dices.extend_with_position_and_size (img_value_1, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_1_1, 157, 152, 157, 152)
		when 3 then
			a_con_dices.extend_with_position_and_size (img_value_1, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_2, 157, 152, 157, 152)
		when 4 then
			a_con_dices.extend_with_position_and_size (img_value_1, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_3, 157, 152, 157, 152)
		when 5 then
			a_con_dices.extend_with_position_and_size (img_value_2, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_3, 157, 152, 157, 152)
		when 6 then
			a_con_dices.extend_with_position_and_size (img_value_2, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_4, 157, 152, 157, 152)
		when 7 then
			a_con_dices.extend_with_position_and_size (img_value_3, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_4, 157, 152, 157, 152)
		when 8 then
			a_con_dices.extend_with_position_and_size (img_value_3, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_5, 157, 152, 157, 152)
		when 9 then
			a_con_dices.extend_with_position_and_size (img_value_3, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_6, 157, 152, 157, 152)
		when 10 then
			a_con_dices.extend_with_position_and_size (img_value_4, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_6, 157, 152, 157, 152)
		when 11 then
			a_con_dices.extend_with_position_and_size (img_value_5, 0, 0, 157, 152)
			a_con_dices.extend_with_position_and_size (img_value_6, 157, 152, 157, 152)
		when 12 then
			a_con_dices.extend_with_position_and_size (img_value_6, 0, 0, 155, 157)
			a_con_dices.extend_with_position_and_size (img_value_6_1, 155, 157, 155, 157)
		end
	end
feature

	ok_button: EV_BUTTON

	con_dices: EV_FIXED

	img_value_1: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_1))
		end

	img_value_1_1: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_1_1))
		end

	img_value_2: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_2))
		end

	img_value_3: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_3))
		end

	img_value_4: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_4))
		end

	img_value_5: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_5))
		end

	img_value_6: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_6))
		end

	img_value_6_1: EV_PIXMAP
		once
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_dices_6_1))
		end

end
