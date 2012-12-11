note
	description: "Class of color for tile"
	author: "Drobnyh Klim, Tishchenko Dmitriy"
	date: "12/6/2012"
	revision: "$Revision$"

class
	G20_COLOR
		create
		make

		feature{NONE}
		color : INTEGER

		feature{ANY}
		make
			do
				color := 0;
			end

		SetColor(argColor: INTEGER)
			require
				(color >= 1) and (color <= 6)
			do
				color := argColor
			end

		GetColor: INTEGER
			do
				Result:= color
			end

		Empty: INTEGER
			do
				Result:=0
			end

		Red : INTEGER
			do
				Result := 1
			end
		Green : INTEGER
			do
				Result := 2
			end
		Blue : INTEGER
			do
				Result := 3
			end
		Orange : INTEGER
			do
				Result := 4
			end
		Yellow : INTEGER
			do
				Result := 5
			end
		Purple : INTEGER
			do
				Result := 6
			end

		IsEmpty : BOOLEAN
			do
				Result := color = 0
			end

		invariant
			(color >= 0) and (color <= 6)
end
