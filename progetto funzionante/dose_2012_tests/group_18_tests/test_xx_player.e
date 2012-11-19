note
	description: "Test on XX_PLAYER class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.1"
	testing: "type/manual"

class
	TEST_XX_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines

	--Tests the method make_player
	test_xx_player_make_player
			--Tests the method make_player
		note
			testing:  "covers/{XX_PLAYER}.make_player"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
		do
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Player is successfully created ", l_player.get_player_id.is_equal (l_p_id))
			assert ("Player is successfully created ", l_player.get_colour_piece.is_equal (l_p_color))
		end

	--Tests the method set_port_number
	test_xx_player_set_port_number
			--Tests the method set_port_number
		note
			testing:  "covers/{XX_PLAYER}.set_port_number"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_colour_piece
	test_xx_player_get_colour_piece
			-- Tests the method get_colour_piece
		note
			testing:  "covers/{XX_PLAYER}.get_colour_piece"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_colour_piece
	test_xx_player_get_is_enabled
			--Tests the method get_colour_piece
		note
			testing:  "covers/{XX_PLAYER}.get_is_enabled"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_ip_net
	test_xx_player_get_ip_net
			--Tests the method get_ip_net
		note
			testing:  "covers/{XX_PLAYER}.get_ip_net"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_player_id
	test_xx_player_get_player_id
			--Tests the method get_player_id
		note
			testing:  "covers/{XX_PLAYER}.get_player_id"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_priority
	test_xx_player_get_priority
			--Tests the method get_priority
		note
			testing:  "covers/{XX_PLAYER}.get_priority"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_port_number
	test_xx_player_get_port_number
		--Tests the method get_port_number
		note
			testing:  "covers/{XX_PLAYER}.get_port_number"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method get_port_number
	test_xx_player_get_total_pieces
			--Tests the method get_total_pieces
		note
			testing:  "covers/{XX_PLAYER}.get_total_pieces"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method set_is_enabled
	test_xx_player_set_is_enabled
			--Tests the method set_is_enabled
		note
			testing:  "covers/{XX_PLAYER}.set_is_enabled"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end

	--Tests the method set_total_pieces
	test_xx_player_set_total_pieces
			--Tests the method set_total_pieces
		note
			testing:  "covers/{XX_PLAYER}.set_total_pieces"
			testing:  "user/XX" -- this is tag with the class-prefix
		do
			assert ("not_implemented", False)
		end
end
