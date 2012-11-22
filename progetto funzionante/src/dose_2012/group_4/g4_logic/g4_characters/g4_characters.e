note
	description: "Summary description for {G4_CHARACTERS}."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

class
	G4_CHARACTERS

create
	make

feature --Atrributes
	Character_Name: STRING
	Character_Life: INTEGER

feature --Constructor
	make
	do

	end

feature --Setters and Getters

	--Character Name
	set_character_name(a_character_name: STRING)
	do
	ensure
		Character_Name.is_equal(a_character_name)
	end

	get_character_name(): STRING
	do

	end

	--Character Life
	set_character_life(a_character_life: INTEGER)
	require
		a_character_life = 3 or
		a_character_life = 4
	do
	ensure
		Character_Life = a_character_life
	end

	get_character_life(): INTEGER
	do
		
	end
end
