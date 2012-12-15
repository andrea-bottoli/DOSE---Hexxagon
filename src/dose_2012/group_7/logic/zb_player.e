note
	description: "The Player Class Of the Logic Sub Component"
	author: "Milano8"
	date: "13.11.2012"
	revision: "0.0.2"

class
	ZB_PLAYER

create
	make
feature	-- Implementation
	make(id:INTEGER)
	--Set up with userID id

		require
			true

			do
				userID:=id
				HToken:=5
				BToken:=5
				zombieCollection:=0
				create peonPosition.make (0, 0)

				ensure
					userID=id
			end

userID: INTEGER
HToken: INTEGER
BToken: INTEGER
zombieCollection:INTEGER assign setZombieCollection
movementDiceRoll:INTEGER assign setMovementDiceRoll
combatDiceRoll:INTEGER   assign setCombatDiceRoll
zombieToMoveDiceRoll:INTEGER assign setZombieToMove


peonPosition: ZB_POSITION
zombieInStartPosition:BOOLEAN
haveToGoInZombieMovement:BOOLEAN assign setHaveToGoInZombieMovement

setHaveToGoInZombieMovement(bol:BOOLEAN)
do
	haveToGoInZombieMovement:=bol
end

setZombieToMove(int : INTEGER )
do
	zombieToMoveDiceRoll:=int
end
popHT
do
	HToken:=HToken-1
end

pushHT
do
	HToken:=HToken+1
end

pushBT
do
	BToken:=BToken+1
end

popBT(int:INTEGER)
require
	BToken>=int
do
	BToken:=BToken-int
end
setMovementDiceRoll(int:INTEGER)
do
	movementDiceRoll:=int
end

setCombatDiceRoll(int:INTEGER)
do
	combatDiceRoll:=int
end

setPeonPosition(x,y:INTEGER)
local
	tmppos:ZB_POSITION
do
	create tmppos.make (x, y)
	peonPosition:=tmppos
end

setZombieInStartPosition(bol:BOOLEAN)
do
	zombieInStartPosition:=bol
end

setZombieCollection(int:INTEGER)
do
	zombieCollection:=int
end

movePeon(position: ZB_POSITION)
--move a player peon to the position
	require
		position/=Void
		do
			peonPosition:=position
			ensure
				peonPosition=position
		end

--eventCard: ARRAY [ZB_EVENT_CARD]

state: INTEGER -- 0 non active; 1 in mapcardplacement; 2 in zombie placement; 3 in movement; 4 in combat;  5 in zombie movement;6 turn over; 7 rollDice
getState(): INTEGER
--returns the integer associated with the state of the player
	require
		true
		do
			Result:=state
			ensure
				result>=0
		end
setState(s:INTEGER)
--set the player state
	require
		s>=0
		do
			state:=s
			ensure
				state=s
		end

ht(): INTEGER
--returns the number of the Heart Token the player has
	require
		true
		do
			Result:=HToken
			ensure
				result>=0 and result <=5
		end
bt(): INTEGER
--returns the number of the Bullet Token the player has
	require
		true
		do
			Result:=BToken
			ensure
				result>=0

		end

inDiceRolling():BOOLEAN
	do

		if state = 7 then Result:=true
		else Result:=false
		end
	end

inCombat(): BOOLEAN
--returns true if the player is in combat state
	require
		true
		do
			if state=4 then Result:=true else Result:=false end
			ensure
				result=true implies not inMovement() and not inZombieMovement() and not turnOver and not inMapCardPlacement
		end

inMovement(): BOOLEAN
--returns true if the player is in movement state
	require
		true
		do
			if state=3 then Result:=true else Result:=false end
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not turnOver() and not inMapCardPlacement()
		end

inZombiePlacement():BOOLEAN
--returns true if the player is in zombie movement state
	require
		true
		do
			if state=2 then Result:=true else Result:=false end
			ensure
				result=true implies not inCombat() and not inMovement() and not turnOver() and not inMapCardPlacement()
		end

inZombieMovement():BOOLEAN
--returns true if the player is in zombie movement state
	require
		true
		do
			if state=5 then Result:=true else Result:=false end
			ensure
				result=true implies not inCombat() and not inMovement() and not turnOver() and not inMapCardPlacement()
		end
turnOver(): BOOLEAN
--returns true if the player is in turn over state
	require
		true
		do
			if state=6 then Result:=true else Result:=false end
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not inMovement and not inMapCardPlacement()
		end
inMapCardPlacement():BOOLEAN
--returns true if the player is in map card placement state
	require
		true
		do
			if state=1 then Result:=true else Result:=false

			end
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not inMovement and not turnOver()
		end


end


