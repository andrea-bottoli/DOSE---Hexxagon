note
	description: "Summary description for {G21_POINT}."
	author: "Emanuele Del Sozzo"
	date: "17/11/2012"
	revision: "1.6"

class
	G21_POINT -- This class provides an object that contains two coordinates: x and y

create
	make

feature{G21_MOVE, G21_AI, G21_FAKE_BOARD} --Attributes

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

feature{G21_AI, G21_MOVE, G21_FAKE_BOARD} --Procedures

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

invariant

	point_valid: x>=1 and then x<=3 and then y>=1 and then y<=3


end
