note
	description: "Summary description for {CP_BOARD_CONTROLLER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CP_BOARD_CONTROLLER


feature
	player1: CP_PLAYER

	player2: CP_PLAYER

	onturn: CP_PLAYER

	winner: CP_PLAYER

	gamestarted: BOOLEAN

	listblackpieces: ARRAY[CP_INSECT]

	listwithepieces: ARRAY[CP_INSECT]

feature

	verifygamestarted
		do

		end

	resetgame
		do

		end

	setpieceonboard(index:INTEGER; insects:ARRAY[CP_INSECT])
		require
			correc_index: index > -1

			correct_insects_size: insects.capacity = 11
		do

		ensure


		end

	passturn(player:CP_PLAYER)
		do

		end

	checkqueenbeeplaced:BOOLEAN
		do

		end

end
