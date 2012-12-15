note
	description: "Model of the game"
	author: "Milano4"
	date: "24/11/2012"
	revision: "0.1"

class
	GR11_MODEL

create
	make

feature{NONE} --components
	board :GR11_BOARD
	turn_queue: QUEUE[GR11_PLAYER]

feature --turn state
	current_player: GR11_PLAYER
	current_squadron: GR11_SQUADRON
	moved: LIST[GR11_BASE_SHIP]
	phase: STRING_8

feature --creation
	make
	do
		observers := create {LINKED_LIST[GR11_OBSERVER]}.make
		turn_queue := create {LINKED_QUEUE[GR11_PLAYER]}.make
		current_squadron:= void;
		phase := ""
	end

feature -- setting-up
	join(player: GR11_USER_ID; race: STRING_8)
	do
		--TODO, evitare doppi join
		turn_queue.put (create {GR11_PLAYER}.make(player, race))
	end

	start_match
	do
		phase := "setup-1"
		notify (create {GR11_MSG}.make("<turn player=%"" + "asd" + "%" />") )
	end

	place_fighter(player: GR11_USER_ID; where: GR11_COORDINATES; direction: GR11_DIRECTION)
	do

	end

	place_capital(player: GR11_USER_ID; where: GR11_COORDINATES; direction: GR11_DIRECTION)
	do

	end



feature -- in-game public API
	-- every method here receives a GR11_USER_ID which will be used
	-- to avoid players to play when it's not their turn.

	reveal_card(player: GR11_USER_ID; fm: INTEGER_32; fr: INTEGER_32; ff: INTEGER_32; cm: INTEGER_32; cf: INTEGER_32)
	do
		if player.is_equal(turn_queue.item.get_name) -- and
			--turn_queue.item.can_play_card(create {GR11_NORMAL_CARD}.make_int(fm, fr, ff, cm, cf) ) and
			and (phase.is_equal ("capital fire") or phase.is_equal ("setup") )
		then
			phase := "new turn"
			turn_queue.put (current_player)
			current_player := turn_queue.item
			turn_queue.remove
			--notify(create {GR11_MSG}.make("") );
		end
	end

	move(player: GR11_USER_ID; start: GR11_COORDINATES; destination: GR11_COORDINATES)
	local
		ship: GR11_BASE_SHIP
	do
		if player.is_equal(current_player.get_name) and (phase.is_equal ("new turn") or phase.is_equal ("move fighter") ) then
			phase := "move fighter"
			if current_squadron = void then
				--set squadron
			else
				--if squadron.has(ship)
				--then board.move
			end
		end
	end

	collision(player: GR11_USER_ID; hex: GR11_COORDINATES; saved: GR11_DIRECTION)
	do
		if player.is_equal(current_player.get_name) and phase.is_equal ("new turn") then

		end
	end

	fire(player: GR11_USER_ID)
	do
		if player.is_equal(current_player.get_name) then

		end
	end

	rotate(player: GR11_USER_ID; ship_pivot: GR11_COORDINATES; direction: GR11_DIRECTION)
	do
		if player.is_equal(current_player.get_name) then

		end
	end

	capital_fire(player: GR11_USER_ID; ship: GR11_COORDINATES; target: GR11_COORDINATES)
	do
		if player.is_equal(current_player.get_name) then

		end
	end


feature --observable tools
	observers: LIST[GR11_OBSERVER]

	register_observer(o: GR11_OBSERVER)
	do
		observers.extend( o )
	end

	notify(xml: GR11_MSG)
	local
		i:INTEGER
	do
		from i := 1
		until i > observers.count
		loop
			-- TODO: implement with thread for safety
			observers[i].send_update_msg(xml)
		end
	end
end
