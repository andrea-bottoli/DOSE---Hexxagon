note
	description: "Given a BBS model, this class operates on it according to the xml command given upon creation"
	author: "Milano4"
	date: "09/11/2012"
	revision: "0.5"

class
	GR11_MSG_TO_LOGIC

create
	make

feature --components
	action: PROCEDURE [ANY, TUPLE [GR11_USER_ID, GR11_MODEL]]
	node: GR11_XML_NODE

feature --creation
	make(xml: GR11_MSG)
	do
		--create node.make(xml.message)

		if node.tagname.is_equal("movcard") then
			--TODO check if attribs are ok
			action := agent reveal_card(?, ?, node.attributes["fm"].to_integer, node.attributes["fr"].to_integer, node.attributes["ff"].to_integer, node.attributes["cm"].to_integer, node.attributes["cf"].to_integer)

		elseif node.tagname.is_equal("move") then
			--TODO check if children are ok
			action := agent move (?, ?, create {GR11_COORDINATES}.make(node.attributes["sx"].to_integer,node.attributes["sy"].to_integer), create {GR11_COORDINATES}.make(node.attributes["dx"].to_integer, node.attributes["dy"].to_integer) )

		elseif node.tagname.is_equal("fire") then
			--TODO check attribs
			if node.attributes.count = 0 then
				action := agent fire(?, ?)
			else
				action := agent fire_at(?, ?, create {GR11_COORDINATES}.make(node.attributes["sx"].to_integer,node.attributes["sy"].to_integer), create {GR11_COORDINATES}.make(node.attributes["dx"].to_integer, node.attributes["dy"].to_integer) )
			end

		elseif node.tagname.is_equal("rotate") then
			--TODO check attribs
			action := agent rotate (?, ?, create {GR11_COORDINATES}.make(node.attributes["x"].to_integer,node.attributes["y"].to_integer), create {GR11_DIRECTION}.make(node.attributes["direction"].to_integer) )

		elseif node.tagname.is_equal("specialcard") then
			--TODO check attribs
			--TODO SPECIALCARD

		end
	end

feature --actions to perform on setupping model


feature --actions to perform on in-game model
	reveal_card(player: GR11_USER_ID; model: GR11_MODEL; fm: INTEGER; fr: INTEGER; ff: INTEGER; cm: INTEGER; cf: INTEGER )
	do
		model.reveal_card(player,fm,fr,ff,cm,cf)
	end

	move(player: GR11_USER_ID; model: GR11_MODEL; src: GR11_COORDINATES; dst: GR11_COORDINATES)
	do
		model.move(player, src, dst)
	end

	fire(player: GR11_USER_ID; model: GR11_MODEL)
	do
		model.fire(player)
	end

	fire_at(player: GR11_USER_ID; model: GR11_MODEL; src: GR11_COORDINATES; dst: GR11_COORDINATES)
	do
		model.move(player, src, dst)
	end

	rotate(player: GR11_USER_ID; model: GR11_MODEL; src: GR11_COORDINATES; direction: GR11_DIRECTION)
	do
		model.rotate(player, src, direction)
	end

end
