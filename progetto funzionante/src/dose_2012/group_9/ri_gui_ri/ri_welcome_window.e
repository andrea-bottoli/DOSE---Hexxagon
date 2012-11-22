note
	description: "Summary description for {RI_WELCOME_WINDOW}."
	author: "Emmanuel Scordalakes, George Constantine"
	date: "$Date$"
	revision: "$Revision$"

class
	RI_WELCOME_WINDOW

	inherit
		EV_TITLED_WINDOW

	create



	feature {NONE}

		btn_Start_Dedicated : 	EV_BUTTON

		btn_Connect_Dedicated : EV_BUTTON

		lbl_Binding :			EV_LABEL

		lbl_ServerIP :			EV_LABEL

		txt_BindingPort :		EV_TEXT_FIELD

		txt_ServerIP :			EV_TEXT_FIELD

		txt_ServerPort :		EV_TEXT_FIELD

		con_Main :				EV_VERTICAL_BOX 	--Main Container for Image and widget container

		con_Buttons :			EV_HORIZONTAL_BOX 	--Container for buttons, labels, text fields

		con_Server :			EV_VERTICAL_BOX 	--Server widgets

		con_Client :			EV_VERTICAL_BOX 	--Client Widgets

	feature {NONE}

		create_dServer_Window (b_port : INTEGER)	--Creates an instance of the Dedicated server window
			do

			end

		create_connect_Window						--Creates an instance of the Client Lobby window
			do

			end

		create_OnInstantiation						--Handles the instantiation of the RI_WELCOME_WINDOW Class
			do

			end


end
