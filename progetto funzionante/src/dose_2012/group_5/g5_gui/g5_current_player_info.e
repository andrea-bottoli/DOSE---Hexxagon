note
	description: "This contains info about current player like: name, action points, number of cards that can buy, coins."
	author: "Gabriele Fanchini"
	date: "18.11.2012"
	revision: "1.0"

class
	G5_CURRENT_PLAYER_INFO
create
	make
feature
	make(a_name:STRING)
		--this is the constructor
		require
			valid_arg:a_name/= void
			valid_name: a_name.count >1
		do
			current_player_name := a_name
			action_points := 0
			buy_points:=0
			coins:=0
		end


	set_current_player_name(a_name: STRING)
		-- this feature sets the name of the current player when a new turn started
		require
			valid_arg: a_name /= void
		do
			current_player_name := a_name
		end

	set_action_points(a_value: INTEGER)
		-- this feature sets the number of action_points still available
		require
			valid_arg: a_value >=0
		do
			action_points := a_value
		end

	set_buy_points(a_value: INTEGER)
		-- this feature sets the number of buy_points still available
		require
			valid_arg: a_value >=0
		do
			buy_points := a_value
		end

	set_coins(a_value: INTEGER)
		-- this feature sets the number of coins still available
		require
			valid_arg: a_value >=0
		do
			coins := a_value
		end

	set_default()
		-- this feature resets to default values
		require
			true
		do
			set_coins(0)
			set_buy_points(1)
			set_action_points(1)
		end

feature -- variable

	current_player_name: STRING
		-- the name of the current player		

	action_points: INTEGER
		-- the number of actions that the current player can still make this turn

	buy_points: INTEGER
		-- the number of cards that the current player can still buy this turn

	coins: INTEGER
		-- the number of coins available by the current player this turn

end
