note
	description: "Stub controller class, implementing methods that register being called. This class was created fortesting purposes."
	author: "Milano4"
	date: "0.1"
	revision: "0.1"

class
	GR11_FAKE_CONTROLLER

inherit
	GR11_CONTROLLER

feature --status

	received_msg:GR11_MSG
		--status for testing purpose

feature --inherited methods (implemented for testing purposes

	recv_message(m :GR11_MSG)

	do
		received_msg := m
	end

	get_name:GR11_USER_ID

	do
		Result := Void
	end

	leave_game

	do
	end


end
