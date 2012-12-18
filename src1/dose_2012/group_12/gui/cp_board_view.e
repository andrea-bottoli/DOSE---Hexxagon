note
	description: "The GUI component which will handle the view of the board."
	author: "Christos Petropoulos"

class
	CP_BOARD_VIEW

inherit
	EV_FIXED
	CP_MAIN_WINDOW_INTERFACES
	export
		{NONE} all
	undefine
		default_create, copy,is_equal
	end

create
	make


feature -- Initialization

	make(caller:CP_GAME_VIEW)
			-- Creates the board
		local
			white_color:EV_COLOR
			picture:EV_PIXMAP
			board_model:EV_MODEL_WORLD
			button:CP_BOARD_BUTTON
			b_color:EV_COLOR
			board_projector: EV_MODEL_DRAWING_AREA_PROJECTOR
			i:INTEGER
			j:INTEGER
			b:CP_BOARD_BUTTON
		do

			default_create
			create white_color.make_with_8_bit_rgb (255, 255, 255)
			create b_color.make_with_8_bit_rgb (140, 140, 140)
			create board_area
			create picture.default_create
	  		picture.set_with_named_file (file_system.pathname_to_string (board_btn_empty))
			game_view_caller := caller
			create board_model
			create board_buttons.make

			from i := 1	until i > 13 loop
				from j := 1 until j = i loop
					create button.make_with_image (picture,current)
					board_model.extend (button)
					button.set_point_position (380 - 74*(i-j-1) + 37*(i-1), 18*i)
					board_buttons.extend (button)

					j := j + 1
				end
				i := i + 1
			end

			from i := 1	until i > 10 loop
				from j := 1 until j = 13 loop
					create button.make_with_image (picture,current)
					board_model.extend (button)
					button.set_point_position (713 - 74*(10-j) , 37*i + 214)
					board_buttons.extend (button)
					j := j + 1
				end
				i := i + 1
			end


			from i := 1	until i > 9 loop
				from j := 1 until j = 13 loop
					create button.make_with_image (picture,current)
 					board_model.extend (button)
	 				button.set_point_position (678 - 74*(10-j) , 37*i + 234)
	 				board_buttons.extend (button)
	 				j := j + 1
	 			end
	 			i := i + 1
	 		end


			from i := 1	until i > 13 loop
				from j := 1 until j = i loop
					create button.make_with_image (picture,current)
					board_model.extend (button)
					button.set_point_position (380 - 74*(i-j-1) + 37*(i-1), 664 + 20*(10-i) )
					board_buttons.extend (button)
					j := j + 1
				end
				i := i + 1
			end




			create board_projector.make (board_model, board_area)
			board_area.set_background_color (b_color)
			board_model.set_background_color (b_color)

			current.extend_with_position_and_size (board_area,0,-30,930, 1050)
	 		board_projector.project
		end

feature {NONE} -- Attributes

	board_position: CP_POSITION
	board_height:INTEGER
	board_width:INTEGER
	board_buttons: LINKED_LIST[CP_BOARD_BUTTON]

feature

	board_area: EV_DRAWING_AREA

feature -- Board Update operations

	move_board_up
	do
		  from
                board_buttons.start
            until
                board_buttons.off
            loop
               	board_buttons.item.set_x_y(board_buttons.item.x,board_buttons.item.y - 50)

                board_buttons.forth
            end
            board_area.redraw
	end

	move_board_down
	do
		  from
                board_buttons.start
          until
                board_buttons.off
          loop
               	board_buttons.item.set_x_y(board_buttons.item.x,board_buttons.item.y + 50)
                board_buttons.forth

          end
          board_area.redraw
	end


	add_insect_on_board(insect:CP_INSECT;position:CP_POSITION)
				-- Adds an insect on the board
		require
			insect_not_void: insect/=Void
			position_not_void: position/=Void
		do

		end

	update_insect_position(insect:CP_INSECT;position:CP_POSITION)
				-- Updates the insect position on the board
		require
			insect_not_void: insect/=Void
			position_not_void: position/=Void
		do

		end

	remove_insect_from_board(insect:CP_INSECT)
				-- Removes the insect from the board
		require
			insect_not_void: insect/=Void
		do

		end


feature {NONE}  -- Drawing operations

	draw_board(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

	draw_buttons(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the buttons of the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

	draw_insects(insectsOnBoard:ARRAY[CP_INSECT])
			-- Draws the insects of the board
		require
			insects_not_void: insectsOnBoard/=Void
		do

		end

feature {NONE} -- Call Events (when pushing buttons)

	insertInsect(insect:CP_INSECT)
			-- Insert the insect to the board
		require
			insect_not_void: insect/=Void
		do

		end

	moveInsect(insect:CP_INSECT)
			-- Moves the insect to other position
		require
			insect_not_void: insect/=Void
		do

		end


feature

game_view_caller: CP_GAME_VIEW

end
