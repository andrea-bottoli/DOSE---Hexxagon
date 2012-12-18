note
	description: "Summary description for {G20_MAIN_WINDOW}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	G20_GUI_SCORE

inherit


	G20_GUI_IMAGES


feature {ANY}

	populate(scores:G20_SCOREBOARD)

	local
		i,j,q,x,y,inc,s:INTEGER
	do

		img_score_pane.copy (img_score_pane_default)
		from j:=1
		until j>4
		loop
			from q:=1
			until q>6
			loop
				s:=scores.getscore(j,q)
				from i:=1
				until i>s
				loop
					if i<=15 then
						inc:=0;
					else inc:=5;
					end
					x:=12+(j-1)*100+(q-1)*8
					y:=bot-inc-(i-1)*6
			--		io.put_string (i.out+"%N")
					img_score_pane.draw_pixmap (x,y, dots[q])
					i:=i+1
				end
			q:=q+1
			end
		j:=j+1
		end
		img_score_pane.flush
	end


	bot:INTEGER = 158


	tmp_color :G20_COLOR


	x_pos:ARRAY[INTEGER]
	dots:ARRAY[EV_PIXMAP]
	do
		create Result.make_empty
		Result.grow (6)
		Result[1]:=img_dot1
		Result[2]:=img_dot2
		Result[3]:=img_dot3
		Result[4]:=img_dot4
		Result[5]:=img_dot5
		Result[6]:=img_dot6
	end
end
