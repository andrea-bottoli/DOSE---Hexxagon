note
	description: "Summary description for {G2_GUI_ELEMENT}. Represents the elements of the card."
	author: "Grupo 2 , Rio Cuarto 8"
	ddate: " 2012/12/12  "
	revision: "1.0.1"

class
	G2_GUI_ELEMENT

create
	make_gui_element, make_default

feature

	make_default
			--create element of card by default
		do
			element := "basic"
		end

	make_gui_element (element1: STRING)
			--create element of card
		require
--			valid_elem: valid_element (element1)
		do
			element := element1
		ensure
			elem_not_void: element /= void
		end

feature --setter

	set_element (element1: STRING)
			--settear the element.
--		require
--			valid_elem: valid_element (element1)
		do
			element := element1
		ensure
			elem_not_void: element /= void
		end

feature --miscellanies

	load_list_element
			-- loading the item to the list. item = elemental.
		require
			list_is_void: elements = void
		do
			create elements.make
			elements.put ("basic")
			elements.put ("fire")
			elements.put ("earth")
			elements.put ("holy")
			elements.put ("ice")
			elements.put ("lightning")
			elements.put ("poison")
			elements.put ("water")
			elements.put ("wind")

		ensure
			list_not_void: elements /= void
		end

	valid_element (element1: STRING): BOOLEAN
			--verifies if item belongs of the list. item = elemental.		
		do
			load_list_element
			Result := elements.has (element1)
		ensure
			is_correct_element: elements.has (element1) = Result
		end

feature

	elements: LINKED_LIST [STRING]
	element: STRING

end
