note
	description: "Summary description for {G1_RAILWAY}."
	author: "Group 1 - Rio Cuarto 7 - Milano 7: Federico Pereyra"
	date: "$Date$"
	revision: "$Revision$"

class
	G1_RAILWAY

inherit

	G1_DEED
		redefine
			set_owner
		end

create
	make_railway

feature

	number_of_railways: INTEGER

feature -- Initialization

	make_railway (r_id: INTEGER; r_name: STRING)
		require
			valid_id: r_id > 0 and r_name /= Void
		do
			id_cell := r_id
			name_cell := r_name
			price := 200
			mortgaged_value := 100
			mortgage := False
			sold := False
		ensure
			valid_number_railway: id_cell = r_id
			vaild_name: name_cell = r_name
			valid_price: price = 200
			valid_m_value: mortgaged_value = 100
			valid_mortgage: mortgage = False
		end

feature --Basics Operations

	set_railways (r_id: INTEGER; r_name: STRING)
			-- Set the number of the railways
		require
			valid_railways: r_id > 0 and r_name /= Void
		do
			id_cell := r_id
			name_cell := r_name
		ensure
			valid_railways: id_cell > 0 and name_cell /= Void
		end

	rent_value (): INTEGER
			-- Value of rents
		do
			if (owner.number_of_railways = 1) then
				Result := owner.number_of_railways * 25
			else
				if (owner.number_of_railways = 2) then
					Result := owner.number_of_railways * 50
				else
					if (owner.number_of_railways = 3) then
						Result := owner.number_of_railways * 100
					else
						if (owner.number_of_railways = 4) then
							Result := owner.number_of_railways * 200
						end
					end
				end
			end
		end

	set_owner (a_owner: G1_PLAYER)
			-- Set the new Owner of the Utility
		require else
			valid_id_owner: a_owner.id_player > 0
		do
			if owner /= Void then
				owner.decrement_number_railways
			end
			owner := a_owner
			owner.increment_number_railways
		ensure then
			valid_owner: owner /= Void
		end

invariant
	valid_number_railways: number_of_railways >= 0

end
