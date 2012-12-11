note
	description: "Summary description for {GR11_XML_NODE_TEST}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GR11_XML_NODE_TEST
inherit
	EQA_TEST_SET

feature -- Test routines

	xml_node_tagname_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_XML_NODE}"
			testing:  "user/GR11"
		local
			xmlnode : GR11_XML_NODE
		do
			create xmlnode.make ("<asd/>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
			create xmlnode.make ("<asd></asd>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
			create xmlnode.make ("<asd>contenuto</asd>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
			create xmlnode.make ("<asd><lol/></asd>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
			create xmlnode.make ("<asd><lol></lol></asd>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
		end

end
