note
	description: "Summary description for {CU_ENUM_SUSPECT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_SUSPECTS
feature --constants
	scarlet: INTEGER = 0
	mustard: INTEGER = 1
	white: INTEGER = 2
	green: INTEGER = 3
	peacock: INTEGER = 4
	plum: INTEGER = 5

feature --access
	get_full_name(a_suspect:INTEGER): STRING
		-- Returns the name of the one suspects
		require
			valid_suspect: a_suspect>=0 and a_suspect<=5
		do
			inspect
				a_suspect
			when scarlet then
				result:="Miss. Scarlet"
			when mustard then
				result:="Colonel Mustard"
			when white then
				result:="Mrs. White"
			when green then
				result:="Mr. Green"
			when peacock then
				result:="Mrs. Peacock"
			when plum then
				result:="Professor Plum"
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
		l_list.extend (scarlet)
		l_list.extend (mustard)
		l_list.extend (white)
		l_list.extend (green)
		l_list.extend (peacock)
		l_list.extend (plum)

		result:=l_list
	end
end
