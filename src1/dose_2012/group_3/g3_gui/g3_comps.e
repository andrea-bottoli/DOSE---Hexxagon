note
	description: "Tichu components."
	author: "LYDATAKIS GEORGIOU KATEROS"
	date: "$Date$"
	revision: "$0.1$"

class
	G3_COMPS

feature {ANY}
	path:STRING = "dose_2012/images/group_03"
	card_path(card:G3_CARD) : STRING_8

	do
		create Result.make_from_string (path)
		Result.append_string ("/cards/")
		if(card.is_the_dog) then
			Result.append_string ("dogs.png")
		elseif card.is_the_dragon then
			Result.append_string ("dragon.png")
		elseif card.is_the_phoenix then
			Result.append_string ("phoenix.png")
		elseif card.is_the_mahjongg then
			Result.append_string ("mahjong.png")
		else
			if card.kind.is_equal ("RED") then
				Result.append_string("red")
			elseif card.kind.is_equal ("BLACK") then
				Result.append_string("black")
			elseif card.kind.is_equal ("BLUE") then
				Result.append_string("blue")
			else
				Result.append_string("green")
			end

			if card.number.is_equal ("A") then
				Result.append_string("14")
			elseif card.number.is_equal ("K") then
				Result.append_string("13")
			elseif card.number.is_equal ("Q") then
				Result.append_string("12")
			elseif card.number.is_equal ("J") then
				Result.append_string("11")
			else
				Result.append_string(card.number)

			end
			Result.append_string(".png")
		end

	end
end
