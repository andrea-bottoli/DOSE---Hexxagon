note
	description: "Summary description for {G5_ABSTRACT_SUBJECT}."
	author: "SERGIO CARDOZO"
	date: "$Date$"
	revision: "$Revision$"

class
	G5_ABSTRACT_SUBJECT

Create
	make_subject

feature{ANY}  -- Initialization

	make_subject
		do
			create observers_list.make
		ensure
			initialize_list: observers_list.is_empty()
		end

feature -- Status Report

	is_observed_by(x : G5_OBSERVER): BOOLEAN
			--Return true if x is an observer of the subject
		do
			Result := observers_list.has (x)
		ensure
			does_it_belongs: Result = observers_list.has (x)
		end

feature -- Status Settings

	add_observer(x :G5_OBSERVER)
			--Add the X observer to a current subject.
		do
        	if (not is_observed_by (x))
            then
            	observers_list.put_front (x)
            end
		ensure
			belongs_in_list: is_observed_by(x)
		end

	remove_observer(x :G5_OBSERVER)
			--Delete the X observer from the current subject.
		do
			observers_list.prune (x)
		ensure
			is_not_observed_by_x: not is_observed_by (x)
		end


	notify_observers()
		        --Indicates that all observers of the current subject should be updated

		do

		end

feature{NONE} -- Implementation

	observers_list : LINKED_LIST [G5_OBSERVER]

end
