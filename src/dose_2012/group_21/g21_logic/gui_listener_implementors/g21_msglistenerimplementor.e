note
	description: "Summary description for {G21_MSGLISTENERIMPLEMENTOR}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G21_MSGLISTENERIMPLEMENTOR
	inherit
	G21_MSG_LISTENER
	redefine messageReceived end
	create
		make
	feature
		parsing:ARRAY[STRING]
		startDefaultCards:BOOLEAN
		board:G21_BOARD
		make
		do
			create parsing.make_filled (void, 1, 10)
			startDefaultCards := true
		end

		messageReceived(msg : STRING)
		local
			i:INTEGER
			j:INTEGER
			parse:STRING
		do
			msg.append_character (' ')
			create parse.make_empty
			j := 0
			from
				i := 1
			until
				i >= msg.count+1
			loop

				if(msg.at (i) = ' ')then
					j := j + 1
					parsing.put (parse , j)
					parse := ""
				else
					parse.append_character (msg.at (i))
				end
				--print(str.at (i))
				i := i+1

			end

			if(parsing.at (1).is_equal ("Player"))
			then
				--print(parsing.at (1))
				if(board = void)then
				--print(parsing.at(5))
					create board.make(false,-1)
				end
				if(parsing.at (2).is_equal ("1"))
				then
				--	print(parsing.at(5))
				--	print("%N")
				--	print(parsing.at(5))
					board.addtocarddeckplayer1 (parsing.at (5).to_integer)
				else
					board.addtocarddeckplayer1 (parsing.at (5).to_integer)
				end
			end
			if(parsing.at (1).is_equal ("Start"))then
				if(board = void)
				then
					create board.make (true, -1)
				end
			end
			if(parsing.at (1).is_equal ("Select"))then

				board.activerule (parsing.at (3))
			end
			if(parsing.at (1).is_equal ("Card"))then

				board.makeplay (parsing.at (4).to_integer, parsing.at (6).to_integer, parsing.at (2).to_integer)
			end



		end

end
