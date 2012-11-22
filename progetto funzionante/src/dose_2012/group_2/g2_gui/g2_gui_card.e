note
	description: "Summary description for {G2_GUI_CARD}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_CARD

create
	make_gui_card, make_default

feature --initialize

	make_gui_card (id1, north1, south1, east1, west1: INTEGER; element1: STRING)
		require
			valid_north: 0 <= north1 and north1 <= 11
			valid_south: 0 <= south1 and south1 <= 11
			valid_east: 0 <= east1 and east1 <= 11
			valid_west: 0 <= west1 and west1 <= 11
			valid_id: id1 > 0
		do
		ensure
			valid_north1: 0 <= north and north <= 11
			valid_south1: 0 <= south and south <= 11
			valid_east1: 0 <= east and east <= 11
			valid_west1: 0 <= west and west <= 11
			valid_id1: id > 0
		end

	make_default
		do
		end

feature

	set_image (im: EV_PIXMAP)
			--settea the image of card.
		require
			image_not_void: im /= void
		do
		ensure
			image_not_void1: image /= void
		end

	set_values (north1, south1, east1, west1: INTEGER)
			--settea the values of card.
		require
			valid_north: 0 <= north1 and north1 <= 11
			valid_south: 0 <= south1 and south1 <= 11
			valid_east: 0 <= east1 and east1 <= 11
			valid_west: 0 <= west1 and west1 <= 11
		do
		ensure
			valid_north1: 0 <= north and north <= 11
			valid_south1: 0 <= south and south <= 11
			valid_east1: 0 <= east and east <= 11
			valid_west1: 0 <= west and west <= 11
		end

	set_element (element1: STRING)
			--settea the element of card.
		do
		end

	set_id (id1: INTEGER)
			--settea the id of card.
		require
			valid_id: id1 > 0
		do
		ensure
			valid_id1: id > 0
		end

feature --miscellanies

	load_image
			--load the image of card
		do
		end

feature

	id: INTEGER

	image: EV_PIXMAP

	north, south, east, west: INTEGER

	element: G2_GUI_ELEMENT

end
