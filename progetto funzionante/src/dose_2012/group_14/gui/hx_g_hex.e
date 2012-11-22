note
	description: "Summary description for {HX_G_HEX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_HEX

inherit
	HX_G_GAME_SCREEN

feature

            col : INTEGER
            row : INTEGER

            update()
            do
            	
            end

            constructor_Hex(a_col : INTEGER; a_row : INTEGER)
            require
				deferred
			end

            setHex()
            require
				deferred
			end

            getHex()
            require
				deferred
			end

            radius : INTEGER


end
