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

	g2_card_levelDown: INTEGER

	g2_card_levelUp: INTEGER

	g2_card_levelRight: INTEGER

	g2_card_levelLeft: INTEGER

feature {ANY} --creator

	make (a_color: BOOLEAN; a_element: STRING; up, down, left, right: INTEGER)
		do
			g2_card_color := a_color
			g2_card_element := a_element
			g2_card_levelDown := down
			g2_card_levelUp := up
			g2_card_levelRight := right
			g2_card_levelLeft := left
		end

feature {ANY} --Setter of Level and color

	change_color ()
		--changes color between blue and red.if TRUE its red,if FALSE its blue
		do
			if g2_card_color=TRUE then
				g2_card_color:=FALSE
			elseif g2_card_color=FALSE then
				g2_card_color:=TRUE
			end
		end

	set_Element (elem: STRING)
		do
			g2_card_element := elem
		end

	set_LevelDown (Down: INTEGER)
		require
			okDown: Down >= 1 and Down <= 10
		do
			g2_card_levelDown:=Down
		end

	increase_LevelDown ()
		--increases level by 1
		require
			okDown: g2_card_levelDown >= 1 and g2_card_levelDown <= 10
		do
			g2_card_levelDown:=g2_card_levelDown+1
		end

	decrease_LevelDown ()
		--decrease level by 1
		require
			okDown: g2_card_levelDown >= 1 and g2_card_levelDown <= 10
		do
			g2_card_levelDown:=g2_card_levelDown-1
		end

	set_LevelLeft (Left: INTEGER)
		require
			okLeft: Left >= 1 and Left <= 10
		do
			g2_card_levelLeft:=Left
		end

	increase_LevelLeft ()
		--increases level by 1
		require
			okLeft: g2_card_levelLeft >= 1 and g2_card_levelLeft <= 10
		do
			g2_card_levelLeft:=g2_card_levelLeft+1
		end

	decrease_LevelLeft ()
		--decrease level by 1
		require
			okLeft: g2_card_levelLeft >= 1 and g2_card_levelLeft <= 10
		do
			g2_card_levelLeft:=g2_card_levelLeft-1
		end

	set_LevelRight (Right: INTEGER)
		require
			okRight: Right >= 1 and Right <= 10
		do
			g2_card_levelRight:=Right
		end

	increase_LevelRight ()
		--increases level by 1
		require
			okRight: g2_card_levelRight >= 1 and g2_card_levelRight <= 10
		do
			g2_card_levelRight:=g2_card_levelRight+1
		end

	decrease_LevelRight ()
		--decrease level by 1
		require
			okRight: g2_card_levelRight >= 1 and g2_card_levelRight <= 10
		do
			g2_card_levelRight:=g2_card_levelRight-1
		end

	set_LevelUp (Up: INTEGER)
		require
			okUp: Up >= 1 and Up <= 10
		do
			g2_card_levelUp:=Up
		end

	increase_LevelUp ()
		--increases level by 1
		require
			okUp: g2_card_levelUp >= 1 and g2_card_levelUp <= 10
		do
			g2_card_levelUp:=g2_card_levelUp+1
		end

	decrease_LevelUp ()
		--decrease level by 1
		require
			okUp: g2_card_levelUp >= 1 and g2_card_levelUp <= 10
		do
			g2_card_levelUp:=g2_card_levelUp-1
		end

		is_equal_card(card:G2_LOGIC_CARD):BOOLEAN
			do
				if
				g2_card_element = card.g2_card_element and g2_card_levelDown = card.g2_card_leveldown and g2_card_levelUp = card.g2_card_levelup and g2_card_levelRight = card.g2_card_levelright and g2_card_levelLeft = card.g2_card_levelleft then
					Result:=TRUE
				else
					Result:=FALSE
				end

			end
		print_card()
			do
			--	print("LEVELS: "+g2_card_levelUP+"--"+g2_card_levelRight+"--"+g2_card_levelDown+"--"+g2_card_levelLeft+"%N")
			--	print("Element: "+g2_card_element+"%N")
			io.put_new_line
			io.put_integer (g2_card_levelUP)
			io.put_string ("--")
			io.put_integer (g2_card_levelRight)
			io.put_string ("--")
			io.put_integer (g2_card_levelDown)
			io.put_string ("--")
			io.put_integer (g2_card_levelLeft)
			io.put_string ("--")
			io.put_boolean (g2_card_color)
			io.put_new_line
			end

invariant
	levelDown_ok: (g2_card_levelDown >= 0) and (g2_card_levelDown <= 11)
	levelUp_ok: (g2_card_levelUp >= 0) and (g2_card_levelUp <= 11)
	levelLeft_ok: (g2_card_levelLeft >= 0) and (g2_card_levelLeft <= 11)
	levelRight_ok: (g2_card_levelRight >= 0) and (g2_card_levelRight <= 11)

end
