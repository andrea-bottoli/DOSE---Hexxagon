note
	description: "Summary description for {HX_G_GAME_SCREEN}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	HX_G_GAME_SCREEN
inherit
	HX_G_BOARDS


feature

            getPlayer1() : INTEGER
            require
				deferred
			end

            getPlayer2() : INTEGER
            require
				deferred
			end

            getCurrentScorePlayer1(a_players_id : INTEGER) : INTEGER
            require
				deferred
			end

            getCurrentScorePlayer2(a_players_id : INTEGER) : INTEGER
            require
				deferred
			end

            getPieceImage()
            require
				deferred
			end

            getPieceBackground()
            require
				deferred
			end

            GameBoard_Constructor(a_main_ui : MAIN_WINDOW)
            require
				deferred
			end

            getGameGrid()
            require
				deferred
			end

            init()
            require
				deferred
			end

            update()
            require
				deferred
			end

            paint()
           require
				deferred
			end

            clear()
            require
				deferred
			end

            getDimensions()
            require
				deferred
			end


end
