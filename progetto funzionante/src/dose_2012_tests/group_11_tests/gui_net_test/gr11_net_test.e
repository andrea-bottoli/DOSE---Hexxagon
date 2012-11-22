note
	description: "[
		Test for the GR11_NET class implementation
	]"
	author: "Christian Estler"
	date: "14.11.2012"
	revision: "1.0"
	testing: "type/manual"

class
	GR11_NET_TEST

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
		end

	on_clean
		do
			-- Similar to "on_prepare", this routine is automatically called after
			-- all tests have been executed.
		end

feature -- Test routines

	test_msg_send
			-- Test to check if the net component actually sends a message AND receives it.
			-- The message to be sent is a command message, we'll use a fake GR11_LOGIC object
			-- that will register calls to his methods.
		note
			testing: "covers/{GR11_NET}.send_net_msg(m: GR11_MSG)"
			testing: "user/GR11" -- this is tag with the class-prefix
		local
			l_fake_controller: GR11_FAKE_CONTROLLER; -- A fake CONTROLLER registering calls to his methods
			l_fake_gui: GR11_FAKE_GUI; -- A fake GUI registering calls to his methods
			l_msg: GR11_MSG
			l_sender:GR11_FAKE_NET; -- A GR11_NET to send messages TODO :Real implementation here
			l_receiver:GR11_FAKE_NET; -- A GR11_NET to receive messages to forward to a controller TODO:Real implemntation here
		do
				-- first we create the fake controller	
			create l_fake_controller
			create l_fake_gui
				-- then we create the net components that will communicate
			create  l_sender --make(l_fake_gui)
			create  l_receiver --make(l_fake_gui)
				-- then we send some commands through the network
			create l_msg --TODO:XML_HERE
			-- l_sender.send_net_msg(l_msg)
				--for each msg sent, we check if the fake controller received it
			-- assert("The message sent equals the message received:", l_msg.equals(l_fake_controller.received_msg) );
		end

end


