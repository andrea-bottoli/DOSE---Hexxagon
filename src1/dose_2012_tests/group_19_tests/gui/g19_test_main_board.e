class
    G19_TEST_GUI

feature
    set_kingdom_builder_cards_test
		note
			testing: "covers/{G19_MAIN_BOARD}.set_kingdom_builder_cards"
        local
            cards : ARRAY[G19_KINGDOM_BUILDER_CARD]
            main_board : G19_MAIN_BOARD
        do
            main_board.set_kingdom_builder_cards(cards)
            assert ("not_implemented", False)
        end

	add_user_card_test
		note
			testing:"covers/{G19_MAIN_BOARD}.add_user_card"
	    local
	        main_board : G19_MAIN_BOARD
	        card : G19_CARD
	    do
	    	main_board.add_user_card_test(card)
	    	assert("not_implemented", False)
		end

	add_menu_point_test
		note
        	testing:"covers/{G19_MENU}.add_menu_point"
	    local
	        title : STRING
	        menu : G19_MENU
	    do
	        menu.add_menu_point(title)
	        assert("not_implemented", False)
	    end

end
