note
	description: "Summary description for {SERVERMODEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_SERVERMODEL

create
	make

feature
   players: ARRAY[RI_PLAYER]
   territories: ARRAY[RI_TERRITORY]
   turnMaker: BOOLEAN

  updateByReceivedData(data : STRING)
    do
    	-- to update the state of game with the received data from server
    end

  broadcastNewReceivedData(data: STRING)
    do
    	--to broadcast the new state properties to other players
    end

  saveToDB()
    do
     --save the state in the database
    end

  readFromDB()
    do
      --retrieve from DB

    end

	make
	 do
	 --initialize the servermodel instance
	  end


end
