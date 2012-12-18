note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GUI_BOARD

inherit


	G20_GUI_IMAGES

create

	make

feature {ANY}


	make(action:PROCEDURE [ANY, TUPLE];a_move:PROCEDURE [ANY, TUPLE])
	do
		gui_update:=action
		move:=a_move
	end

	populate(board:G20_MAINBOARD)

	local
		i,j,x,y,inc:INTEGER
		sel_x,sel_y:INTEGER
		tile:G20_COLOR
	do
		img_board_pane.copy (img_board_pane_default)
		from i:=1
		until i>15
		loop
			if i>=9 then
				inc:=((i-15)*20.0).rounded
			elseif i<=8 then
				inc:=((1-i)*20.0).rounded
			end
			from j:=1
			until j>15-((i-8).abs)
			loop

				x:=inc+hex_x+(j-1)*41
				y:=(hex_y+(i-1)*34)

				if (i<=8) then
					sel_x:=i
					sel_y:=j
				else
					sel_x:=i
					sel_y:=j+i-8
				end

				if (board.isvalidcell (sel_x,sel_y) and board.getcolorbycoords (sel_x, sel_y).isempty=false) then
						tile:=board.getcolorbycoords (sel_x, sel_y)
						img_board_pane.draw_pixmap (x,y, tile_images[tile.getcolor])

					elseif (j=select_x and i=select_y) then
						img_board_pane.draw_pixmap (x,y, img_tile_selected)
					elseif i=1 or j=1 or i=15 or j=15-((i-8).abs) then
						img_board_pane.draw_pixmap (x,y, img_tile3)
					elseif i=2 or j=2 or i=14 or j=14-((i-8).abs) then
						img_board_pane.draw_pixmap (x,y, img_tile2)
					else img_board_pane.draw_pixmap (x,y, img_tile1)
				end
				j:=j+1
			end
			i:=i+1
		end
		img_board_pane.flush
	end



	get_tile (a_x, a_y: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			-- A pointer motion event has occurred on the test widget. Output details.
		local
			x,y:REAL_64
			max:INTEGER
			xx,yy,mod_yy:INTEGER
			ox,oy:REAL_64
		do
			y:=((a_y-8)/34)+1
			x:=((a_x-52-((8-y.floor).abs*20))/40.5)+1
			on_tile_x:=x.floor
			on_tile_y:=y.floor


			on_satchel:=0


			xx:=a_x-img_score_pane.width-17



			if a_y>580 and a_y < 694 and a_x>xx then

				yy:=a_y
				ox:=xx/48

				if ox.floor+1=on_air then
					yy:=a_y-30
				end

				if (yy<652)then
				ox:=(xx-21)/48
				end

				if yy<y_bot and yy>y_top then
					if (ox.floor+0.7>0.3) then
						on_satchel:=ox.floor+1
					end
				end

			end



			tile_select
		end

	pick_tile(a_x: INTEGER; a_y: INTEGER; a_button: INTEGER; a_x_tilt: DOUBLE; a_y_tilt: DOUBLE; a_pressure: DOUBLE; a_screen_x: INTEGER; a_screen_y: INTEGER)
	do


		if (a_button=3) then
			if (on_air/=0) then
				if(rotation=0) then rotation:=3
				else rotation:=rotation-1 end
				draw_cursor
			end

			if (on_air /= 0) then
				img_board_back.set_pointer_style (pointer_image)

			else img_board_back.set_pointer_style (default_mouse)end
		end




		if (a_button=1) then


			if (on_air/=0 and a_y<530) then
				if (rotation=0) then
					move.call([report_x,report_y,report_x+1,report_y,t_on_air])
				elseif (rotation=3) then
					move.call([report_x,report_y,report_x+1,report_y+1,t_on_air])
				elseif (rotation=2) then
					move.call([report_x+1,report_y,report_x,report_y,t_on_air])
				else move.call([report_x+1,report_y+1,report_x,report_y,t_on_air])
				end
					if move_result=true then
						on_air:=0

					else	end
				else
			on_air:=on_satchel
			if on_air=0 then
				rotation:=0
			end
			end
			gui_update.call ([])
			if (t_on_air/=void) then
				draw_cursor
			end


			if (on_air /= 0) then
				img_board_back.set_pointer_style (pointer_image)

			else img_board_back.set_pointer_style (default_mouse)
			end
		end
	end


	draw_cursor
	local
		tile:G20_TILE
		i,j,q,x,y,inc,inc_y:INTEGER
		color:G20_COLOR
	do



			create img_pick.make_with_pixel_buffer (img_trans)
		    img_pick.set_minimum_size (61,77)
		    tile:=t_on_air

			if (rotation=0) then
				img_pick.draw_pixmap (0,34, tile_images[tile.getcolor1.getcolor])
				img_pick.draw_pixmap (22,0, tile_images[tile.getcolor2.getcolor])
			elseif (rotation=1) then
				img_pick.draw_pixmap (22,34, tile_images[tile.getcolor1.getcolor])
				img_pick.draw_pixmap (0,0, tile_images[tile.getcolor2.getcolor])
			elseif (rotation=2 )then
				img_pick.draw_pixmap (0,34, tile_images[tile.getcolor2.getcolor])
				img_pick.draw_pixmap (22,0, tile_images[tile.getcolor1.getcolor])
			elseif (rotation=3) then
				img_pick.draw_pixmap (22,34, tile_images[tile.getcolor2.getcolor])
				img_pick.draw_pixmap (0,0, tile_images[tile.getcolor1.getcolor])
			end


--			img_pick.draw_pixmap (0, 0, img_star)
			create pointer_image.make_with_pixmap (img_pick, 0, 0)

			if (rotation=0 or rotation=2) then
				pointer_image.set_x_hotspot (41)
				pointer_image.set_y_hotspot (21)
			else
				pointer_image.set_x_hotspot (19)
				pointer_image.set_y_hotspot (21)
			end


	end


	tile_select
	local tmp:INTEGER
	do
		if on_tile_x/~select_x or on_tile_y/~select_y then
			select_x:=on_tile_x
			select_y:=on_tile_y
			report_x:=on_tile_x
			report_y:=on_tile_y
			if (on_tile_y>8) then
				report_x:=report_x+on_tile_y-8;
			end
			gui_update.call ([])
			tmp:=report_x;
			report_x:=report_y
			report_y:=tmp
	--		if (board io.put_string ("Mouse over on tile "+ report_x.out +","+ report_y.out +"  %N")

		end
	end


	set_selected_tile(tile:G20_SATCHEL)
	do
		if (on_air>0 and on_air<7 )then
			t_on_air:=tile.taketile (on_air)
		end
	end


	set_move_result(r:BOOLEAN)
	do
		move_result:=r
	end


	on_tile_x:INTEGER
	on_tile_y:INTEGER
	select_x:INTEGER
	select_y:INTEGER
	report_x:INTEGER
	report_y:INTEGER
	mod_y:INTEGER=30
	y_top:INTEGER=615
	y_bot:INTEGER=695
	on_satchel:INTEGER
	on_air:INTEGER
	t_on_air:G20_TILE
	default_tile:G20_TILE
	gui_update:PROCEDURE [ANY, TUPLE]
	move:PROCEDURE [ANY, TUPLE]
	move_result:BOOLEAN
	rotation:INTEGER
end
