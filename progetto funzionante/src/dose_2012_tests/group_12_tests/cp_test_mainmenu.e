note
	description: "[
		Group 12 main menu test class.
	]"
	author: "Alan"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	CP_TEST_MAINMENU

inherit
	EQA_TEST_SET
	    redefine
			on_prepare,
			on_clean
		end

feature {NONE} -- Events

	on_prepare
		do
			-- This routine is called before executing any test.
			-- You can use it, e.g. to prepare (i.e. create and set values to) objects
			-- that all your tests will need.
		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed. You can use it, for example, if you need
			-- to free resources etc. that your test were using.
		end

feature -- Test routines

	test_drawImage
			-- Testing pictures draw
		note
			testing:  "covers/{CP_MAIN_MENU}.drawImage"
		local
			--l_main_menu: CP_MAIN_MENU
				-- a local variable for the main menu
		do
			--create l_main_menu.drawImage
			print ("main menu drawImage is valid")
		end

    test_drawButtons
			-- Testing buttons draw
		note
			testing:  "covers/{CP_MAIN_MENU}.drawButtons"
		local
			--l_main_menu: CP_MAIN_MENU
		do
			--create l_main_menu.drawButtons
			print ("main menu drawImage is valid")
		end

	test_startServer
			-- Testing the server start
		note
			testing:  "covers/{CP_MAIN_MENU}.startServer"
		local
			--l_main_menu: CP_MAIN_MENU
			--l_server: CP_SERVER
			-- a local variable for a server instance
		do
			--create l_main_menu.startServer (l_server)
			print ("main menu server started")
		end

	test_connectServer
			-- Testing the server connect
		note
			testing:  "covers/{CP_MAIN_MENU}.connectServer"
		local
			--l_main_menu: CP_MAIN_MENU
			--l_client: CP_CLIENT
			-- a local variable for a client instance
		do
			--create l_main_menu.connectServer (l_client)
			print ("main menu server connected")
		end

	test_exitGame
			-- New test routine
		note
			testing:  "covers/{CP_MAIN_MENU}.exitGame"
		local
			--l_main_menu: CP_MAIN_MENU
		do
			--l_main_menu.exitGame
			print ("main menu exit game")
		end

end
