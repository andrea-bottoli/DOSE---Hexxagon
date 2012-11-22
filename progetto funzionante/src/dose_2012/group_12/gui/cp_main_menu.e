note
	description: "The class responsible for building the game main menu"
	author: "Christos Petropoulos"

class
	CP_MAIN_MENU

create
	make

feature -- Initialization

	make
			--Initializes the main menu
		do

		end

feature -- Drawing operations

	drawImage
			-- Draws the image of the game
		do

		end

	drawButtons
			-- Draws the menu buttons
		do

		end

feature {NONE} -- Events for each button

	startServer:CP_SERVER
			-- Opens a dialog and asks for port
			-- and then returns the server object
			-- and begins the game.
		do

		end

	connectServer:CP_CLIENT
			-- Opens a dialog and asks for port,ip address.
			-- And then returns the client object and begins the game.
		do

		end

	exitGame
			-- Exits the game
		do
			
		end

end
