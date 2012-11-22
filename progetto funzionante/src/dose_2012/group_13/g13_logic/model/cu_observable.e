note
	description: "Implements the functionalities for a class to be an observable object in the Observer Design Pattern."
	author: "Stefano Campanella"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CU_OBSERVABLE

feature {NONE}
	observers: LINKED_LIST[CU_OBSERVER]
		once
			create Result.make
		end

feature  {CU_OBSERVABLE}
	add_observer(a_observer: CU_OBSERVER)
		require
			valid_obs: a_observer /= void
		do
			observers.extend(a_observer)
		ensure
			added_to_obs: observers.count = old observers.count +1
		end

	notify_observers(a_msg: CU_MESSAGE)
		do
			from
				observers.start
			until
				observers.off
			loop
				observers.item.update(Current,a_msg)
			end
		end
end
