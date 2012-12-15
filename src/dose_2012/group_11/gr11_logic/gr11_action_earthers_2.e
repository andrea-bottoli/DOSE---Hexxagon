note
	description: "Summary description for {GR11_ACTION_EARTHERS_2}."
	author: "Milano4"
	date: "10/12/2012"
	revision: "0.2"

class
	GR11_ACTION_EARTHERS_2
inherit
	GR11_ACTION
	redefine
		call
	end
feature
	call(board:GR11_BOARD; player:GR11_PLAYER; list_of_coordinates :LIST[GR11_COORDINATES]):BOOLEAN
	local
		ship:GR11_BASE_SHIP
		fire:GR11_FIRE
		i:INTEGER
	do
		ship:=board.get_ship_at (list_of_coordinates.i_th (1))
		--controllo ship squadrone poi prendo squadrone

		--itero tutti gli squadroni e cambio il fire a tutte le ship
		from i:=1
		until i<4
		loop
			ship:=player.get_squadrons.i_th (i).getship
			--take one ship
			
			create fire.make  --also through asteroid
			--fire.set_fire(10) metodo da aggiungere in fire
			--fire.asteroids_block:=FALSE  non va
			ship.set_type_of_fire (fire)
			i:=i+1
		end
		Result:=TRUE
	end
end

