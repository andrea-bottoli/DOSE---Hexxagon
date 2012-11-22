note
	description: "Summary description for {HX_G_ISELECTABLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_ISELECTABLE

inherit
	HX_G_ICLICKABLE

feature

	Selected() : BOOLEAN
	require
			deferred
			end

end
