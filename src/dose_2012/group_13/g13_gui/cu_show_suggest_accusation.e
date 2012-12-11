note
	description: "Summary description for {CU_SHOW_SUGGEST_ACCUSATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CU_SHOW_SUGGEST_ACCUSATION

inherit
	CU_WINDOWS

create
	make

feature
	make (a_player_suggest, a_suspect: CU_ENUM_SUSPECTS; a_weapon: CU_ENUM_WEAPONS; a_room: CU_ENUM_ROOMS)
	-- Displays the window of the suggestion
	require
		not_displayed: not is_displayed
	do
	ensure
	suggest_is_displayed: is_displayed
	end

	set_label_windows (a_label: EV_LABEL)
	-- Modifies the label
	require
		non_empty_label: a_label /= void
	do
	ensure
		label_updated: a_label = label_windows
	end

feature {NONE}
	label_windows: EV_LABEL
        -- Label situated on the top of the dialog,
        -- contains the suggest or the accusation.
    ok_button: EV_BUTTON
        -- "OK" button.

end
