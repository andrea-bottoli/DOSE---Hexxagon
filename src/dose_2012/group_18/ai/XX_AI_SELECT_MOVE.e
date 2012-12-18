note
	description: "Summary description for conection btween AI & LOGIC {XX_AI_SELECT_MOVE}"
	author: "Huda Touny - Nada Feteha"
	date: "2-11-2012"
	revision: "$Revision$"

class
	XX_AI_SELECT_MOVE

create calculate_best_move

feature{NONE}
rules:XX_RULES

feature{XX_AI_PLAYER}
	call_intial_game(the_board:XX_BOARD):ARRAY[INTEGER]
		local
			from_to:ARRAY[INTEGER]
		do
			create from_to.make (0, 1)
			print("%N in call_intial_game")
				from_to:=intial_game(the_board )
				Result:=from_to
		end

feature {NONE}
	AI_Calculation_Move: ARRAY[INTEGER]
--*******************NEW  CODE***********************************
	--alpha nfes mwdo3 beta t2ked 2naha azabtt
	Frist_generation:LINKED_LIST[XX_AI_STATE]

	intial_game(the_board:XX_BOARD ):ARRAY[INTEGER]
		local
			final_move:INTEGER
			j:INTEGER
			from_to:ARRAY[INTEGER]
		do
			create from_to.make (0, 1)
			final_move:=Alpha_Beta_Search(the_board , 4 , -2000 , 2000 , 0)

			from j:=0 until j=frist_generation.count
			loop
				if final_move=frist_generation.at (j).value then
					from_to:=diff_board(frist_generation.at (j).board , the_board)
					Result:= from_to
				end--if
				j:=j+1
			end--loop
		end

	Alpha_Beta_Search(the_board:XX_BOARD ; depth:INTEGER ; alpha:INTEGER ; beta:INTEGER ; plyer:INTEGER):INTEGER--ARRAY[INTEGER] --return array integer which is from and to
		local
			j:INTEGER
			children:LINKED_LIST[XX_BOARD]
			new_alpha:INTEGER
			new_beta:INTEGER
		do
			create frist_generation.make
			new_alpha:=alpha
			new_beta:= beta
			children:=get_children (the_board,1 )

			from j:=0 until j= children.count
			loop
				frist_generation.at (j).set_board (children.at (j))
				j:=j+1
			end--end loop

			if depth=0 or Terminal_Test(the_board) then
				Result:= Utility_value(the_board , plyer)
			end--if

			if who_play(depth)=1 then
				from j:=0 until j= children.count
				loop
					new_alpha:= Max(new_alpha , Alpha_Beta_Search(children.at (j), depth-1, new_alpha , beta,who_play (depth-1) ))
				--	if new_beta<=new_alpha then
				--	end--if
					j:=j+1
				end--loop
				if depth=4 then
					frist_generation.at(j).set_value (new_alpha)
				end
				Result:=new_alpha

			else
				from j:=0 until j= children.count
				loop
					new_beta:=MIN(new_beta ,Alpha_Beta_Search(children.at (j), depth-1, new_alpha , beta,who_play (depth-1) ) )
					j:=j+1
				end--loop
				Result:=new_beta
			end--if
		end

	who_play(num:INTEGER):INTEGER--start k from 0 refer to player 1
		local
			cal_num:INTEGER
		do
			cal_num:=num \\2
			if cal_num = 0 then
				Result:=1
			else
				Result:=2
			end
		end--who play

	MIN(a:INTEGER ; b:INTEGER):INTEGER
		do
			if a < b then
				Result:= a
			else
				Result:= b
			end
		end --Min

	Max(a:INTEGER ; b:INTEGER):INTEGER
		do
			if a > b then
				Result:= a
			else
				Result:= b
			end--if
		end--max

	IS_copy_or_Jump(id:INTEGER ; Player_cells:XX_AI_CELL_CALCULATION):INTEGER
	local
		j:INTEGER
		temp:INTEGER
	do
		temp:=0
		from j:=0 until j= player_cells.childern.upper
		loop
			temp:=player_cells.childern.at (j).cell_id
			if  temp=1000 then
				if id <= j then
					Result:=1 --copy
				else
					Result:=2 --jump
				end
			end
		end
	end

	cout_filled(arr:ARRAY[XX_AI_CELL_CALCULATION]):INTEGER
		local
			j:INTEGER
			temp:INTEGER
		do
			temp:=1
			from j:=0 until temp =-8
			loop
				print("%N jjjjj")
								print(j)
								print("%N")
							--	print(arr.at (j).cell_id)
								print("%N avvvvv")
							--	print(arr.at (j).available)
				if  arr.at (j)= void  then
					temp:=-8
					Result:=j
				end
				j:=j+1
			end
		end
	--this functiorn will return all children for every board
	get_children(board:XX_BOARD ; current_player:INTEGER):LINKED_LIST[XX_BOARD]
		local
			z:INTEGER
			j:INTEGER
			children:LINKED_LIST[XX_BOARD]
			Player_cells:ARRAY[XX_AI_CELL_CALCULATION]
			move:XX_POSSIBLE_MOVES
			Is_copy:INTEGER
		do
			create move.make_possible_moves
			create children.make
			create Player_cells.make (0, 57)
			Player_cells:=get_cell_Temp(board,current_player)--3rftmn feen current player
			from j:=0 until j= Player_cells.upper  loop
				get_childern_each_cell(board ,Player_cells.at (j))
				from z:=0 until z= cout_filled(Player_cells.at (j).childern)--Player_cells.at (j).childern.upper
				loop
					print("%N to")
					print(Player_cells.at (j).cell_id)
					print("%N")
					print(Player_cells.at (j).childern.at (z).cell_id)
					move.set_move (Player_cells.at (j).cell_id, Player_cells.at (j).childern.at (z).cell_id, 2)
					children.extend( rules.make_copy_move (board, current_player, move))

					z:=z+1
				end--secand loop
				j:=j+1
			end--first loop
			Result:= children
		end--get_children

	--this function call count cell for player2 or for AI
	get_cell_Temp(board:XX_BOARD ; player:INTEGER):ARRAY[XX_AI_CELL_CALCULATION]
		local
			Temp_Arr:ARRAY[XX_AI_CELL_CALCULATION]
		do
			create Temp_Arr.make (0, 57)
			if(player = 1)then
				Temp_Arr:=get_cell_AI(board)
			else
				Temp_Arr:=get_cell_Player2(board)
			end
			Result:=Temp_Arr
		end--Count_cell_Temp

	get_cell_AI(the_board:XX_BOARD):ARRAY[XX_AI_CELL_CALCULATION]
		local
			z:INTEGER
			j:INTEGER
			cell_temp:XX_AI_CELL_CALCULATION
			AI_Cells:ARRAY[XX_AI_CELL_CALCULATION]
		do
			create AI_Cells.make (0, 57)
			z:=0
			from j:=0	until j=57
			loop

				if the_board.get_cell (j).get_cell_player1 = true	then
					create cell_temp.make(the_board.get_cell (j).get_cell_id ,1)
					print("%N AI get cell ")
					print(cell_temp.cell_id)
					AI_Cells.item (z):=cell_temp
					z:=z+1
				end--if
				j:=j+1
			end--loop
			Result:=AI_Cells
		end--Count_cell_AI

	get_cell_Player2(the_board:XX_BOARD):ARRAY[XX_AI_CELL_CALCULATION]
		local
			z:INTEGER
			j:INTEGER
			cell_temp:XX_AI_CELL_CALCULATION
			Player2_Cells:ARRAY[XX_AI_CELL_CALCULATION]
		do
			create Player2_Cells.make (0, 57)
			z:=0
			from j:=0 until j=57 loop
				if the_board.get_cell (j).get_cell_player2 = true	then
					create cell_temp.make(the_board.get_cell (j).get_cell_id ,2)
					Player2_Cells.item (z):=cell_temp
					z:=z+1
				end--if
				j:=j+1
			end--loop
			Result:=Player2_Cells
		end--get_cell_Player2

	--btmla el children bto3 cell a3tqd ana msh 3yza keda
	get_childern_each_cell(board:XX_BOARD; cell_fill:XX_AI_CELL_CALCULATION)
		local
			copy_temp:TUPLE
			jump_temp:TUPLE
			size_copy:INTEGER
			temp_num:INTEGER
			j:INTEGER
			k:INTEGER
			cell_temp:XX_AI_CELL_CALCULATION
		do
			create copy_temp.make
			create jump_temp.make
			copy_temp:= board.get_cell_clonep (cell_fill.cell_id)
			jump_temp:= board.get_cell_jump (cell_fill.cell_id)

			from j:=1 until j > copy_temp.upper
			loop
			--	print("%N j")
			--	print(j)
			--	print("%N Upper")
			--	print(copy_temp.upper)
			--	print(copy_temp.at (1))
			--	print(copy_temp.integer_item (j))
			--	print("%N j")
			--	print(j)
				temp_num:=copy_temp.integer_item(j)
				--if for chck if emty
				if  board.get_cell (temp_num).get_cell_player1 = false and board.get_cell (temp_num).get_cell_player2 = false then
					create cell_temp.make( board.get_cell (temp_num).get_cell_id ,1)
					k:=j-1
					cell_fill.childern.item (k):=cell_temp
				end--if
				j:=j+1
			end--loop

				create cell_temp.make(1000,-1)
				k:=j-1
				cell_fill.childern.item (k):=cell_temp
				size_copy:=k

			from j:=1 until j > jump_temp.upper
			loop
				print("%N j")
				print(j)
				print("%N nnn")
				print(jump_temp.at (j))
				print("%N size")
				print(size_copy)
				print("%N upper child")
				print(cell_fill.childern.upper)
				temp_num:=jump_temp.integer_item (j)
				if  board.get_cell (temp_num).get_cell_player1 = false and board.get_cell(temp_num).get_cell_player2 = false then
					create cell_temp.make( board.get_cell (temp_num).get_cell_id ,1)
					size_copy:=size_copy+1
					cell_fill.childern.item (size_copy):=cell_temp
				end--if
				j:=j+1
			end--loop
		end--endfunction

	Utility_value(the_board:XX_BOARD ; player:INTEGER):INTEGER
		do
			if win(the_board)= 2  then
				Result:= -1000
			else
				if win(the_board)= 1  then
					Result:= 1000
				else
					if Terminal_Test(the_board) and player=1 then
						Result:= calculate_block(the_board,2)
					else
						if  Terminal_Test(the_board) and player=2 then
							Result:=calculate_block(the_board, 1)
						else
							Result := Count_Cells(the_board , 1) - Count_Cells(the_board , 2)
						end
					end
				end
			end
		end--Utility_value

	calculate_block(the_board:XX_BOARD ; player:INTEGER):INTEGER
		local
			count:INTEGER
			p1:INTEGER
			p2:INTEGER
		do
			count:= Count_Cells(the_board , 0)
			p1:=Count_Cells(the_board, 1)
			p2:=Count_Cells(the_board,2)
			if player=1 then
				p1:= p1+count
			else
				p2:= p2+count
			end
			Result:=(p1-p2)
		end--calculate_block

	win(the_board:XX_BOARD):INTEGER-- 1 if player1 win , 2 if player2 win gwa mfrod check if block
		do

		end

	Count_Cells(the_board:XX_BOARD ; player:INTEGER):INTEGER
		local
			count:INTEGER
			j:INTEGER
		do
			count:=0
			from j:=0 until j=57
			loop
				if player =1 then
					if the_board.get_cell (j).get_cell_player1= true then
						count:=count+1
					end
				else
					if player=2 then
						if the_board.get_cell (j).get_cell_player2= true then
							count:=count+1
						end
					else
						if the_board.get_cell (j).get_cell_player2= false and the_board.get_cell (j).get_cell_player1= false  then
							count:=count+1
						end
					end
				end
				j:=j+1
			end--loop
			Result:=count
		end--Count_Cells
