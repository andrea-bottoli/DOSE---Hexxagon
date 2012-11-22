note
	description: "Summary description for {G2_GUI_ELEMENT}."
	author: "Grupo 2 , Rio Cuarto 8"
	date: "Date 13/11/2012"
	revision: "Revision  0.1"

class
	G2_GUI_ELEMENT

create
	make_gui_element, make_default

feature

	make_default
			--create element of card by default
		do
		end

	make_gui_element (element1: STRING)
			--create element of card
		require
			valid_elem: valid_element (element1)
		do
		ensure
			elem_not_void: element /= void
		end

feature --setter

	set_element (element1: STRING)
			--settear the element.
		require
			valid_elem: valid_element (element1)
		do
		ensure
			elem_not_void: element /= void
		end

feature --miscellanies

	load_list_element
			-- loading the item to the list. item = elemental.
		require
			list_is_void: elements = void
		do
		ensure
			list_not_void: elements /= void
		end

	valid_element (element1: STRING): BOOLEAN
			--verifies if item belongs of the list. item = elemental.
		require
			list_not_void: elements /= void
		do
		ensure
			is_correct_element: elements.has (element1) = Result
		end

feature

	elements: LINKED_LIST [STRING]

	element: STRING

end
