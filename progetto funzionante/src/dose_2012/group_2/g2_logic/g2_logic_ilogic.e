note
	description: "Deferred class ILOGIC for use at gui and net sub-component"
	author: "Konstantinos Kleftogiwrgos"
	date: "13/11/2012"
	revision: "$Revision$"

deferred class
	G2_LOGIC_ILOGIC

feature {ANY} --procedure

	set_state (e_state: G2_LOGIC_STATE)
		deferred
		end

	set_Rules (e_open, e_same, e_same_wall, e_sudden_death, e_plus, e_combo, e_elemental: BOOLEAN)
		deferred
		end

end
