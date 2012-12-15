note
	description: "Summary description for {G10_GUI_DRAWED_TILE}."
	author: ""
	date: "$Date 9/12$"
	revision: "$this is the carcassone current players tile that is displayed in the flag right in the screen of the game.$"

class
	G10_GUI_DRAWED_TILE
inherit
	G10_GUI_TILE
	export
		{ANY}
	end

create
	make_drawed_tile , make_ev_fixed , make_drawed_tile_with_id

-- attributes.
feature{NONE}
	follower : EV_FIXED
	clickable_point_1 , clickable_point_2 , clickable_point_3  : EV_FIXED
	clickable_point_4 , clickable_point_5 , clickable_point_6  : EV_FIXED
	clickable_point_7 , clickable_point_8 , clickable_point_9  : EV_FIXED

-- constructors.
feature{ANY}
	make_drawed_tile(game: G10_GUI_GAME_MAIN) -- creates a new reference to an drawed tile the one that appears on the current players action panel
	do
		make_ev_fixed
		set_img_src(game_drawed_tiles_img_path)
		set_minimum_width (drawed_tile_width)
		set_minimum_height (drawed_tile_height)
		set_img_src_id_and_degrees("15" , "90")
		draw_background_pixmap()

		make_clickable_points
		--make_follower

		--Edw mallon 8a 8eloume na valoume tous agents sxetikous me tous followers
	end

	make_drawed_tile_with_id(game: G10_GUI_GAME_MAIN tile_id : INTEGER) -- creates a new reference to an drawed tile the one that appears on the current players action panel
	local
		tile_id_str : STRING
	do
		make_ev_fixed
		set_img_src(game_drawed_tiles_img_path)
		set_minimum_width (drawed_tile_width)
		set_minimum_height (drawed_tile_height)

		tile_id_str := tile_id.to_hex_string
		io.put_string ("mesa stin make_drawed_tile_with_id / tile_id:" + tile_id_str)
		io.put_new_line

		set_img_src_id_and_degrees(tile_id_str , "0")
		draw_background_pixmap()

		make_clickable_points
		--make_follower

		--Edw mallon 8a 8eloume na valoume tous agents sxetikous me tous followers
	end

