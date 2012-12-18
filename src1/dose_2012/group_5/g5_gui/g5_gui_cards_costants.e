note
	description: "The class that contains path to images and other constants of the cards"
	author: "Gabriele Fanchini"
	date: "04.12.2012"
	revision: "1.0"

class
	G5_GUI_CARDS_CONSTANTS
inherit
    KL_SHARED_FILE_SYSTEM
        export {NONE}
            all
        end

feature {NONE} -- Access

	Dose_folder: STRING = "dose_2012"
	Image_folder: STRING = "images"
	Dominion_folder: STRING = "group5"
	Cards_folder: STRING = "cards"

	Main_view_folder: STRING = "main_view_images"

	Zoomed_cards_folder: STRING = "zoomed_images"
	Slim_cards_folder: STRING = "slim_images"
	Mini_cards_folder: STRING = "mini_images"
	Observer_cards_folder: STRING = "observer_images"


	img_path: KL_PATHNAME
			-- Path were the images of DOMINION GUI
		do
			create Result.make
			Result.set_relative (True)
			Result.append_name (Dose_folder)
			Result.append_name (Image_folder)
			Result.append_name (Dominion_folder)
		end

-- ### image cards

	img_path_zoomed: KL_PATHNAME
			-- Path were the images of zoomed cards
		do
			Result := img_path
			Result.append_name (Cards_folder)
			Result.append_name (Zoomed_cards_folder)
		end

	img_path_slim: KL_PATHNAME
			-- Path were the images of slim cards
		do
			Result := img_path
			Result.append_name (Cards_folder)
			Result.append_name (Slim_cards_folder)
		end

	img_path_observer: KL_PATHNAME
			-- Path were the images of slim cards
		do
			Result := img_path
			Result.append_name (Cards_folder)
			Result.append_name (Observer_cards_folder)
		end

	img_path_mini: KL_PATHNAME
			-- Path were the images of mini cards
		do
			Result := img_path
			Result.append_name (Cards_folder)
			Result.append_name (Mini_cards_folder)
		end

	img_default_zoomed_card: KL_PATHNAME
			-- Path to main view background image
		do
			Result := img_path_zoomed
			Result.append_name ("default_zoomed_card.png")
		end

-- ### image cards END

-- ### image background observer main_view

	img_background_main_view_as_observer: KL_PATHNAME
		-- Path to background image of the main view
		do
			Result := img_path
			Result.append_name (Main_view_folder)
			Result.append_name ("main_view_observer_background.png")
		end

-- ### image background observer main_view END


-- ### cards name

	name_of_a_card(a_card_id: STRING): STRING
		-- return the name of a card from its ID
		local
			substring: STRING
		do
			if(a_card_id.at (1)= 'K') then

				if (a_card_id.count = 2) then

					if (a_card_id.at (2)= '1') then
						Result:= "Adventurer"
					elseif (a_card_id.at (2)= '2') then
						Result:= "Bureaucrat"
					elseif (a_card_id.at (2)= '3') then
						Result:= "Cellar"
					elseif (a_card_id.at (2)= '4') then
						Result:= "Chancellor"
					elseif (a_card_id.at (2)= '5') then
						Result:= "Chapel"
					elseif (a_card_id.at (2)= '6') then
						Result:= "Council Room"
					elseif (a_card_id.at (2)= '7') then
						Result:= "Feast"
					elseif (a_card_id.at (2)= '8') then
						Result:= "Festival"
					elseif (a_card_id.at (2)= '9') then
						Result:= "Garden"
					end

				else
					substring:= a_card_id.substring (2, 3)

					if (substring.is_equal ("10")) then
						Result:= "Laboratory"
					elseif (substring.is_equal ("11")) then
						Result:= "Library"
					elseif (substring.is_equal ("12")) then
						Result:= "Market"
					elseif (substring.is_equal ("13")) then
						Result:= "Militia"
					elseif (substring.is_equal ("14")) then
						Result:= "Mine"
					elseif (substring.is_equal ("15")) then
						Result:= "Moat"
					elseif (substring.is_equal ("16")) then
						Result:= "Moneylender"
					elseif (substring.is_equal ("17")) then
						Result:= "Remodel"
					elseif (substring.is_equal ("18")) then
						Result:= "Smithy"
					elseif (substring.is_equal ("19")) then
						Result:= "Spy"
					elseif (substring.is_equal ("20")) then
						Result:= "Thief"
					elseif (substring.is_equal ("21")) then
						Result:= "Throne Room"
					elseif (substring.is_equal ("22")) then
						Result:= "Village"
					elseif (substring.is_equal ("23")) then
						Result:= "Witch"
					elseif (substring.is_equal ("24")) then
						Result:= "Woodcutter"
					elseif (substring.is_equal ("25")) then
						Result:= "Workshop"
					end
				end

			elseif (a_card_id.at (1)= 'T') then

				-- check which treasure cards is
				if (a_card_id.at (2)= '1') then
					Result:= "Copper"
				elseif (a_card_id.at (2)= '2') then
					Result:= "Silver"
				elseif (a_card_id.at (2)= '3') then
					Result:= "Gold"
				end

			elseif (a_card_id.at (1)= 'V') then

				-- check which victory cards is
				if (a_card_id.at (2)= '1') then
					Result:= "Estate"
				elseif (a_card_id.at (2)= '2') then
					Result:= "Duchy"
				elseif (a_card_id.at (2)= '3') then
					Result:= "Province"
				end

			elseif (a_card_id.at (1)= 'C') then
				Result:= "Curse"

			end
		end

-- ### cards name


end
