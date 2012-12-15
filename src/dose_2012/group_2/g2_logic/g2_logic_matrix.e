note
	description: "Summary description for {MATRIX}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_MATRIX

create
	make

feature

	make (a_card: G2_LOGIC_CARD; a_element: STRING)
		require
			non_void: a_element/=void
		do
			g2_matrix_card := a_card
			g2_matrix_element := a_element
		end

feature {ANY} --ATTRIBUTES

	g2_matrix_card: G2_LOGIC_CARD

	g2_matrix_element: STRING
feature
	set_card(a_card:G2_LOGIC_CARD)
	require
		non_void:a_card/=void
	do
		g2_matrix_card:=a_card
		ensure
			non_void:g2_matrix_card=a_card
	end
end
