note
	description: "Represents a node of an XML document"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_XML_NODE
create
	make
feature -- creation
	make(xml: STRING_8)
	--xml is the xml coded string that encode a single node
	require
		True
		--xml is a correct XML string and contain a single node
		xml_has_one_node_only: siblings_list (xml).count = 1
	local
		i,start,ending: INTEGER_32
		attr_name, attr_value: STRING_8
		first_tag: STRING_8
		temp_child : GR11_XML_NODE
		temp_children : LINKED_LIST[GR11_XML_NODE]
		temp_children_strings: LIST[STRING_8]

	do
		-- Class "attributes" init
		xml_code := xml
		create attributes.make (100);
		create temp_children.make

		i := 1; -- assuming first character in the string is at position 1 (instead of 0)

		--look for the first tag
		from i := 1 until xml.item (i) = '<'
		loop i := i + 1 end
		start := i
		from i := start until xml.item (i) = '>'
		loop i := i + 1 end
		ending := i

		first_tag := xml.substring (start, ending)
		tagname := get_tag_name (first_tag)


		--attributes interpretation
		from i := 2 until first_tag.item (i) = ' ' or i = first_tag.count --skipping tagname
		loop i := i + 1 end
		from until first_tag.item (i) /= ' ' --skip whitespaces, if any
		loop i := i + 1 end
		create attributes.make (100)

		from until first_tag.item (i) = '>' or first_tag.item (i) = '/'
		loop
			attr_name := ""
			attr_value := ""

			from until first_tag.item (i) = '='
			loop
				attr_name.append_character (first_tag.item (i))
				i:= i + 1
			end

			from i := i + 2 until first_tag.item (i) = '"'
			loop
				attr_value.append_character (first_tag.item (i))
				i := i + 1
			end
			i := i + 1 --move the index beyond the '"'

			from until first_tag.item (i) /= ' ' --skip whitespaces
			loop i := i + 1 end

			attributes.put (attr_value, attr_name)

		end


		--content interpretation
		content := ""
		if not is_autoclosed(first_tag) then

			from i := ending + 1; until xml.item (i) = '<'
			loop
				content.append_character (xml.item (i))
				i := i + 1
			end
			ending := i -1


			--direct children interpretation
			create temp_children.make
			from i := xml.count until xml.item (i) = '<'
			loop i := i - 1 end
			if ending + 1 < i - 1 then
				temp_children_strings := siblings_list ( xml.substring ( ending + 1, i-1 ) )
				from i := 1 until i > temp_children_strings.count
				loop
					create temp_child.make (temp_children_strings[i])
					temp_children.extend (temp_child)
					i := i + 1
				end
			end
			direct_children := temp_children

		end

end


feature -- status access
	xml_code: STRING_8
		-- the string containing the generating xml code
	tagname: STRING_8
		-- the name of the tag
	content: STRING_8
		-- the text contained by the tag
	direct_children: LIST[GR11_XML_NODE]
		-- a list of children nodes. only the direct children are in this list.
	attributes: HASH_TABLE[STRING_8,STRING_8];
		-- a table mapping attribute names to attribute values


feature --helper methods
	siblings_list(xml: STRING_8) : LIST[STRING_8]
		--returns a list of strings containing the xml code of each node at the first level
		local
			start,ending,i,sib_start: INTEGER_32
			tag: STRING_8
			siblings: LINKED_LIST[STRING_8]
			children: LINKED_STACK[STRING_8]
		do
			create siblings.make
			create children.make
			i := 1

			from until i > xml.count or not xml.substring (i,xml.count).has ('<') --finché non finisce la stringa o non ci son più tag in coda
			loop
				from until xml.item (i) = '<'
				loop i := i+ 1 end
				start := i

				from until xml.item (i) = '>'
				loop i := i + 1 end
				ending := i
				i := i + 1

				tag := xml.substring (start, ending)

				if is_autoclosed(tag) then
					if children.is_empty then
						siblings.extend (tag)
					end
				else
					if is_closing(tag) then
						if get_tag_name(children.item).is_equal(get_tag_name(tag)) then
							children.remove
							if children.is_empty then
								siblings.extend (xml.substring(sib_start,ending))
							end
						end
					else
						if children.is_empty then
							sib_start := start
						end
						children.put (tag)
					end
				end

			end
			Result := siblings
		end

	is_closing(xml_tag: STRING_8) : BOOLEAN
		--checks if the given xml tag is </*>
		do
			Result := xml_tag.item(2) = '/'
		end

	is_autoclosed(xml_tag: STRING_8) : BOOLEAN
		--checks if the given xml tag is <*/>
		do
			Result := xml_tag.item(xml_tag.count - 1) = '/'
		end

	get_tag_name(xml_tag: STRING_8) : STRING_8
		--returns the tagname of the given xml tag
		local
			i,start: INTEGER_32
		do
			from i := 1	until xml_tag.item (i) /= '<' and xml_tag.item (i) /= '/'
			loop i := i + 1 end
			start := i
			from until xml_tag.item (i) = ' ' or xml_tag.item (i) = '>' or xml_tag.item (i) = '/'
			loop i := i + 1 end
			Result := xml_tag.substring (start, i - 1)
		end


end -- Class end
