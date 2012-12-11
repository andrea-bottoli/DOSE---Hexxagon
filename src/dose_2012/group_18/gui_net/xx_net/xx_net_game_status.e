note
	description: "Summary description for {XX_NET_GAME_STATUS}."
	author: "Team Milano 2"
	date: "06-12-2012"
	revision: "0.2$"

class
	XX_NET_GAME_STATUS

inherit
	STORABLE

create
	make
feature --attributes

	player1,player2:XX_PLAYER
	is_active:BOOLEAN

feature{NONE} --creation

	make(a_player1:XX_PLAYER ;a_player2:XX_PLAYER;active:BOOLEAN)
		do
			player1:=a_player1
			player2:=a_player2
			is_active:=active
		end
		
feature{XX_NET}
	get_pl1 : XX_PLAYER
		do
			result:=player1
		end

	get_pl2 : XX_PLAYER
		do
			result:=player2
		end

	get_active:BOOLEAN
		do
			result:=is_active
		end
end

