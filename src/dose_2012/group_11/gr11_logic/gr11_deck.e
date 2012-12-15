note
	description: "Represent deck player"
	author: "Milano4"
	date: "25/11/2012"
	revision: "0.2"

class
	GR11_DECK

inherit
    KL_SHARED_FILE_SYSTEM
     export {NONE}
            all
        end

create

	make_deck_player


feature {NONE} -- Initialization

	Dose_folder: STRING = "dose_2012"
	GR11_folder: STRING = "group_11"
	File_folder: STRING = "gr11_logic"

	file_path: KL_PATHNAME
			-- Path were the file are stored
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (GR11_folder)
			Result.append_name (File_folder)
		end

	file_background: KL_PATHNAME
			-- Path to "background" image
		do
			Result := file_path
			Result.append_name ("valkyrie.txt")
		end

	make_deck_player(race_player:STRING)
	--create deck different for each race
	local
		file:STRING
		--line:STRING
		card_local:GR11_NORMAL_CARD
	do
		if race_player.is_equal("VALKYRIE") then file:= "C:\Users\Loma\Dropbox\DOSE\src\dose_2012\group_11\gr11_logic\valkyrie.txt" end
		if race_player.is_equal("DRECKACH") then file:="dreckach.txt" end
		if race_player.is_equal("VONYAN") then file:="vonyan.txt" end
		if race_player.is_equal("EARTHERS") then file:="earthers.txt" end
		--file:=file_system.pathname_to_string (file_background)
		--print(file_system.pathname_to_string (file_background))
		create input_file.make_open_read (file)

		create list_of_card.make (9)

		from
      	until input_file.end_of_file
		loop
			input_file.read_line
			create normal_card.make(input_file.last_string)
			list_of_card.put_front(normal_card)
		end
		input_file.close
		--list_of_card.shuffle
	ensure
		list_of_card.count = 9
	end


feature{NONE} -- implementation

list_of_card : ARRAYED_LIST[GR11_NORMAL_CARD]
--list of normal card for player

normal_card : GR11_NORMAL_CARD
--is normal card

input_file: PLAIN_TEXT_FILE
--for to manage file


feature --query


	is_empty:BOOLEAN
	--control if deck is empty
	do
		if list_of_card.is_empty then
			Result:=TRUE
		else
			Result:=FALSE
		end
	end

	get_card:GR11_NORMAL_CARD
	--return first card in the deck
	require
		list_of_card.count>0
	do
		normal_card:=list_of_card.first
		list_of_card.remove
		Result := normal_card
	ensure
		list_of_card.count=old list_of_card.count - 1
	end

feature --modify

shuffle
--shuffle deck
do
end






end
