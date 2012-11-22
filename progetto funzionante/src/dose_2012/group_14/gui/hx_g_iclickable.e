note
	description: "Summary description for {HX_G_ICLICKABLE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_ICLICKABLE

inherit
	ANY

feature

	Click( x :INTEGER ; y : INTEGER; button : INTEGER)
	require
			deferred
			end

	IsInside(x: INTEGER; y : INTEGER)
	require
			deferred
			end
			
end
