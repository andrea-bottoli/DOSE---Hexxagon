note
	description: "Summary description for {CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G2_LOGIC_CARD

create
	make

feature {ANY} --ATTRIBUTES

	g2_card_color: BOOLEAN

	g2_card_element: STRING

	g2_card_image: STRING

	g2_card_levelDown: INTEGER

	g2_card_levelUp: INTEGER

	g2_card_levelRight: INTEGER

	g2_card_levelLeft: INTEGER

feature {ANY} --creator

	make (a_color: BOOLEAN; a_element, a_image: STRING; up, down, right, left: INTEGER)
		do
			g2_card_color := a_color
			g2_card_element := a_element
			g2_card_image := a_image
			g2_card_levelDown := down
			g2_card_levelUp := up
			g2_card_levelRight := right
			g2_card_levelLeft := left
		end

feature {ANY} --Setter of Level and color

	change_color (): BOOLEAN
		do
		end

	set_Element (elem: STRING)
		do
		end

	set_LevelDown (Down: INTEGER)
		require
			okDown: Down >= 1 and Down <= 10
		do
		end

	set_LevelLeft (Left: INTEGER)
		require
			okLeft: Left >= 1 and Left <= 10
		do
		end

	set_LevelRight (Right: INTEGER)
		require
			okRight: Right >= 1 and Right <= 10
		do
		end

	set_LevelUp (Up: INTEGER)
		require
			okUp: Up >= 1 and Up <= 10
		do
		end

invariant
	levelDown_ok: (g2_card_levelDown >= 1) and (g2_card_levelDown <= 10)
	levelUp_ok: (g2_card_levelUp >= 1) and (g2_card_levelUp <= 10)
	levelLeft_ok: (g2_card_levelLeft >= 1) and (g2_card_levelLeft <= 10)
	levelRight_ok: (g2_card_levelRight >= 1) and (g2_card_levelRight <= 10)

end
