note
	description: "Summary description for {WORLDMODEL}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_WORLDMODEL
 create
 	make
 feature
 	players: ARRAY[RI_PLAYER]
    territories: ARRAY[RI_TERRITORY]
 	summary: STRING

 	invasion(A: RI_TERRITORY B: RI_TERRITORY)
 	  do
 	  	--When player from territory A invades territory B
 	  end
 	reinforcement(A: RI_TERRITORY B: RI_TERRITORY count: INTEGER)
 	 do
 	 	--when player moves some troops from A to B
 	  end

 	 fortify(A: RI_TERRITORY)
 	  do
 	   --When one soldier is added to territory A during the phase of fortify
 	  end

 	parseData(data: STRING)
 	  do
 	    --it is called by NET and get's the data received from the server, parses it.
 	  end
 	sendData(data: STRING)
 	 do
 	 	--sends data to server throughout NET
 	 end
   showUpdates
     do
     	--related to GUI
     end

 	make
      do
      	--initialize the worldmodel
      end

end
