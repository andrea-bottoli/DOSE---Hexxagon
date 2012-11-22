note
	description: "Class used for communication between LOGIC, GUI and NET"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_MESSAGE
create
	make

feature --Access
	id: STRING --identifier of the request/action
	data: ARRAY[ANY]--Actual data of the request

feature --Constructor
	make(a_id:STRING; a_data: ARRAY[ANY])
		require
			valid_id: a_id /= void and a_id/= ""
		do
		end
end
