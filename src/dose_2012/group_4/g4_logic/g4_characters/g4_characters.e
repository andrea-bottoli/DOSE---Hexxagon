note
	description: "Summary description for {G4_CHARACTERS}."
	author: "Team Crete12 of Group4"
	date: "12/11/2012"
	revision: "LuckyPunk"

deferred class
	G4_CHARACTERS


feature --Atrributes
	Character_Name: STRING
	Character_Life: INTEGER


feature --Setters and Getters

	--Character Name
	set_character_name(a_character_name: STRING)
	do
		Character_Name := a_character_name
	ensure
		Character_Name.is_equal(a_character_name)
	end

	get_character_name(): STRING
	do
		Result := Character_Name
	end

	--Character Life
	set_character_life(a_character_life: INTEGER)
	require
		a_character_life = 3 or
		a_character_life = 4
	do
		Character_Life := a_character_life
	ensure
		Character_Life = a_character_life
	end

	get_character_life(): INTEGER
	do
		Result := Character_Life
	end

feature --Action
	action(a_Player_array : ARRAYED_LIST[G4_PLAYER];a_player_id: INTEGER;Draw_Pile: G4_DRAW_PILE)
	do	end
end
