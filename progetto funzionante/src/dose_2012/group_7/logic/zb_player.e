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
			id/= Void

			do
				--impl
				ensure
					userID=id
			end

userID: INTEGER
HToken: INTEGER
BToken: INTEGER

peonPosition: ZB_POSITION


movePeon(position: ZB_POSITION)
--move a player peon to the position
	require
		position/=Void
		do
			--impl
			ensure
				peonPosition=position
		end

eventCard: ARRAY [ZB_EVENT_CARD]

state: INTEGER
getState(): INTEGER
--returns the integer associated with the state of the player
	require
		true
		do
			--imp
			ensure
				result>=0
		end
setState(s:INTEGER)
--set the player state
	require
		s/=void and s>=0
		do
			--impl
			ensure
				state=s
		end

ht(): INTEGER
--returns the number of the Heart Token the player has
	require
		true
		do
			--impl
			ensure
				result>=0 and result <=5
		end
bt(): INTEGER
--returns the number of the Bullet Token the player has
	require
		true
		do
			--impl
			ensure
				result>=0

		end


inCombat(): BOOLEAN
--returns true if the player is in combat state
	require
		true
		do
			--impl
			ensure
				result=true implies not inMovement() and not inZombieMovement() and not turnOver and not inMapCardPlacement
		end

inMovement(): BOOLEAN
--returns true if the player is in movement state
	require
		true
		do
			--impl
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not turnOver() and not inMapCardPlacement()
		end
inZombieMovement():BOOLEAN
--returns true if the player is in zombie movement state
	require
		true
		do
			--impl
			ensure
				result=true implies not inCombat() and not inMovement() and not turnOver() and not inMapCardPlacement()
		end
turnOver(): BOOLEAN
--returns true if the player is in turn over state
	require
		true
		do
			--impl
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not inMovement and not inMapCardPlacement()
		end
inMapCardPlacement():BOOLEAN
--returns true if the player is in map card placement state
	require
		true
		do
			--impl
			ensure
				result=true implies not inCombat() and not inZombieMovement() and not inMovement and not turnOver()
		end












invariant
	userID/=Void


end
