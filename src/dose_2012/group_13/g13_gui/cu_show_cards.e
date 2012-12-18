note
	description: "Summary description for {CU_SHOW_CARDS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SHOW_CARDS

inherit
	CU_WINDOWS

	CU_GUI_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	make

feature
	make(hand: LINKED_LIST [CU_CARD])-- (a_player: CU_PLAYER)
			-- Displays the window with the cards of one player
		require
--			min_num_of_cards: a_player.hand.count >= 3
--			max_num_of_cards: a_player.hand.count <= 6
		local
			c_cards: LINKED_LIST [INTEGER]
		do
			create accept_button.make_with_text ("Accept")
			accept_button.select_actions.extend (agent hide)

			create con_card

			create c_cards.make

			from
				hand.start
			until
				hand.exhausted
			loop
				c_cards := identify_card (hand.item)
				hand.forth
			end

			inspect
				hand.count
			when 3 then
					show_img_card (con_card,c_cards.i_th (0),c_cards.i_th (1), 115, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (2),c_cards.i_th (3), 365, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (4),c_cards.i_th (5), 240, 400, 230, 360)
			when 4 then
					show_img_card (con_card,c_cards.i_th (0),c_cards.i_th (1), 115, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (2),c_cards.i_th (3), 365, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (4),c_cards.i_th (5), 115, 400, 230, 360)
					show_img_card (con_card,c_cards.i_th (6),c_cards.i_th (7), 365, 400, 230, 360)
			when 5 then
					show_img_card (con_card,c_cards.i_th (0),c_cards.i_th (1), 100, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (2),c_cards.i_th (3), 350, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (4),c_cards.i_th (5), 600, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (6),c_cards.i_th (7), 225, 400, 230, 360)
					show_img_card (con_card,c_cards.i_th (8),c_cards.i_th (9), 475, 400, 230, 360)
			when 6 then

					show_img_card (con_card,c_cards.i_th (0),c_cards.i_th (1), 100, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (2),c_cards.i_th (3), 350, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (4),c_cards.i_th (5), 600, 20, 230, 360)
					show_img_card (con_card,c_cards.i_th (6),c_cards.i_th (7), 100, 400, 230, 360)
					show_img_card (con_card,c_cards.i_th (8),c_cards.i_th (9), 350, 400, 230, 360)
					show_img_card (con_card,c_cards.i_th (10),c_cards.i_th (11), 600, 400, 230, 360)
			else
				io.put_string ("Sin elementos")
			end

			con_card.extend_with_position_and_size (accept_button, 10, 10, 80, 40)

			make_with_title ("Show Cards - Cluedo")
			set_size (710,830)
			put (con_card)
			disable_user_resize
		end

	identify_card (p_card: CU_CARD): LINKED_LIST [INTEGER]
		local
			id_card: INTEGER
			type_card: INTEGER
			find_card: BOOLEAN
			c_list: LINKED_LIST [INTEGER]
		do
			if attached {CU_ROOM_CARD} p_card as l_room then
				type_card := 1
				from
					id_card := 0
				until
					id_card > 8 or find_card
				loop
					if l_room.room = id_card then
						c_list.extend (type_card)
						c_list.extend (id_card)
						find_card := True
					end
				end
			end
			if not find_card then
				if attached {CU_SUSPECT_CARD} p_card as l_susp then
					type_card := 2
					from
						id_card := 0
					until
						id_card > 6 or find_card
					loop
						if l_susp.suspect = id_card then
							c_list.extend (type_card)
							c_list.extend (id_card)
							find_card := True
						end
					end
				end
			end
			if not find_card then
				if attached {CU_WEAPON_CARD} p_card as l_weap then
					type_card := 3
					from
						id_card := 0
					until
						id_card > 6 or find_card
					loop
						if l_weap.weapon = id_card then
							c_list.extend (type_card)
							c_list.extend (id_card)
							find_card := True
						end
					end
				end
			end
			Result := c_list
		end

	show_img_card (a_con_card: EV_FIXED; c_type,c_card, a_x, a_y, a_width, a_height: INTEGER)
		do
			inspect
				c_card
			when 0 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (set_pixmap (img_card_kitchen), a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_scarlett, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_rope, a_x, a_y, a_width, a_height)
				end
			when 1 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (card_ballroom, a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_mustard, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_leadpipe, a_x, a_y, a_width, a_height)
				end
			when 2 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (card_conservatory, a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_white, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_knife, a_x, a_y, a_width, a_height)
				end
			when 3 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (card_diningroom, a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_green, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_wrench, a_x, a_y, a_width, a_height)
				end
			when 4 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (card_billiardroom, a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_peacock, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_candlestick, a_x, a_y, a_width, a_height)
				end
			when 5 then
				inspect
					c_type
				when 1 then
					a_con_card.extend_with_position_and_size (card_library, a_x, a_y, a_width, a_height)
				when 2 then
					a_con_card.extend_with_position_and_size (card_plum, a_x, a_y, a_width, a_height)
				else
					a_con_card.extend_with_position_and_size (card_revolver, a_x, a_y, a_width, a_height)
				end
			when 6 then
				a_con_card.extend_with_position_and_size (card_lounge, a_x, a_y, a_width, a_height)
			when 7 then
				a_con_card.extend_with_position_and_size (card_hall, a_x, a_y, a_width, a_height)
			else
				a_con_card.extend_with_position_and_size (card_study, a_x, a_y, a_width, a_height)
			end
		end

feature {NONE}

	accept_button: EV_BUTTON
		-- "Accept" button.

	con_card: EV_FIXED

--------------- Img Rooms ------------------
	card_kitchen: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_kitchen))
		end

	card_ballroom: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_ball_room))
		end

	card_billiardroom: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_billiard_room))
		end

	card_conservatory: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_conservatory))
		end

	card_diningroom: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_dining_room))
		end

	card_hall: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_hall))
		end

	card_library: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_library))
		end

	card_lounge: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_lounge))
		end

	card_study: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_study))
		end

--------------- Img Suspects ------------------
	card_plum: EV_PIXMAP
		-- Represent a second card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_plum))
		end

	card_scarlett: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_scarlett))
		end

	card_white: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_white))
		end

	card_peacock: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_peacock))
		end

	card_green: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_green))
		end

	card_mustard: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_mustard))
		end

--------------- Img Weapons ------------------
	card_knife: EV_PIXMAP
		-- Represent a third card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_knife))
		end

	card_rope: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_rope))
		end

	card_candlestick: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_candlestick))
		end

	card_wrench: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_wrench))
		end

	card_revolver: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_revolver))
		end

	card_leadpipe: EV_PIXMAP
		-- Represent a first card of one player
		do
			create Result
			Result.set_with_named_file (file_system.pathname_to_string (img_card_lead_pipe))
		end


--------------------------------------------------------------
--	card_1: EV_PIXMAP
--		-- Represent a first card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_kitchen))
--		end

--	card_2: EV_PIXMAP
--		-- Represent a second card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_ball_room))
--		end

--	card_3: EV_PIXMAP
--		-- Represent a third card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_plum))
--		end

--	card_4: EV_PIXMAP
--		-- Represent a fourth card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_peacock))
--		end

--	card_5: EV_PIXMAP
--		-- Represent a fifth card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_candlestick))
--		end

--	card_6: EV_PIXMAP
--		-- Represent a sixth card of one player
--		do
--			create Result
--			Result.set_with_named_file (file_system.pathname_to_string (img_card_revolver))
--		end

end
