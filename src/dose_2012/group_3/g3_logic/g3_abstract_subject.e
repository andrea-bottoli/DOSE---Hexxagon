note
	description: "Summary description for {G3_ABSTRACT_SUBJECT}."
	author: "R. Martinez, F. Chiotta, S. Permigiani, G. Scilingo"
	date: "$6 Nov. 2012$"
	revision: "$0.1$"

class
	G3_ABSTRACT_SUBJECT

create
	make_subject

feature{ANY}  -- Initialization

	make_subject
		do
--			create observers_list.make
--		ensure
--			initialize_list: observers_list.is_empty()
			observer := Void
		end

feature -- Status Report

--	is_observed_by(x : G3_ABSTRACT_OBSERVER): BOOLEAN
--			--Return true if x is an observer of the subject
--		do
--			Result := observers_list.has (x)
--		ensure
--			does_it_belongs: Result = observers_list.has (x)
--		end

	is_observed_by(x : G3_ABSTRACT_OBSERVER): BOOLEAN
			--Return true if x is an observer of the subject
		do
			Result := True
		end

	is_observed: BOOLEAN
			--Return true if x is an observer of the subject
		do
			Result := observer /= Void
		end



feature -- Status Settings

	subscribe(x :G3_ABSTRACT_OBSERVER)
			--Add the X observer to a current subject.
		do
--        	if (not is_observed_by (x))
--            then
--            	observers_list.put_front (x)
--            end
--		ensure
--			belongs_in_list: is_observed_by(x)
			observer := x
		end

	unsubscribe(x :G3_ABSTRACT_OBSERVER)
			--Delete the X observer from the current subject.
		do
--			observers_list.prune (x)
--		ensure
--			is_not_observed_by_x: not is_observed_by (x)
			observer := Void
		end


	update
		        --Indicates that all observers of the current subject should be updated
--		local
--			i : INTEGER
--			j : INTEGER
		do
--			j := observers_list.count
--			io.new_line
--			print ("observers_list.count : " + j.out)
--			io.new_line
--			from
--				i := 1
--			until
--				i > j
--			loop
--				io.new_line
--				print ("dentro de update en el modelo, observer : " + i.out)
--				io.new_line
--				observers_list[i].on_update
--				i := i + 1
--			end
			print ("dentro de update en el modelo, observer : ")
			observer.on_update
		end

feature{NONE} -- Implementation

	observer :G3_ABSTRACT_OBSERVER

end






