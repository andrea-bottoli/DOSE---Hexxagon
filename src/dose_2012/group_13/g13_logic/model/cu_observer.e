note
	description: "The Observer in the Observer Design Pattern."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CU_OBSERVER

feature {CU_OBSERVABLE}
	update(a_subject: CU_OBSERVABLE; a_mess: CU_MESSAGE)
		require
			valid_mess: a_mess/=void
			valid_sub: a_subject/=void
		deferred
		end
end
