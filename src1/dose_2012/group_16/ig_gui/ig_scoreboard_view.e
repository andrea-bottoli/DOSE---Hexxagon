note
	description: "A view that represents the player's points for each color."
	author: "Emanuele Rudel, Florian Besser"
	date: "$Date$"
	revision: "$Revision$"

class
	IG_SCOREBOARD_VIEW

inherit
	EV_FIXED

	IG_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make_with_user

feature {NONE} -- Initialization

	make_with_user (a_player: IG_PLAYER)
			-- Initialize a scoreboard view with `a_scoreboard' logic object.
		require
			player_not_void: a_player /= Void
		do
			default_create
			scoreboard := a_player.scoreboard
			create player_label.make_with_text (a_player.name)
			extend_with_position_and_size (player_label, 14, 0, 200, 18)
			initialize_progress_bars
			initialize_progress_labels
				-- Immediately show the score of the player
			update
		ensure
			scoreboard_set: scoreboard = a_player.scoreboard
		end

feature -- Status Update

	update
			-- Forces the scoreboard view to update the player's points.
		local
			l_points: REAL
		do
			from progress_bars.start
			until progress_bars.after
			loop
				l_points := scoreboard.points_for_color (progress_bars.key_for_iteration)
				progress_bars.item (progress_bars.key_for_iteration).set_proportion (l_points/18.0)
				progress_labels.item (progress_bars.key_for_iteration).set_text (l_points.out + " ")
				progress_bars.forth
			end
		end

feature {NONE} -- Implementation

	scoreboard: IG_SCOREBOARD

	player_label: EV_LABEL

	progress_bars: HASH_TABLE[EV_HORIZONTAL_PROGRESS_BAR, STRING]

	progress_labels: HASH_TABLE[EV_LABEL, STRING]

	initialize_progress_bars
		local
			l_progress_bar: EV_HORIZONTAL_PROGRESS_BAR
			l_interval: INTEGER_INTERVAL
			i: INTEGER
		do
			create progress_bars.make (6)
			create l_interval.make (0, 18)

				-- Create yellow progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (0.886, 0.894, 0.309))
			progress_bars.put (l_progress_bar, hex_yellow_color)

				-- Create orange progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (1.0, 0.729, 0.157))
			progress_bars.put (l_progress_bar, hex_orange_color)

				-- Create red progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (0.855, 0.21, 0.21))
			progress_bars.put (l_progress_bar, hex_red_color)

				-- Create purple progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (0.898, 0.157, 1.0))
			progress_bars.put (l_progress_bar, hex_purple_color)

				-- Create green progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (0, 0.749, 0))
			progress_bars.put (l_progress_bar, hex_green_color)

				-- Create blue progress bar
			create l_progress_bar.make_with_value_range (l_interval)
			l_progress_bar.disable_segmentation
			l_progress_bar.set_background_color (create {EV_COLOR}.make_with_rgb (0.114, 0.843, 1.0))
			progress_bars.put (l_progress_bar, hex_blue_color)

				-- Insert progress bars in the view
			from i := 0
			until i >= progress_bars.count
			loop
				extend_with_position_and_size (progress_bars.iteration_item (i), 14, (i+1)*16, 200, 15)
				i := i + 1
			end
		end

	initialize_progress_labels
		local
			l_label: EV_LABEL
			i: INTEGER
		do
			create progress_labels.make (6)

				-- Create yellow label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (0.886, 0.894, 0.309))
			progress_labels.put (l_label, hex_yellow_color)

				-- Create orange label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (1.0, 0.729, 0.157))
			progress_labels.put (l_label, hex_orange_color)

				-- Create red label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (0.855, 0.21, 0.21))
			progress_labels.put (l_label, hex_red_color)

				-- Create purple label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (0.898, 0.157, 1.0))
			progress_labels.put (l_label, hex_purple_color)

				-- Create green label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (0, 0.749, 0))
			progress_labels.put (l_label, hex_green_color)

				-- Create blue label
			create l_label.make_with_text ("--")
			l_label.set_background_color (create {EV_COLOR}.make_with_rgb (0.114, 0.843, 1.0))
			progress_labels.put (l_label, hex_blue_color)

				-- Insert progress labels in the view
			from i := 0
			until i >= progress_labels.count
			loop
				extend_with_position_and_size (progress_labels.iteration_item (i), 218, (i+1)*16, 20, 15)
				i := i + 1
			end
		end

end
