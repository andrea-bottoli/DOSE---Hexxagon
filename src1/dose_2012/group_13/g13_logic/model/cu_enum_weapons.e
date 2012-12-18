note
	description: "A class for enumarating the weapons of the game."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_WEAPONS
feature --constants
	rope: INTEGER = 0
	lead_pipe: INTEGER = 1
	knife: INTEGER = 2
	wrench: INTEGER = 3
	candlestick: INTEGER = 4
	pistol: INTEGER = 5

feature --Access
	get_full_name(a_weapon: INTEGER): STRING
		-- Returns the name of the one weapon
		require
			valid_room: a_weapon>=0 and a_weapon<=5
		do
			inspect
				a_weapon
			when rope then
				result:="Rope"
			when lead_pipe then
				result:="Lead Pipe"
			when knife then
				result:="Knife"
			when wrench then
				result:="Wrench"
			when candlestick then
				result:="Candlestick"
			when pistol then
				result:="Pistol"
			end
		ensure
			valid_name: Result /= void
		end

feature --conversion
	get_list: LINKED_LIST[INTEGER]
	local
		l_list: LINKED_LIST[INTEGER]
	do
		create l_list.make
		l_list.extend (rope)
		l_list.extend (lead_pipe)
		l_list.extend (knife)
		l_list.extend (wrench)
		l_list.extend (candlestick)
		l_list.extend (pistol)

		result:=l_list
	end
end
