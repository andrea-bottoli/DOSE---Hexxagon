note
	description: "Summary description for {TEST_XX_NET}."
	author: "Nada Feteha & Huda Touny"
	date: "11/21/2012"
	revision: "Huda Touny"


class
	TEST_XX_NET
inherit
    EQA_TEST_SET
feature -- Test routines

	test_send_chat_enable
	note
		testing: "covers/{XX_NET}.send_chat_enable"
		testing: "user/XX"
	local
		l_chat: XX_NET
		l_chat_enable: BOOLEAN
	do
	--Test 1
		create l_chat.make
		l_chat_enable:= FALSE
		l_chat.send_chat_enable (l_chat_enable)
		assert("Chat enable ",l_chat_enable = FALSE)

	--Test 2
			create l_chat.make
			l_chat_enable:= TRUE
			l_chat.send_chat_enable (l_chat_enable)
			assert("Chat enable ",l_chat_enable = TRUE)
	end

	test_send_timer
		note
			testing: "covers/{XX_NET}.test_send_timer"
			testing: "user/XX"
		local
			l_chat: XX_NET
			l_timer: XX_TIMER
		do
			create l_chat.make
			create l_timer.make_timer
			assert ("send timer correctly ",  l_timer /= Void)
		end
	test_init_connection
		note
			testing: "covers/{XX_NET}.init_connection"
			testing: "user/XX"
		local
			l_chat: XX_NET
			a_ip: STRING
			a_port: INTEGER
		do
		--Test 1
			create l_chat.make
			a_ip:= "TEST"
			a_port:= 1025
			l_chat.init_connection (a_ip, a_port)
			assert ("init connection correctly",a_ip.empty = FALSE)

		--Test 2
			create l_chat.make
			a_ip:= "TEST"
			a_port:= 1025
			l_chat.init_connection (a_ip, a_port)
			assert ("init connection correctly",a_ip/= void)

		--Test 3
			create l_chat.make
			a_ip:= "TEST"
			a_port:= 1025
			l_chat.init_connection (a_ip, a_port)
			assert ("init connection correctly",a_port>1024 and a_port<65536)
		end
		set_send_chat_message
			note
				testing: "covers/{XX_NET}.send_chat_message"
				testing: "user/XX"
			local
				l_chat: XX_NET
				l_chat_message: STRING
			do
			--Test 1
				create l_chat.make
				l_chat_message:= "Test"
				l_chat.send_chat_message (l_chat_message)
				assert ("send chat message correctly", l_chat_message/=Void)
			--Test 2
				create l_chat.make
				l_chat_message:= "Test"
				l_chat.send_chat_message (l_chat_message)
				assert ("send chat message correctly", l_chat_message.empty=FALSE)
			end

			test_set_chat_manager
				note
					testing: "covers/{XX_NET}.set_chat_manager"
					testing: "user/XX"
				local
					l_chat: XX_NET
					l_chat_Managers:XX_CHAT
				do
				--Test 1
					create l_chat.make
					create l_chat_Managers
					l_chat.set_chat_manager (l_chat_Managers)
					assert ("chat manage setted", l_chat_Managers/=Void)
				--Test 2
					create l_chat.make
					create l_chat_Managers
					l_chat.set_chat_manager (l_chat_Managers)
				--	assert ("chat manage setted", l_chat.get_chat_message)
				end
end
