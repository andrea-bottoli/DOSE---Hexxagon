note
	description: "Summary description for {G2_GUI_CARD}. Represents  the card of game. capture  of  the  game original"
	author: "Grupo 2 , Rio Cuarto 8"
	date: " 2012/12/12  "
	revision: "1.0.1"

class
	G2_GUI_CARD

inherit

	EV_BUTTON

	EXECUTION_ENVIRONMENT
		undefine
			default_create,
			copy
		end

create
	make_gui_card, make_default

feature --initialize

	make_gui_card (color1: BOOLEAN; north1, south1, east1, west1: INTEGER; element1: STRING)
		require
			valid_north: 0 <= north1 and north1 <= 11
			valid_south: 0 <= south1 and south1 <= 11
			valid_east: 0 <= east1 and east1 <= 11
			valid_west: 0 <= west1 and west1 <= 11
		do
			default_create
			create image
			create element.make_gui_element (element1)
			color := color1
			north := north1
			south := south1
			east := east1
			west := west1
			if (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("None")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Fire")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_fire)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Earth")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_earth)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Holy")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_holy)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Ice")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_ice)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Lightning")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_lightning)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Poison")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_poison)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Water")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_water)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Wind")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_wind)
				set_pixmap (image)
			else
				if color then
					image.set_with_named_file (".\dose_2012\images\group_02\All Cards\" + east.out + north.out + west.out + south.out + "_0.png")
				else
					image.set_with_named_file (".\dose_2012\images\group_02\All Cards\" + east.out + north.out + west.out + south.out + "_1.png")
				end
			end
			set_pixmap (image)
		ensure
			valid_north1: 0 <= north and north <= 11
			valid_south1: 0 <= south and south <= 11
			valid_east1: 0 <= east and east <= 11
			valid_west1: 0 <= west and west <= 11
		end

	make_default
		do
			default_create
			create element.make_default
			create image
			image.set_with_named_file ({INTERFACE_NAMES}.path_background_card)
			set_pixmap (image)
			north := 0
			south := 0
			east := 0
			west := 0
		end

feature

	set_card (card_1: G2_GUI_CARD)
		require
			card_not_void: card_1 /= Void
		do
			color := card_1.color
			north := card_1.north
			south := card_1.south
			east := card_1.east
			west := card_1.west
			element := card_1.element
			board := card_1.board
			if (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("None")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Fire")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_fire)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Earth")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_earth)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Holy")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_holy)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Ice")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_ice)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Lightning")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_lightning)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Poison")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_poison)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Water")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_water)
				set_pixmap (image)
			elseif (east = 0 and north = 0 and west = 0 and south = 0 and element.element.is_equal ("Wind")) then
				image.set_with_named_file ({INTERFACE_NAMES}.path_background_card_wind)
				set_pixmap (image)
			else
				if color then
					image.set_with_named_file (".\dose_2012\images\group_02\All Cards\" + east.out + north.out + west.out + south.out + "_0.png")
				else
					image.set_with_named_file (".\dose_2012\images\group_02\All Cards\" + east.out + north.out + west.out + south.out + "_1.png")
				end
			end
			set_pixmap (image)
		end

	set_board_game (board_1: G2_GUI_BOARD_GAME)
		do
			board := board_1
		end

	set_values (north1, south1, east1, west1: INTEGER)
			--settea the values of card.
		require
			valid_north: 0 <= north1 and north1 <= 11
			valid_south: 0 <= south1 and south1 <= 11
			valid_east: 0 <= east1 and east1 <= 11
			valid_west: 0 <= west1 and west1 <= 11
		do
			north := north1
			south := south1
			east := east1
			west := west1
		ensure
			valid_north1: 0 <= north and north <= 11
			valid_south1: 0 <= south and south <= 11
			valid_east1: 0 <= east and east <= 11
			valid_west1: 0 <= west and west <= 11
		end

	set_element (element1: STRING)
			--settea the element of card.
		do
			element.set_element (element1)
		end

	set_color (color1: BOOLEAN)
			--settea the color of a card.
		do
			color := color1
		end

feature --miscellanies

	on_click (z_x, z_y: INTEGER; z_button: INTEGER; z_x_tilt, z_y_tilt: DOUBLE; z_pressure: DOUBLE; z_screen_x, z_screen_y: INTEGER)
			-- Gives information about which button was pressed
		do
			if z_button = 1 then
				board.capture (Current)
			end
		end

feature

	board: G2_GUI_BOARD_GAME

	image: EV_PIXMAP

	north, south, east, west: INTEGER

	element: G2_GUI_ELEMENT

	color: BOOLEAN

invariant
	valid_north1: 0 <= north and north <= 11
	valid_south1: 0 <= south and south <= 11
	valid_east1: 0 <= east and east <= 11
	valid_west1: 0 <= west and west <= 11

end
