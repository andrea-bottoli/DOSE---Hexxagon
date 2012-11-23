note
	description: "[
		a guideline to take some tests on GUI classes (don't run it it's only a guideline)
	]"
	author: "Andrea Braschi"
	date: "17.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	TEST_B8_GUI

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
			-- We don't use it in this particualr class. but it's here so you learn about its existence.
		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed. You can use it, for example, if you need
			-- to free resources etc. that your test were using.
		end

feature -- Test routines


	--3.1.1.1
	test_first_layer_window
			-- Test if the first layers appears right
		note
			testing: "covers/{B8_GUI}.first_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the window
			create l_window.make

				-- create the first layer and then we ask to the tester if it semms ok
			l_window.create_first_layer_window()
			assert ("the frame seems to be right", ask("it's ok?"))
		end

	test_first_layer_window1
			-- Test if the first layers has two buttons
		note
			testing: "covers/{B8_GUI}.first_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the window
			create l_window.make

				-- create the first layer and then we ask to the tester if it has 2 buttons
			l_window.create_first_layer_window()
			assert ("the frame has two buttons", ask("does it have two buttons?"))
		end

		--3.1.1.2
	test_second_layer_window_host
			-- Test if the first button works right
		note
			testing: "covers/{B8_GUI}.first_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the first layer and then we ask to the tester if the first button works right
			l_window.create_first_layer_window()
			assert ("the first button works right", ask("if you click on the host button then do you see the right second layer?"))
		end

		test_second_layer_window_client
			-- Test if the second button works right
		note
			testing: "covers/{B8_GUI}.first_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the first layer and then we ask to the tester if the second button works right
			l_window.create_first_layer_window()
			assert ("the the second button works right", ask("if you click on the client button then do you see the right second layer?"))
		end

		--3.1.1.3
	test_third_layer_window_complete
			-- Test if the third layer appear complete
		note
			testing: "covers/{B8_GUI}.first_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the third layer and then we ask to the tester if it's complete
			l_window.create_third_layer_window()
			assert ("the frame is complete", ask("it's this layer complete?(like requirements 3.1.1.3)"))
		end

	test_third_layer_window_function_buttons
			-- Test if the buttons in the third layer are working right
		note
			testing: "covers/{B8_GUI}.third_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the third layer and then we ask to the tester if it's complete
			l_window.create_third_layer_window()
			assert ("function buttons are working right", ask("Are function buttons working right?(like requirements 3.1.1.3)"))
		end

			--3.1.1.4
	test_fourth_layer_window_winner
			-- Test if the win message it's right
		note
			testing: "covers/{B8_GUI}.fourth_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the win message and then we ask to the tester if it's complete
			l_window.create_fourth_layer_window()
			assert ("win message is working right", ask("is win message working right?"))
		end

	test_fourth_layer_window_connection_problem
			-- Test if the connection problem window it's right
		note
			testing: "covers/{B8_GUI}.fourth_layer_window"
			testing: "user/B8" -- this is tag with the class-prefix
		local
			l_window: B8_GUI_Windows
				-- a local variable for the window
		do
				-- first we create the the window and the agent
			create l_window.make

				-- create the connection problem window and then we ask to the tester if it's complete
			l_window.create_connection_problem_window()
			assert ("connection problem window is working right", ask("is connection problem window working right?"))
		end






feature{NONE} --feature for ask question to the tester

	ask(a_question:STRING):BOOLEAN
	--	local
	--		l_answer : CHARACTER
		do
			--print(a_question+"(answer y or n)%N")
			--io.read_character
			--l_answer:= io.last_character
			--if l_answer='y' or l_answer= 'Y' then Result:=True
			--else
				Result:=False
		end

end

