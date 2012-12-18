note
	description: "Summary description for {ROOMMANAGER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_ROOMMANAGER
  create
  	make

  feature
      ready_players: ARRAY[RI_PLAYER]
      open_matches: ARRAY[RI_MATCH]

      joinToMatch(chosen_match: RI_MATCH)
        do
        	--join to the running match
        end
      listeningServer()
        do
        	--it will be refreshing the opened matches (the ARRAY)
        end

      createMatch()
        do
        	--initialize a new match and add to the open_matches array
        end

	   make
	  	do
           --initialize the instance
	  	end

end
