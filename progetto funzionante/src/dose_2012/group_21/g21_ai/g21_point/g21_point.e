note
	description: "Summary description for {G21_POINT}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_POINT -- This class provides an object that contains two coordinates: x and y

create
	make

feature{G21_MOVE, G21_AI, G21_FAKE_BOARD, G21_POINT} --Attributes

	x: INTEGER -- the first value of the coordinate
	y: INTEGER -- the second value of the coordinate

feature{NONE} --Creation

	make (x_value: INTEGER; y_value: INTEGER) -- it creates and object POINT by setting in variable "x" the parameter "x_value" value and in variable "y" the parameter "y_value"

		require

			x_value_valid: x_value>=1 and then x_value<=3
			y_value_valid: y_value>=1 and then y_value<=3

		do

			set_x(x_value)
			set_y(y_value)

		ensure

			x_value_set: x=x_value
			y_value_set: y=y_value

		end

feature{G21_AI, G21_MOVE, G21_FAKE_BOARD, G21_POINT} --Procedures

	set_x (new_x: INTEGER) -- it sets the value of variable "x" to the parameter "new_x" value

		require

			new_x_valid: new_x>=1 and then new_x<=3

		do

			x:=new_x

		ensure

			x_set: x=new_x

		end

	set_y (new_y: INTEGER) -- it sets the value of variable "y" to the parameter "new_y" value

		require

			new_y_valid: new_y>=1 and then new_y<=3

		do

			y:=new_y


		ensure

			y_set: y=new_y

		end

	equals_position (position_to_check: G21_POINT): BOOLEAN -- It checks if the parameter is equals to my position

		require

			position_valid: position_to_check/=void and then position_to_check.x>=1 and then position_to_check.x<=3 and then position_to_check.y>=1 and then position_to_check.y<=3

		do

			result:= position_to_check.x=x and then position_to_check.y=y

		ensure

			position_not_changed: position_to_check/=void and then position_to_check.x=old position_to_check.x and then position_to_check.y=old position_to_check.y
			my_values_not_changed: x=old x and then y=old y

		end

	around_the_point (position_to_check: G21_POINT): BOOLEAN -- It checks if the parameter is in a position around mine

		require

			position_valid: position_to_check/=void and then position_to_check.x>=1 and then position_to_check.x<=3 and then position_to_check.y>=1 and then position_to_check.y<=3

		do

			result:=((position_to_check.x-1=x and then position_to_check.y=y) or else (position_to_check.x+1=x and then position_to_check.y=y) or else (position_to_check.x=x and then position_to_check.y-1=y) or else  (position_to_check.x=x and then position_to_check.y+1=y))

		ensure

			position_not_changed: position_to_check.equals_position(old position_to_check)
			my_values_not_changed: x=old x and then y=old y

		end

invariant

	point_valid: x>=1 and then x<=3 and then y>=1 and then y<=3


end
