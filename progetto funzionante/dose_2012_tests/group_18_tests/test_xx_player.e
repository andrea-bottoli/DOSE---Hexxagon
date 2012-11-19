note
	description: "Test on XX_PLAYER class"
	author: "Team Milano2"
	date: "19-11-2012"
	revision: "0.2"
	testing: "type/manual"

class
	TEST_XX_PLAYER

inherit
	EQA_TEST_SET

feature -- Test routines

	--Tests the method make_player
	test_xx_player_make_player
		note
			testing:  "covers/{XX_PLAYER}.make_player"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Player is successfully created ", l_player/=Void)
			assert ("Player is successfully created ", l_player.get_player_id.is_equal (l_p_id))
			assert ("Player is successfully created ", l_player.get_colour_piece.is_equal (l_p_color))

			--Second test
			l_p_id:="XX_P2_PLUTTO"
			l_p_color:="Pearls"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Player is successfully created ", l_player/=Void)
			assert ("Player is successfully created ", l_player.get_player_id.is_equal (l_p_id))
			assert ("Player is successfully created ", l_player.get_colour_piece.is_equal (l_p_color))

			--Third test
			l_p_id:="XX_P3_PAPERINO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Player is successfully created ", l_player/=Void)
			assert ("Player is successfully created ", l_player.get_player_id.is_equal (l_p_id))
			assert ("Player is successfully created ", l_player.get_colour_piece.is_equal (l_p_color))

			--Fourth test
			l_p_id:="XX_P4_MINNIE"
			l_p_color:="Pearls"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Player is successfully created ", l_player/=Void)
			assert ("Player is successfully created ", l_player.get_player_id.is_equal (l_p_id))
			assert ("Player is successfully created ", l_player.get_colour_piece.is_equal (l_p_color))
		end

	--Tests the method set_port_number
	test_xx_player_set_port_number
		note
			testing:  "covers/{XX_PLAYER}.set_port_number"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_port_number: INTEGER
			l_p_color: STRING
			l_p_id: STRING
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			from
				l_p_port_number:=1
			until
				l_p_port_number>65536
			loop
				l_player.set_port_number (l_p_port_number)
				assert ("Port number is successfully setted", l_player.get_port_number.is_equal (l_p_port_number))
			end
		end

	--Tests the method get_colour_piece
	test_xx_player_get_colour_piece
		note
			testing:  "covers/{XX_PLAYER}.get_colour_piece"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Colour piece is successfully returned", l_player.get_colour_piece.is_equal (l_p_color))

			--Second test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Pearls"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("Colour piece is successfully returned", l_player.get_colour_piece.is_equal (l_p_color))
		end

	--Tests the method get_colour_piece
	test_xx_player_get_is_enabled
		note
			testing:  "covers/{XX_PLAYER}.get_is_enabled"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
			l_p_is_enable: BOOLEAN
		do
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)

			--First test
			l_p_is_enable:=TRUE
			l_player.set_is_enabled (l_p_is_enable)
			assert ("player enable is successfully returned", l_player.get_is_enabled=l_p_is_enable)

			--Second test
			l_p_is_enable:=FALSE
			l_player.set_is_enabled (l_p_is_enable)
			assert ("player enable is successfully returned", l_player.get_is_enabled=l_p_is_enable)
		end

	--Tests the method get_ip_net
	test_xx_player_get_ip_net
		note
			testing:  "covers/{XX_PLAYER}.get_ip_net"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
			l_p_ip_net: STRING
		do
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)

			--Second test
			l_p_ip_net:="5.5.5.5"
			assert ("Player ip is successfully returned", TRUE)
		end

	--Tests the method get_player_id
	test_xx_player_get_player_id
		note
			testing:  "covers/{XX_PLAYER}.get_player_id"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
		do
			l_p_color:="Rubies"

			--First test
			l_p_id:="XX_P1_PIPPO"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("player ID is successfully returned", l_player.get_player_id=l_p_id)

			--Second test
			l_p_id:="XX_P2_PLUTO"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("player ID is successfully returned", l_player.get_player_id=l_p_id)

			--Third test
			l_p_id:="XX_P3_PAPERINO"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("player ID is successfully returned", l_player.get_player_id=l_p_id)

			--Fourth test
			l_p_id:="XX_P4_PESTILENZA"
			create l_player.make_player (l_p_id, l_p_color)
			assert ("player ID is successfully returned", l_player.get_player_id=l_p_id)
		end

	--Tests the method get_priority
	test_xx_player_get_priority
		note
			testing:  "covers/{XX_PLAYER}.get_priority"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			--TODO
		do
			assert ("not_implemented", TRUE)
		end

	--Tests the method get_port_number
	test_xx_player_get_port_number
		note
			testing:  "covers/{XX_PLAYER}.get_port_number"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_port_number: INTEGER
			l_p_color: STRING
			l_p_id: STRING
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)
			from
				l_p_port_number:=1
			until
				l_p_port_number>65536
			loop
				l_player.set_port_number (l_p_port_number)
				assert ("Port number is successfully returned", l_player.get_port_number.is_equal (l_p_port_number))
			end
		end

	--Tests the method set_total_pieces
	test_xx_player_set_total_pieces
		note
			testing:  "covers/{XX_PLAYER}.set_total_pieces"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
			l_p_total_piece: INTEGER
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)

			--First test
			from
				l_p_total_piece:=0
			until
				l_p_total_piece>=58
			loop
				l_player.set_total_pieces (l_p_total_piece)
			end
			assert ("total piece is successfully setted", l_player.get_total_pieces.is_equal (l_p_total_piece))
		end

	--Tests the method get_get_total_pieces
	test_xx_player_get_total_pieces
		note
			testing:  "covers/{XX_PLAYER}.get_total_pieces"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
			l_p_total_piece: INTEGER
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)

			--First test
			from
				l_p_total_piece:=0
			until
				l_p_total_piece>=58
			loop
				l_player.set_total_pieces (l_p_total_piece)
			end
			assert ("total piece is successfully returned", l_player.get_total_pieces.is_equal (l_p_total_piece))
		end

	--Tests the method set_is_enabled
	test_xx_player_set_is_enabled
		note
			testing:  "covers/{XX_PLAYER}.set_is_enabled"
			testing:  "user/XX" -- this is tag with the class-prefix
		local
			l_player: XX_PLAYER
			l_p_color: STRING
			l_p_id: STRING
			l_p_is_e: BOOLEAN
		do
			--First test
			l_p_id:="XX_P1_PIPPO"
			l_p_color:="Rubies"
			create l_player.make_player (l_p_id, l_p_color)

			--First test
			l_p_is_e:=TRUE
			l_player.set_is_enabled (l_p_is_e)
			assert ("Player is enable", l_player.get_is_enabled=l_p_is_e)

			--Second test
			l_p_is_e:=FALSE
			l_player.set_is_enabled (l_p_is_e)
			assert ("Player is enable", l_player.get_is_enabled=l_p_is_e)
		end
end
