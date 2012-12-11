note
	description: "Class that represents a message of conexion for net."
	author: "Group 1:  Rio Cuarto 7 - Milano 7"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_MESSAGE_CONNEXION

inherit

	G1_MESSAGE

create
	make, make_connexion

feature -- Initialization

	make
			-- Initialize the message whit default values
		do
			join := Void
			exit := False
		end

	make_connexion (a_join: STRING; a_exit: BOOLEAN)
		require
			valid_join: a_join /= Void
		do
			join := a_join
			exit := a_exit
		end

feature --Measurent

	join: STRING
			-- Direction to join a server

	exit: BOOLEAN
			-- If exit is true the player leaves the game

end
