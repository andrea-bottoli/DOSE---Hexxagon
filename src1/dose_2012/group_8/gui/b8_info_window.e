note
	description: "Info window"
	author: "Dimitris Deyannis"
	date: "3/2/2012"
	revision: "0.0.1"

class
	B8_INFO_WINDOW

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
			make_with_title("Information")
			disable_user_resize
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,410)

		close_request_actions.extend (agent request_close_window)
		create_container_info
	end

create_container_info
		-- the constructor of the info container
	do
		-- Set the container
		create con_info
		put(con_info)

		-- Add logo box
		create logo_box
		create pix_blokus_logo
		pix_blokus_logo.set_with_named_file(file_system.pathname_to_string(img_blokus_logo))
		logo_box.set_background_pixmap(pix_blokus_logo)
		con_info.extend_with_position_and_size(logo_box, 0, 0, 460, 140)

		-- Add separator1
		create separator1
		con_info.extend_with_position_and_size(separator1, 0, 140, 460, 20)

		-- Add Dose label
		create dose_label
		dose_label.set_text ("DOSE 2012")
		con_info.extend_with_position_and_size(dose_label, 0, 160, 460, 20)

		-- Add separator2
		create separator2
		con_info.extend_with_position_and_size(separator2, 0, 180, 460, 20)

		-- Add Milano label
		create milano_label
		milano_label.set_text ("Team: Milano%N%NStefano Di Palma%NAndrea Braschi")
		con_info.extend_with_position_and_size(milano_label, 0, 200, 460, 60)

		-- Add separator3
		create separator3
		con_info.extend_with_position_and_size(separator3, 0, 260, 460, 20)

		-- Add Crete Label
		create crete_label
		crete_label.set_text ("Team: Crete%N%NVangelis Theodorakis%NGeorge Vardakis%NDimitris Deyannis")
		con_info.extend_with_position_and_size(crete_label, 0, 280, 460, 80)
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
	con_info: EV_FIXED

-- PIX

	-- logo_box background
	pix_blokus_logo: EV_PIXMAP

-- Boxes

	-- The box that contains the logo
	logo_box: EV_HORIZONTAL_BOX

-- Separators

	-- 1st separator
	separator1: EV_HORIZONTAL_SEPARATOR

	-- 2nd separator
	separator2: EV_HORIZONTAL_SEPARATOR

	-- 3rd separator
	separator3: EV_HORIZONTAL_SEPARATOR

-- Labels

	-- Dose 2012 label
	dose_label: EV_LABEL

	-- Milano label
	milano_label: EV_LABEL

	-- Crete label
	crete_label: EV_LABEL


end