--hena naqs function 0000000000000000099999999999999999988888888888888888888888
	Terminal_Test(the_board:XX_BOARD):BOOLEAN
		do
			if  false then--call function from logic chek if this board blocked
				Result:=true
			else
				Result:=false
			end
		end--Terminal_Test

	Is_emty(cell:XX_CELL):BOOLEAN
		do
			if cell.get_cell_player1 = false and cell.get_cell_player2 = false then
				Result:=true
			else
				Result:=false
			end
		end

	diff_board(final_board:XX_BOARD ; org_board:XX_BOARD):ARRAY[INTEGER]
		local
			which_from:ARRAY[INTEGER]
			j:INTEGER
		do
			create which_from.make_filled (-1, 0, 1)--make (0, 1)
			from j:=0 until j=57
			loop
				if Is_emty(org_board.get_cell (j))=true and final_board.get_cell (j).get_cell_player1=true  then
					which_from.item (0):=j
				else
					if org_board.get_cell (j).get_cell_player1=true and final_board.get_cell (j).get_cell_player1=false  then
						which_from.at (1):=j
					end
				end
			end
		end
--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
feature {ANY} --Implementation

	calculate_best_move()
		do
			create rules.make_rules
			-- io.put_string ("Test")
		end

	get_Best_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(1)
			ensure Result >=0 and Result< 58
		end

	get_Previos_Move():INTEGER
		do
			Result:= AI_Calculation_Move.at(0)
			ensure Result>=0 and Result< 58
		end

end-- class XX_AI_SELECT_MOVE
