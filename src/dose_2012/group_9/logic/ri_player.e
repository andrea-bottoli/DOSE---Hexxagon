note
	description: "Summary description for {RI_PLAYER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_PLAYER
	inherit

  create
  	make
   feature
   	id: INTEGER
    name: STRING
    color: STRING
    turn_token: BOOLEAN

--     make(m_id: INTEGER; m_name: STRING; m_color: STRING; m_turn_token: BOOLEAN)
--       do
 --      id:=m_id
--       name:=m_name
--       color:=m_color
--       turn_token:=m_turn_token
--       end

-- ITS NOT MY F****ING FAULT THAT YOU PUSH NON_COMPILING CODE. BE GRATEFUL I DIDNT ERASE IT RIGHT AWAY


     make
       do
       end
     setName(m_name: STRING)
     do
     	name:=m_name
     end




      setColor(m_color: STRING)
     do
     	color:=m_color
     end

     setId(m_id: INTEGER)
     do
     	id:=m_id
     end

   setTurnToken(m_turn_token: BOOLEAN)
     do
     	turn_token:=m_turn_token
     end


end
