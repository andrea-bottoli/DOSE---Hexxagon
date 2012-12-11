note
	description: "Represents the board"
	author: "TEAM Rio Cuarto5"
	date: "$Date$ 09/11/2012"
	revision: "$Revision$ see github repository"

class
	G6_BOARD

create
	make

feature -- Initialization

	make
			-- Create a board from a file called board.txt
		local
			input: PLAIN_TEXT_FILE
			l: LIST [STRING]
			i: INTEGER
			auxnp: G6_NONPROPERTY
			auxpt: G6_TRAIN
			auxps: G6_SERVICE
			auxpg: G6_GROUND
		do
			create cells.make_filled (Void, 1, 40)
			create input.make_open_read ("Dose_2012\group_6\g6_logic\board.txt")
			from
				input.start;
				input.read_line
				i := 1
			until
				input.off
			loop
				l := input.last_string.split ('%T')
				if (l.at (1) ~ "NP") then
					create auxnp.make (l.at (2), l.at (3).to_integer)
					cells.put (auxnp, i)
				elseif (l.at (1) ~ "PT") then
					create auxpt.make (l.at (2), l.at (3).to_integer)
					cells.put (auxpt, i)
				elseif (l.at (1) ~ "PS") then
					create auxps.make (l.at (2), l.at (3).to_integer)
					cells.put (auxps, i)
				else
					create auxpg.make (l.at (2), l.at (3).to_integer, l.at (4).to_integer, l.at (5).to_integer, l.at (6).to_integer, l.at (7).to_integer, l.at (8).to_integer, l.at (9).to_integer, l.at (10).to_integer, l.at (11).to_integer)
					cells.put (auxpg, i)
				end
				i := i + 1
				input.read_line
			end
		end

feature -- Measurement

	cells: ARRAY [G6_CELL]
			--List of cells of the board, 40 cells

feature --show object

	to_string: STRING
		local
			res: STRING
			i: INTEGER
		do
			res := ""
			from
				i := 1
			until
				i = 41
			loop
				res.append (cells [i].to_string)
				res.append_character ('%N')
				i := i + 1
			end
			Result := res
		end

invariant
	board_length: cells.count = 40

end
