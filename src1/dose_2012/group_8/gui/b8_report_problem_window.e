note
	description: "Report a problem window"
	author: "Dimitris Deyannis"
	date: "3/12/2012"
	revision: "0.0.1"

class
	B8_REPORT_PROBLEM_WINDOW

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
			make_with_title("Report a problem")
			disable_user_resize
		end

initialize
		-- Build the window
	do
		Precursor {EV_TITLED_WINDOW}
		set_size(465,300)

		close_request_actions.extend (agent request_close_window)
		create_container_report_problem
	end

create_container_report_problem
		-- the constructor of the report_problem container
	do
		-- Set the container
		create con_report_problem
		put(con_report_problem)

		-- Add logo box
		create logo_box
		create pix_blokus_logo
		pix_blokus_logo.set_with_named_file(file_system.pathname_to_string(img_blokus_logo))
		logo_box.set_background_pixmap(pix_blokus_logo)
		con_report_problem.extend_with_position_and_size(logo_box, 0, 0, 460, 140)

		-- Add separator
		create separator
		con_report_problem.extend_with_position_and_size(separator, 0, 140, 460, 20)

		-- Add report_problem label
		create report_problem_label
		report_problem_label.set_text ("Contact us at:%N%Nse-dose-group8@lists.inf.ethz.ch")
		con_report_problem.extend_with_position_and_size(report_problem_label, 0, 160, 460, 80)
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
	con_report_problem: EV_FIXED

-- PIX

	-- logo_box background
	pix_blokus_logo: EV_PIXMAP

-- Boxes

	-- The box that contains the logo
	logo_box: EV_HORIZONTAL_BOX

-- Separators

	-- separator
	separator: EV_HORIZONTAL_SEPARATOR

-- Labels

	-- Report a problem label
	report_problem_label: EV_LABEL


end

