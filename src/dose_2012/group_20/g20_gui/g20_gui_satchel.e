note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GUI_SATCHEL

inherit


	G20_GUI_IMAGES


feature {ANY}

	populate(satchels:G20_SATCHEL)

	local
		i,j,q,x,y,inc,inc_y:INTEGER
		tile:G20_TILE
		color:G20_COLOR
	do
		img_satchel_pane.copy (img_satchel_pane_default)



		from q:=1
		until q>6
		loop
			tile:=satchels.taketile (q)
			from i:=1
			until i>2
			loop
				if i=1 then
					color:=tile.getcolor1
					inc:=0

				else
					color:=tile.getcolor2
					inc:=21
				end

				x:=x_pos+(q-1)*48+inc
				y:=bot-(i-1)*34

				if (on_air/=q) then
					if (color.isempty) then
						img_satchel_pane.draw_pixmap (x,y, img_tile_ground)
					else
						img_satchel_pane.draw_pixmap (x,y, tile_images[color.getcolor])
					end
				end



				i:=i+1
			end
		q:=q+1
	end
	img_satchel_pane.flush
end


	set_satchel(a:INTEGER;b:INTEGER)
	do
		on_satchel:=a
		on_air:=b
	end

	bot:INTEGER = 115
	x_pos:INTEGER = 16
	on_satchel:INTEGER
	on_air:INTEGER
end
