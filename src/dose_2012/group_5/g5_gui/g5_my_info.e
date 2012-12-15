note
	description: "This class will contains the hand of the player"
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.2"

class
	G5_HAND_BOX
inherit
	EV_FIXED

	G5_MAIN_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make

feature {G5_MAIN_VIEW}-- initialization

	make
		-- This is the constructor of the box that contains cards in the hand
		do
			cards_version:="slim"
			create cards_in_the_hand.make (0)

			default_create
			create background_image

			-- set the background image
			background_image.set_with_named_file (file_system.pathname_to_string (img_path_background_hand))
			set_background_pixmap (background_image)
		end


feature {G5_MAIN_VIEW}-- application

	set_cards_in_the_hand(a_card: G5_GUI_CARD)
		-- adds the array of cards to the hand of the player
		require
			valid_arg: a_card /= void
		local
			index_card_hand: INTEGER
		do
			-- checks if it's necessary to convert cards in mini version
			if ((cards_version.is_equal("slim")) and ((cards_in_the_hand.count + 1)>5)) then
				cards_version:= "mini"
				convert_and_pose_cards_in_the_hand
			end

			-- put the card in the array and displays it
			cards_in_the_hand.force (a_card)
			current.extend (a_card)

			-- calculate the position (in the array) of the last card inserted
			index_card_hand:= cards_in_the_hand.count

			-- set the card position on the screen
			set_card_position(a_card, index_card_hand)
		end

	set_card_position(a_card: G5_GUI_CARD; an_index_of_card: INTEGER)
		-- set the correct position on the screen of the card
		require
			valid_arg: a_card/=void
		local
			index_of_card: INTEGER
		do
			index_of_card:= an_index_of_card

			if cards_version.is_equal("mini")then

				-- set size of cards
				current.set_item_size (a_card, 113, 42)

				if (index_of_card <= 6) then
					current.set_item_x_position (a_card, (((index_of_card-1)*121)+18))
					current.set_item_y_position (a_card, 0)
				elseif (index_of_card <= 12) then
					-- set the correct position
					index_of_card:= index_of_card -6
					current.set_item_x_position (a_card, (((index_of_card-1)*121)+18))
					current.set_item_y_position (a_card, 47)
				elseif (index_of_card <= 18) then
					-- set the correct position
					index_of_card:= index_of_card -12
					current.set_item_x_position (a_card, (((index_of_card-1)*121)+18))
					current.set_item_y_position (a_card, 94)
				end
			else

				-- set size of cards
				current.set_item_size (a_card, 132, 135)

				current.set_item_x_position (a_card, (((index_of_card-1)*150)+18))
				current.set_item_y_position (a_card, 0)
			end
		end


	convert_and_pose_cards_in_the_hand
		-- convert all cards in the hand in the other version and recalculate the position of cards
		local
			i: INTEGER
			a_card: G5_GUI_CARD
		do
			-- remove all card from the GUI
			from
				i:=1
			until
				i>cards_in_the_hand.count
			loop
				-- check if that works
				a_card:= cards_in_the_hand[i]
				current.prune (a_card)
				a_card.convert_format
				i:=i+1
			end

			-- put all converted cards in the gui
			from
				i:=1
			until
				i>cards_in_the_hand.count
			loop
				-- display the card in the gui
				a_card:= cards_in_the_hand[i]
				current.extend (a_card)

				-- set the size of the container of the image
				--if cards_version.is_equal("mini") then
				--	current.set_item_size (cards_in_the_hand[i], 113, 42)
				--else
				--	current.set_item_size (cards_in_the_hand[i], 132, 135)
				--end

				-- set the position (on the screen) of the card
				set_card_position(a_card,i)
				i:=i+1
			end
		end

	remove_card_from_hand(an_id: STRING)
		-- remove a card with the passed id from hand and recalculate the position of all cards
		local
			i:INTEGER
			already_removed: BOOLEAN
			new_hand: ARRAYED_LIST[G5_GUI_CARD]
		do
			create new_hand.make (0)
			already_removed:= FALSE

			-- find and remove the correct card
			from
				i:=1
			until
				(i> cards_in_the_hand.count)
			loop

				if ((cards_in_the_hand[i].card_id.is_equal (an_id)) and (already_removed = FALSE)) then
					current.prune (cards_in_the_hand[i])
					already_removed:= TRUE
					--cards_in_the_hand.prune (cards_in_the_hand[i])
				else
					new_hand.force (cards_in_the_hand[i])
				end
				i:=i+1
			end

			cards_in_the_hand:= new_hand

			-- checks if it's necessary to reconvert card in the hand
			if(cards_in_the_hand.count = 5) then
				cards_version:= "slim"
				convert_and_pose_cards_in_the_hand
			end

			-- recalculate the position of cards in the hand
			from
				i:=1
			until
				(i> cards_in_the_hand.count)
			loop
				set_card_position(cards_in_the_hand[i],i)
				i:=i+1
			end

		end

	discard_all_cards
		-- discard all cards in the hand, it's used in the Clean-up phase
		local
			i: INTEGER
			new_hand: ARRAYED_LIST[G5_GUI_CARD]
		do
			create new_hand.make (0)
			from
				i:=1
			until
				(i> cards_in_the_hand.count)
			loop
				current.prune (cards_in_the_hand[i])
				--cards_in_the_hand.prune (cards_in_the_hand[i])
				i:=i+1
			end
			cards_version:= "slim"
			cards_in_the_hand:=new_hand
		end

feature -- Variable

	background_image: EV_PIXMAP
		-- the background image of the hand box

	cards_in_the_hand: ARRAYED_LIST[G5_GUI_CARD]
		-- The list of cards in the hand

	cards_version: STRING
		-- the version of cards in the hand (slim or mini)

end