-- muattor methods.
feature{ANY}
	make_clickable_points -- routine creates and initialized the clickable point 1 with its pixmap and the test_listener agent.
	local
		y , x : REAL_64
	do
		x := follower_width / 2
		y := follower_height / 2
		create clickable_point_1.default_create
		create clickable_point_2.default_create
		create clickable_point_3.default_create
		create clickable_point_4.default_create
		create clickable_point_5.default_create
		create clickable_point_6.default_create
		create clickable_point_7.default_create
		create clickable_point_8.default_create
		create clickable_point_9.default_create

		-- initialize clickable point 1
		clickable_point_1.set_minimum_height (clickable_point_height)
		clickable_point_1.set_minimum_width (clickable_point_width)
		clickable_point_1.extend(make_clickable_point_pixmap(1))
		extend_with_position_and_size (clickable_point_1 , x.ceiling , y.ceiling, clickable_point_width, clickable_point_height)
		--initialize clickable point 2
		clickable_point_2.set_minimum_height (clickable_point_height)
		clickable_point_2.set_minimum_width (clickable_point_width)
		clickable_point_2.extend(make_clickable_point_pixmap(2))
		extend_with_position_and_size (clickable_point_2 , x.ceiling + 47, y.ceiling, clickable_point_width, clickable_point_height)
		--initialize clickable point 3
		clickable_point_3.set_minimum_height (clickable_point_height)
		clickable_point_3.set_minimum_width (clickable_point_width)
		clickable_point_3.extend(make_clickable_point_pixmap(3))
		extend_with_position_and_size (clickable_point_3 , (x.ceiling*2) + 60, y.ceiling, clickable_point_width, clickable_point_height)
		--initialize clickable point 4
		clickable_point_4.set_minimum_height (clickable_point_height)
		clickable_point_4.set_minimum_width (clickable_point_width)
		clickable_point_4.extend(make_clickable_point_pixmap(4))
		extend_with_position_and_size (clickable_point_4 , x.ceiling , y.ceiling + 47, clickable_point_width, clickable_point_height)
		--initialize clickable point 5
		clickable_point_5.set_minimum_height (clickable_point_height)
		clickable_point_5.set_minimum_width (clickable_point_width)
		clickable_point_5.extend(make_clickable_point_pixmap(5))
		extend_with_position_and_size (clickable_point_5 , x.ceiling + 47 , y.ceiling + 47, clickable_point_width, clickable_point_height)
		--initialize clickable point 6
		clickable_point_6.set_minimum_height (clickable_point_height)
		clickable_point_6.set_minimum_width (clickable_point_width)
		clickable_point_6.extend(make_clickable_point_pixmap(6))
		extend_with_position_and_size (clickable_point_6 , (x.ceiling*2) + 60, y.ceiling + 47, clickable_point_width, clickable_point_height)
		--initialize clickable point 7
		clickable_point_7.set_minimum_height (clickable_point_height)
		clickable_point_7.set_minimum_width (clickable_point_width)
		clickable_point_7.extend(make_clickable_point_pixmap(7))
		extend_with_position_and_size (clickable_point_7 , x.ceiling , (y.ceiling*2) +60 , clickable_point_width, clickable_point_height)
		--initialize clickable point 8
		clickable_point_8.set_minimum_height (clickable_point_height)
		clickable_point_8.set_minimum_width (clickable_point_width)
		clickable_point_8.extend(make_clickable_point_pixmap(8))
		extend_with_position_and_size (clickable_point_8 , x.ceiling + 47 , (y.ceiling*2) +60, clickable_point_width, clickable_point_height)
		--initialize clickable point 9
		clickable_point_9.set_minimum_height (clickable_point_height)
		clickable_point_9.set_minimum_width (clickable_point_width)
		clickable_point_9.extend(make_clickable_point_pixmap(9))
		extend_with_position_and_size (clickable_point_9 , (x.ceiling*2) +60 , (y.ceiling*2) +60, clickable_point_width, clickable_point_height)


	ensure
		clickable_point_not_void : clickable_point_1 /= void
	end

	make_follower(point_num : INTEGER) -- routine creates and initialized the follower 1 with its pixmap and the test_listener agent.
	require
		drawed_tile_is_empty : current.is_empty = true
	local
		x , y , padding: INTEGER
	do
		create follower.default_create
		follower.set_minimum_height (follower_height)
		follower.set_minimum_width (follower_width)
		follower.extend(make_follower_pixmap)
		padding := 10

		if(point_num = 1) then
			x := 0
			y := 0
		elseif(point_num = 2) then
			x := follower_width - padding
			y := 0
		elseif(point_num = 3) then
			x := drawed_tile_width - follower_width
			y := 0
		elseif(point_num = 4) then
			x := 0
			y := follower_height - padding
		elseif(point_num = 5) then
			x := follower_width - padding
			y := follower_height - padding
		elseif(point_num = 6) then
			x := drawed_tile_width - follower_width
			y := follower_height - padding
		elseif(point_num = 7) then
			x := 0
			y := drawed_tile_height - follower_height
		elseif(point_num = 8) then
			x := follower_width - padding
			y := drawed_tile_height - follower_height
		elseif(point_num = 9) then
			x := drawed_tile_width - follower_width
			y := drawed_tile_height - follower_height
		end


		extend_with_position_and_size (follower , x , y, follower_width, follower_height)
	ensure
		follower_1_not_void : follower /= void
		--follower_1_valid_pixmap : follower_1.has (pix_red_follower) = true
	end

	make_follower_pixmap : EV_PIXMAP -- routine returns a follower pixmap.
	require
		source_not_void : img_red_follower /= void
		pixmap_not_void : pix_red_follower /= void
	local
		new_pixmap : EV_PIXMAP
	do
		new_pixmap := pix_red_follower
		new_pixmap.set_minimum_height (follower_height)
		new_pixmap.set_minimum_width (follower_width)
		new_pixmap.pointer_button_release_actions.extend (agent put_clickable_point(void , ?,?,?,?,?,?,?,?))

		result := new_pixmap
	ensure
		follower_pixmap_not_void : result /= void
	end

	test(a : INTEGER) -- test procedure
	do
	end

	make_clickable_point_pixmap(point_num : INTEGER) : EV_PIXMAP -- routine returns a clickable point pixmap.
	require
		source_not_void : img_clickable_point /= void
		pixmap_not_void : pix_clickable_point /= void
	local
		new_pixmap : EV_PIXMAP
		num : INTEGER_32
		array : ARRAY[INTEGER]
	do
		create array.make_filled (point_num, 1, 1)
		new_pixmap := pix_clickable_point
		new_pixmap.set_minimum_height (clickable_point_height)
		new_pixmap.set_minimum_width (clickable_point_width)
		new_pixmap.pointer_button_release_actions.extend (agent put_follower(array , ?,?,?,?,?,?,?,?))
		--(void , ?,?,?,?,?,?,?,?)
		--new_pixmap.pointer_button_release_actions.extend (v: [like item] [detachable] PROCEDURE [[detachable] ANY, [detachable] TUPLE [INTEGER_32, INTEGER_32, INTEGER_32, REAL_64, REAL_64, REAL_64, INTEGER_32, INTEGER_32]])
		result := new_pixmap
	ensure
		clickable_point_pixmap_not_void : result /= void
	end

	rotate_tile -- routine rotates the image of the tile
	require
		void_parameter : img_src /= void
		tile_is_drawed_tile : drawed_tile_width = current.minimum_width and drawed_tile_height = current.minimum_height
	do
		if(is_tile_num_degrees(0)) then
			set_to_num_degree_pixamp(90)
		elseif(is_tile_num_degrees(90)) then
			set_to_num_degree_pixamp(180)
		elseif(is_tile_num_degrees(180)) then
			set_to_num_degree_pixamp(270)
		elseif(is_tile_num_degrees(270)) then
			set_to_num_degree_pixamp(0)
		else
			io.put_string ("tile rotate den ekane match pouthena!")
			io.put_new_line
		end
	ensure
		image_rotated : img_src /= old img_src
		void_result : img_src /= void
	end

	set_to_num_degree_pixamp(num_degrees : INTEGER) -- routine sets the pixmap off this tile to the num_degrees degree pixmap of this tile.
	require
		image_source_not_void : get_img_src /= void
		valid_degrees : num_degrees = 0 or num_degrees = 90 or num_degrees = 180 or num_degrees = 270
	local
		new_pixmap : EV_PIXMAP
		new_src: KL_PATHNAME
	do

		if (is_tile_num_degrees(0)) then
			get_img_src.item (get_img_src.count).replace_substring_all ("_0.png", "_" + num_degrees.out + ".png")
		elseif(is_tile_num_degrees(90)) then
			get_img_src.item (get_img_src.count).replace_substring_all ("_90.png", "_" + num_degrees.out + ".png")
		elseif(is_tile_num_degrees(180)) then
			get_img_src.item (get_img_src.count).replace_substring_all ("_180.png", "_" + num_degrees.out + ".png")
		elseif(is_tile_num_degrees(270)) then
			get_img_src.item (get_img_src.count).replace_substring_all ("_270.png", "_" + num_degrees.out + ".png")
		else
			print("problem in set to num degree pixmap%N")
		end

		create new_src.make()
		new_src.copy (game_drawed_tiles_img_path)
		new_src.append_name(get_img_src.item(get_img_src.count))
		set_img_src(new_src)

		create new_pixmap
		new_pixmap.set_with_named_file (file_system.pathname_to_string(get_img_src) )
		set_background_pixmap(new_pixmap)

	ensure
		img_src_changed: get_img_src /= old get_img_src
	end

	is_tile_num_degrees(num_degrees : INTEGER) : BOOLEAN -- routine returns true if the tile's source matches the num_degrees degrees source.
	require
		source_not_void : get_img_src /= void
		valid_degrees : num_degrees = 0 or num_degrees = 90 or num_degrees = 180 or num_degrees = 270
	do
		if (get_img_src.item (get_img_src.count).ends_with("_"+num_degrees.out+".png")) then
			Result := true;
		else
			Result := false;
		end
	ensure
		source_not_mutated : get_img_src = old get_img_src
	end

