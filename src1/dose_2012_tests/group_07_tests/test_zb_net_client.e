note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date$"
	revision: "$Revision$"
	testing: "type/manual"

class
	TEST_ZB_NET_CLIENT

inherit
	EQA_TEST_SET

feature -- Test routines

	test_ZB_NET_CLIENT
			-- New test routine
		note
			testing:  "covers/{ZB_NET_CLIENT}.sendusehearttoken", "covers/{ZB_NET_CLIENT}.sendmovezombie",
			          "covers/{ZB_NET_CLIENT}.sendplacemapcard", "covers/{ZB_NET_CLIENT}.disconnect",
			          "covers/{ZB_NET_CLIENT}.controller", "covers/{ZB_NET_CLIENT}.send_message",
			          "covers/{ZB_NET_CLIENT}.sendendmovement", "covers/{ZB_NET_CLIENT}.connect_to",
			          "covers/{ZB_NET_CLIENT}.sendquitplayer", "covers/{ZB_NET_CLIENT}.sendrolldice",
			          "covers/{ZB_NET_CLIENT}.sendusebullettokens", "covers/{ZB_NET_CLIENT}",
			          "covers/{ZB_NET_CLIENT}.is_connected", "covers/{ZB_NET_CLIENT}.socket",
			          "covers/{ZB_NET_CLIENT}.sendrotate", "covers/{ZB_NET_CLIENT}.senduseeventcard",
			          "covers/{ZB_NET_CLIENT}.sendaddnewplayer",
			          "covers/{ZB_NET_CLIENT}.senddiscardeventcard", "covers/{ZB_NET_CLIENT}.sendmovepeon",
			          "covers/{ZB_NET_CLIENT}.sendendturn"

			 user:    "user/ZB"

			local
				logic_for_net_test: TEST_ZB_LOGIC_FOR_NET_TEST
				gui_test: ZB_GUI_CONTROLLER
				client: ZB_NET_CLIENT
				server: ZB_NET_SERVER

		do
			--Inizialization
			create logic_for_net_test
			create server.make_with_controller (logic_for_net_test)
			create client.make (gui_test)

			--server.startserver
			--startserver può lanciarlo solo la logica




		end


end


