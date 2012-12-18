note
	description: "Summary description for {XX_IP_VALIDATOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	XX_IP_VALIDATOR

feature{ANY}
	--Checks if an ip is valid. VALID ONLY IPV4 address (KISS)
	is_ip_valid(a_ip: STRING):BOOLEAN
	require
		a_ip /= void

	local
		l_sub: INTEGER --Subpart of the address'has been analyzed
		l_p: INTEGER --Position in the address
		l_acc: INTEGER -- Accumulator for numbers
		l_chc: INTEGER -- It is the CHaracter Count inside the part
		jump : BOOLEAN -- It avoid contract violation in to_integer method (for example if you want to convert a dot in integer)
		stop : BOOLEAN -- If ip will become wrong, stop will be setted TRUE and at the end result:=true will be skipped out

	do
		if (a_ip.is_empty) then -- I think a comment here'd be useless
			result := false

			else
			-- Inizialize all the "counter" . Ready to go...
			l_sub := 0
			l_chc := 0
			l_acc := 0

			from -- The loop will pass ALL the address.
				l_p:=1 --starts from the first character

			until
				(l_p > a_ip.count) or stop = TRUE --until the ip is empty or if stop is TRUE

			loop

		------Here's the part in which the character is a "."

				if (a_ip.at(l_p).is_equal ('.')) then -- it begins a new kind of subpart

					--jump :=true --

					if (l_chc=0 )then -- You can't have a pattern like 112..121 (l_chc is stepbystep increased every time he met a ".")

						result:= false
						stop:=true
					end

					--Limit #occurrence of segments.
					if (l_sub=4) then --it limit ip like x.x.x.x.y with 5 slots

						Result:= false
						stop:= true
					end

				--Reset segment values and restart loop.
					l_sub:=l_sub+1 -- if the last char was a dot, you've a new subpart
					l_chc := 0 --start from 0 the count of the subpart (dot is the start char for every subpart)
					l_acc := 0 --actual value of the next part is (for now) =0
					l_p:=l_p+1 --You check the "." so you can move on

				end --if_dot

				if ((a_ip.at(l_p)<'0') or (a_ip.at (l_p)>'9')) then --Cipher in a block MUST be between 0 and 9

					Result:= false
					jump:= true
					stop:= true

				end
				--example for understanding the operation below iptocheck: 254.x.x.x
				--first scan, l_acc=2
				--second scan, l_acc=2*10+5=25
				--third scan, l_acc=25*10+4=254

				if(not jump) then -- this if condition avoid exception and contract violation in to_integer method
					l_acc := l_acc*10 + a_ip.substring (l_p, l_p).to_integer -- multiply by 10 adding the number you're checking
				end
				--of course you can't have l_acc more bigger than 255
				if(l_acc>255) then
					Result:= false
					stop:= true
				end

				--Go ahead with other character and pointer.
				l_chc:=l_chc+1;
				l_p:=l_p+1;

			end --end loop

		--There are enough sub component?
		if (l_sub /= 3) then

			result:= false
			stop:= true
		end
		--There are enough character count in the last count?
		if (l_chc=0) then

			result:= false
			stop:= true
			jump:= true
		end
		-- only and only if stop is FALSE
		--(it was setted at the beginning) say that result:= true.
		-- Result is not like the "return" in c, it's a kind of local variable.
			if( not stop) then
				Result:= true
			end
	end -- first if
end --do
end