--listeners
	test_listener(obj : ANY a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32) -- routine prints a test message that entered in routine
	do
		io.put_string ("mpika stin test listener yeah!!!");
		io.put_new_line
	end

	put_follower(obj : ANY a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32) -- routine destroyes the clickable point and draws a follower in its place
	local
		i  , point_num: INTEGER
	do
		if attached {ARRAY[INTEGER]} obj as i_num
		then
			 point_num := i_num.item (1)
			 io.put_integer (point_num)
			 io.put_new_line
		else
			io.put_string ("megalo peos")
			io.put_new_line
		end

		from i:= 1  until is_empty = true
		loop
			i_th (i).destroy -- destroy the clickable point widget
		end
		clickable_point_1.destroy
		clickable_point_2.destroy
		clickable_point_3.destroy
		clickable_point_4.destroy
		clickable_point_5.destroy
		clickable_point_6.destroy
		clickable_point_7.destroy
		clickable_point_8.destroy
		clickable_point_9.destroy

		make_follower(point_num)
	ensure
		follower_drawed : current.has (follower) = true
	end

	put_clickable_point(obj : ANY a_a, a_b, a_c: INTEGER_32; a_d, a_e, a_f: REAL_64; a_g, a_h: INTEGER_32) -- routine destroyes the follower and draws a clickable point in its place
	do
		io.put_string ("mpika stin put clickable point");
		io.put_new_line
		i_th (1).destroy -- destroy the clickable point widget
		follower.destroy
		if(current.is_empty = true) then
			io.put_string ("mpika stin if! einai empty!");
			io.put_new_line
		end

		make_clickable_points
	ensure
		current.has (clickable_point_1) = true and current.has (follower) = false
	end
end
