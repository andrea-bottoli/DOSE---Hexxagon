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
	--xml is the xml coded string that encode a single node starting with '<'
	require
		True
		--xml is correct xml string
	local
		i,start: INTEGER_32
		attr_name, child_name: STRING_8
		temp_child : GR11_XML_NODE
	do
		-- Class "attributes" init
		xml_code := xml
		create attributes.make (10);
		create children.make

		i := 1; -- assuming first character in the string is at position 1 (instead of 0)
		if xml.item (i) = '<' then
			from i := 2; start := i
			until xml.item(i).is_equal ('>') or xml.item(i).is_equal ('/')  or xml.item(i).is_equal (' ')
			loop -- reading the opening tagname
				i := i + 1;
			end
			tagname := xml.substring( start , i - 1 )

			from until xml.item(i).is_equal ('>') or xml.item(i).is_equal ('/')
			loop --read attributes

				from i:= i+1; start := i;
				until xml.item(i).is_equal ('=') --scanning until hitting a '='
				loop i := i+1; end
				attr_name := xml.substring( start , i - 1 )
				attr_name.left_adjust

				from i:= i+2; start := i; -- i+2 because we're skipping both the " and the =
				until xml.item(i).is_equal ('"') -- scanning until the quotes
				loop i := i+1; end
				attributes.put (xml.substring( start , i - 1 ), attr_name)
			end

			if xml.item(i).is_equal ('>') then
				-- scanning for new nodes and assuming text content is before children.
				from i:= i + 1; start := i until xml.item(i).is_equal ('<')
				loop i:= i + 1;	end
				content := xml.substring(start, i -1 )
				if not xml.item( i + 1 ).is_equal ('/') then
					from i := i+1; start := i - 1
					until xml.item(i).is_equal ('>') or xml.item(i).is_equal ('/') or xml.item(i).is_equal (' ')
					loop i := i + 1; end
					child_name := xml.substring( start , i - 1 )

					from --proceed until > or /> making sure they're of the current child
					until ( xml.item(i).is_equal('<') and xml.substring(i, child_name.count + i ).is_equal (child_name) ) or ( xml.item(i).is_equal ('/') and not xml.substring(start, i).has_substring (">") )
					loop i := i + 1; end

					if xml.item(i).is_equal ('/') then
						create temp_child.make (xml.substring(start, i + 1 ) )
					else
						create temp_child.make (xml.substring(start, i + child_name.count ) )
					end
					children.put (temp_child)
				end
			end

			if xml.item(i).is_equal ('/') then
				--do nothing, you're done.
			end
		end

	end
feature -- status access
	xml_code: STRING_8
		-- the string containing the generating xml code
	tagname: STRING_8
		-- the name of the tag
	content: STRING_8
		-- the text contained by the tag
	children: LINKED_LIST[GR11_XML_NODE]
		-- a list of children nodes. only the direct children are in this list.
	attributes: HASH_TABLE[STRING_8,STRING_8];
		-- a table mapping attribute names to attribute values
end
