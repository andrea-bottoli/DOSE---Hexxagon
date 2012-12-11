note
	description: "Summary description for {G3_ABSTRACT_OBSERVER}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov 2012$"
	revision: "$0.1$"

deferred class
	G3_ABSTRACT_OBSERVER

feature {ANY}

	on_update
			--feature called by update from subject
		deferred
			-- first check that no has error message on model,
			-- update observer with data provide by model
		end

end
