note
	description: "Summary description for {G21_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_PLAYER
create
	make
feature

	cardList:ARRAY[G21_CARD]
	size:INTEGER_32

	make
	do

	ensure
	end

	addCard(card:G21_CARD)
	require
		cardNotVoid:card /= void
		notFound:isFound(card) = -1
	do


	ensure
		Found:isFound(card) /= -1
		cardListSize:size = old size + 1
	end

	isFound(card:G21_CARD) : INTEGER_32
	require
		cardNotVoid:card /= void
	do

	ensure
		exist:result>-1
		notExist:result = -1
	end

	removeCard(card:G21_CARD)
	require
		cardNotVoid:card /= void
		Found:isFound(card) /= -1
	do


	ensure
		NotFound:isFound(card) = -1
		cardListSize:size = old size - 1
	end
	saveCardList
	require
		cardList /= void
	do


	end

	serialize (a_object: ANY): STRING
	require
		a_object_not_void: a_object /= Void
	do


	ensure
		serialize_not_void: Result /= Void

	end

	deserialize (a_string: STRING): ANY
	require
		a_string_not_void: a_string /= Void
	do


	end


	invariant
		cardListSize:size >= 5
end
