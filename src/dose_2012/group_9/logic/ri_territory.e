note
	description: "Summary description for {RI_TERRITORY}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	RI_TERRITORY
 create
 	make
 feature
   id: INTEGER
   owner: RI_PLAYER
   army_count: INTEGER
   artillery_count: INTEGER

-- 	make (m_id: INTEGER; m_owner: RI_PLAYER m_army_count: INTEGER; m_artillery_count: INTEGER)
 --	 do
 --	   id:=m_id
 --	   owner:=m_owner
 --	   army_count:=m_army_count
-- 	   artillery_count:=m_artillery_count
-- 	 end
--
-- 	setId(m_id: INTEGER)
-- 	do
-- 		id=m_id
-- 	end

-- ITS NOT MY F****ING FAULT THAT YOU PUSH NON_COMPILING CODE. BE GRATEFUL I DIDNT ERASE IT RIGHT AWAY


 	make
 	 do
 	 end

 	setId(m_id: INTEGER)
 	do
 		id:=m_id
 	end



 	setOwner(m_owner: RI_PLAYER)
 	do
 		owner:=m_owner
 	end

 	setArmyCount(m_army_count: INTEGER)
 	do
 		army_count:=m_army_count
 	end

 	setArtilleryCount(m_artillery_count :INTEGER)
 	do
 		artillery_count:=m_artillery_count
 	end


end

