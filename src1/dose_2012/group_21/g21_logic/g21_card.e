note
	description: "Summary description for {G21_CARD}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_CARD
create
	make

feature

	right:INTEGER_32
	left:INTEGER_32
	top:INTEGER_32
	bottom:INTEGER_32

	element:CHARACTER_8 -- should be equal ' ' if the card is not elemental
	-- 'f' for fire, 'i' for ice, 't' for thunder, 'e' for earth, 'w' for water,'n' for wind, 'p' for poison, 'h' for holy
	cardName:STRING

	make
	do

	end

	setElement(c:CHARACTER_8)
	do
		element := c
	end
	getElement:CHARACTER_8
	do
		Result := element
	end
	setRight(r:INTEGER_32)
	do
		if r >0 and r <=10 then
			right := r
		--else
		--	(create {DEVELOPER_EXCEPTION}).raise
		end

	end

	getRight:INTEGER_32
	do
		result := right
	end

	setLeft(l:INTEGER_32)
	do
		if l >0 and l <=10 then
			left := l
		--else
		--	(create {DEVELOPER_EXCEPTION}).raise
		end

	end

	getLeft:INTEGER_32
	do
		result := left
	end

	setTop(t:INTEGER_32)
	do
		if t > 0 and t <= 10 then
			top := t
		--else
		--	(create {DEVELOPER_EXCEPTION}).raise
		end

	end


	getTop:INTEGER_32
	do
		result := top
	end

	setBottom(b:INTEGER_32)
	do
		if b >0 and b <=10 then
			bottom := b
		--else
		--	(create {DEVELOPER_EXCEPTION}).raise
		end

	end

	getBottom:INTEGER_32
	do
		result := bottom
	end
	setCardName(s:STRING)
	do
		if s /= void then
			cardname := s

		end
	end
	getCardName:STRING
	do
		Result := cardname
	end

end
