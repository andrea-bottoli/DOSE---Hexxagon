note
	description: "Implementation of the Class {G20_SCOREBOARD}(#GUI) of the Game 'Ingenious' "
	author: "Louloudakis Nick - crete4"
	date: "12/12/2012"
	revision: "1.0.0"

class G20_SCOREBOARD
inherit EV_DRAWING_AREA

create
	initializeBoard

feature
	--Constructror implementation
	initializeBoard
	do
		default_create
		set_minimum_size (0, 0)
		initializePositions
		initializeColors
		expose_actions.extend(agent on_expose_action)
	end

feature {NONE}

	colors:ARRAY[EV_COLOR]
	positions:ARRAY[INTEGER]
	scoreboard_image:EV_PIXMAP
	once
		create Result
		Result.set_with_named_file("scoreboard.png")
	end

 	-- Initializing the array that will keep the movement inner states, using an offset (15) .
	initializePositions
	do
		create positions.make_filled (0, 0, 6)
		positions.put (0, 0)
		positions.put (15, 1)
		positions.put (15, 2)
		positions.put (15, 3)
		positions.put (15, 4)
		positions.put (15, 5)
		positions.put (15, 6)
	end
	
	-- Initializing an array with all colors needed, for data usability reasons.
	initializeColors
	local
		l_color:EV_COLOR
	do
		create l_color.make_with_rgb (0, 0, 0)
		create colors.make_filled (l_color, 0, 6)
		create l_color.make_with_rgb (0, 0, 0)		-- Black color (for testing)
		colors.put (l_color, 0)
		create l_color.make_with_rgb (1, 0, 0) 		-- Red color
		colors.put (l_color, 1)
		create l_color.make_with_rgb (0, 0.5, 0) 	-- Green color
		colors.put (l_color, 2)
		create l_color.make_with_rgb (0, 0, 1) 		-- Blue color
		colors.put (l_color, 3)
		create l_color.make_with_rgb (0.8, 0.2, 0)	-- Orange coloe
		colors.put (l_color, 4)
		create l_color.make_with_rgb (1, 1, 0) 		--Yellow color
		colors.put (l_color, 5)
		create l_color.make_with_rgb (0.5 ,0 ,1) 	--Magenta color
		colors.put (l_color, 6)
	end

	on_expose_action(steps,color,w,h:INTEGER)
	require
		color >= 0 and  color <= 6
		steps >= 0 and	steps < 18
	local
		i:INTEGER
		pixelMovement:INTEGER
	do
		clear
		draw_pixmap(0,0,scoreboard_image)
		from i := 1 until i = 7
		loop
			set_foreground_color(colors[i])
			if i = color then
				pixelMovement := positions[color] + 9*steps
				if pixelMovement <= (9 * 17 + 15) then
					fill_rectangle (pixelMovement,i*11,5,5)
					positions.put (pixelMovement,color)
				end
			else
				fill_rectangle(positions[i],i*11,5,5)
			end
			i := i + 1
		end
		-- Ensure that the total of movements on each piece
		-- will not exceed the limit of:
		-- pixels/movement*noOfPossibleMovements + Offset (15) .

	end

feature {ANY}

	--"Wrapper" methods.
	move(steps,color:INTEGER)
	do
		on_expose_action(steps,color,0,0)
	end

	moveColor(steps:INTEGER color:G20_COLOR)
	require
		color /= void
	do
		on_expose_action(steps,color.GetColor,0,0)
	end

end
