note
	description: "Summary description for {CU_ENUM_ROOMS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_ENUM_ROOMS
feature --constants
	kitchen: INTEGER = 0
	ball_room: INTEGER = 1
	conservatory: INTEGER = 2
	dining_room: INTEGER = 3
	billiard_room: INTEGER = 4
	library: INTEGER = 5
	lounge: INTEGER = 6
	hall: INTEGER = 7
	study: INTEGER = 8

feature --access
	get_full_name(a_room:INTEGER): STRING
		-- Returns the name of the one room
		require
			valid_room: a_room>=0 and a_room<=8
		do
			inspect
				a_room
				when kitchen then
					result:="Kitchen"
				when ball_room then
					result:="Ball Room"
				when conservatory then
					result:="Conservatory"
				when dining_room then
					result:="Dining Room"
				when billiard_room then
					result:="Billiard Room"
				when library then
					result:="Library"
				when lounge then
					result:="Lounge"
				when hall then
					result:="Hall"
				when study then
					result:="Study"
			end
		ensure
			valid_name: Result/=void
		end

feature --conversion
	get_list: LINKED_LIST[INTEGER]
	local
		l_list: LINKED_LIST[INTEGER]
	do
		create l_list.make
		l_list.extend (kitchen)
		l_list.extend (ball_room)
		l_list.extend (conservatory)
		l_list.extend (dining_room)
		l_list.extend (billiard_room)
		l_list.extend (library)
		l_list.extend (lounge)
		l_list.extend (hall)
		l_list.extend (study)

		result:=l_list
	end
end
