note
	description: "Summary description for {ZB_MAPCARD_DECK}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	ZB_MAPCARD_DECK

	create
		make
	feature
		deck:LINKED_LIST[ZB_MAP_CARD]

		make
		do
			create deck.make
		 end

		 fill
		 	local
		 		tmpCard1:ZB_MAPCARD_TYPE1
		 		tmpCard2:ZB_MAPCARD_TYPE2
		 		tmpCard3:ZB_MAPCARD_TYPE3
		 		tmpCard4:ZB_MAPCARD_TYPE4
		 		i:INTEGER

		 	do

		 		from
		 			i:=0
		 		until
		 			i>5
		 		loop
		 			create tmpCard1.makecard
		 			create tmpCard2.makecard
		 			create tmpCard3.makecard
		 			create tmpCard4.makecard

		 			deck.extend (tmpCard1)
		 			deck.extend (tmpCard2)
		 			deck.extend (tmpCard3)
		 			deck.extend (tmpCard4)
		 			i:=i+1


		 		end
		 	end

		 	shuffle
		 		local
		 			tmpCard:ZB_MAP_CARD
		 			random_sequence:RANDOM
		 			i:INTEGER
		 			l_time: TIME
      				l_seed: INTEGER
		 		do
		 			      create l_time.make_now
					      l_seed := l_time.hour
					      l_seed := l_seed * 60 + l_time.minute
					      l_seed := l_seed * 60 + l_time.second
					      l_seed := l_seed * 1000 + l_time.milli_second
					      create random_sequence.set_seed (l_seed)
		 			from
		 				deck.start
		 			until
		 				deck.exhausted
		 			loop
		 				i:=random_sequence.item
		 				i:=i\\deck.count
		 				if i=0 then i:=i+1 end
		 				print("%N I = "+i.out+"count :"+deck.count.out+"%N")

						deck.swap (i)
						random_sequence.forth
						deck.forth
		 			end
		 		end

		 		pick:ZB_MAP_CARD
		 			do
		 				deck.start
		 				Result:=deck.item
		 				deck.remove
		 			end



end
