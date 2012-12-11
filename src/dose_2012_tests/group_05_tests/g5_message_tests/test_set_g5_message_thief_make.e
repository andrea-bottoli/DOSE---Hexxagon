note
	description: "Summary description for {TEST_SET_G5_MESSAGE_THIEF_MAKE}."
	author: "Team RioCuarto 4"
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_SET_G5_MESSAGE_THIEF_MAKE

inherit

	EQA_TEST_SET
		redefine
			on_prepare
		end

feature {NONE} --elemants for test

	message_thief: G5_MESSAGE_THIEF
	source: STRING
	some_targets: ARRAY [STRING]
	action: STRING
	a_thief_table: HASH_TABLE[ARRAY[STRING], STRING]
	cards_affected: ARRAY[STRING]

feature --initialization

	on_prepare
		do
	source:= "sergio"
	some_targets:= <<"SERVER">>
	create a_thief_table.make (2)
	create cards_affected.make_empty
		end

feature -- Test positive

		test_make_0
		 	--test messange thief with action "update_thief_trash"
		 note
		 	testing: "G5_MESSAGE_THIEF/make"
		 do
		 		action:= "update_thief_trash"
		 		cards_affected.force ("T2", 1)
		 		cards_affected.force ("T2", 2)
		 		cards_affected.force ("K6", 3)
		 		cards_affected.force ("K3", 4)
		 		cards_affected.force ("K9", 5)
				a_thief_table.put ( cards_affected, "jesus")
				cards_affected [1]:="T1"
		 		cards_affected [2]:="T3"
		 		cards_affected [3]:="K5"
		 		cards_affected [4]:="K7"
		 		cards_affected [5]:="K9"
		 		a_thief_table.put ( cards_affected, "jaime")
		 		create message_thief.make (source, some_targets,action, a_thief_table)
		 		assert ("make was successful",(message_thief.action.is_equal (action))and (message_thief.source.is_equal (source)) and (message_thief.targets.is_equal (some_targets)) and (message_thief.thief_table.is_equal (a_thief_table)))

		 end

		 test_make_
		 	--test message thief with action "trashed_by_thief"
		 note
		 	testing: "G5_MESSAGE_THIEF/make"
		 do
		 		action:= "trashed_by_thief"
		 		cards_affected.force ("T2", 1)
		 		cards_affected.force ("T2", 2)
		 		cards_affected.force ("K8", 3)
		 		cards_affected.force ("K3", 4)
		 		cards_affected.force ("K5", 5)
				a_thief_table.put ( cards_affected, "jesus")
				cards_affected [1]:="T1"
		 		cards_affected [2]:="T1"
		 		cards_affected [3]:="K5"
		 		cards_affected [4]:="K7"
		 		cards_affected [5]:="K9"
		 		a_thief_table.put ( cards_affected, "jaime")
		 		create message_thief.make (source, some_targets,action, a_thief_table)
		 		assert ("make was successful",(message_thief.action.is_equal (action))and (message_thief.source.is_equal (source)) and (message_thief.targets.is_equal (some_targets)) and (message_thief.thief_table.is_equal (a_thief_table)))
	end

feature -- test negative

		test_make_2
		 	--test messange thief action invalid
		 note
		 	testing: "G5_MESSAGE_THIEF/make"
		 local
		 	rescued: BOOLEAN
		 do
		 	if not rescued then
		 	action:= "up_date"
		 		cards_affected.force ("T2", 1)
		 		cards_affected.force ("T3", 2)
		 		cards_affected.force ("K6", 3)
		 		cards_affected.force ("K9", 4)
		 		cards_affected.force ("K9", 5)
				a_thief_table.put ( cards_affected, "jesus")
				cards_affected [1]:="T1"
		 		cards_affected [2]:="T3"
		 		cards_affected [3]:="K5"
		 		cards_affected [4]:="K7"
		 		cards_affected [5]:="K9"
		 		a_thief_table.put ( cards_affected, "jaime")
		 		create message_thief.make (source, some_targets,action, a_thief_table)
		 		end
		 		assert ("argument action raised problem",rescued)
		rescue
				if not rescued then
					rescued := True
					retry
				end
		end

		 test_make_3
		 	--test cards affected is empty
		 note
		 	testing: "G5_MESSAGE_THIEF/make"
		 local
		 	rescued: BOOLEAN
		 do
		 	if not rescued then
		 		action:= "trashed_by_thief"
				a_thief_table.put ( cards_affected, "jesus")
		 		a_thief_table.put ( cards_affected, "jaime")
		 		create message_thief.make (source, some_targets,action, a_thief_table)
		 	end
		 		assert ("array card affected is invalid",rescued)
		 		rescue
			if not rescued then
				rescued := True
				retry
			end
		end

end
