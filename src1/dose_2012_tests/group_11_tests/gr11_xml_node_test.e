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
			create xmlnode.make ("<asd attr=%"val%" >contenuto</asd>");
			assert("tagname ok",xmlnode.tagname.is_equal ("asd"))
		end


	xml_node_content_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_XML_NODE}"
			testing:  "user/GR11"
		local
			xmlnode : GR11_XML_NODE
		do
			create xmlnode.make ("<asd>contenuto</asd>");
			assert("content ok",xmlnode.content.is_equal ("contenuto"))
			create xmlnode.make ("<asd attr=%"val%" >contenuto</asd>");
			assert("content ok",xmlnode.content.is_equal ("contenuto"))
		end


	xml_node_children_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_XML_NODE}"
			testing:  "user/GR11"
		local
			xmlnode : GR11_XML_NODE
		do
			create xmlnode.make ("<asd>contenuto</asd>");
			assert("no children",xmlnode.direct_children.is_empty)
			create xmlnode.make ("<asd>contenuto<lol></lol></asd>");
			assert("one child",xmlnode.direct_children.count = 1)
			assert("lol child",xmlnode.direct_children[1].tagname.is_equal("lol"))
			create xmlnode.make ("<asd>contenuto<lol></lol><lol></lol><lol></lol><lol></lol></asd>");
			assert("one child",xmlnode.direct_children.count = 4)
			assert("fourth child is lol",xmlnode.direct_children[4].tagname.is_equal("lol"))
		end


	xml_node_attribute_test
			--test to check if the class deck is ok
		note
			testing:  "covers/{GR11_XML_NODE}"
			testing:  "user/GR11"
		local
			xmlnode : GR11_XML_NODE
		do
			create xmlnode.make ("<asd attr1=%"val1%" attr2=%"val2%" attr3=%"val3%" >contenuto</asd>");
			assert("3 attributes",xmlnode.attributes.count = 3)
			assert("attr1 check",xmlnode.attributes.at("attr1").is_equal("val1"))
			assert("attr2 check",xmlnode.attributes.at("attr2").is_equal("val2"))
			assert("attr3 check",xmlnode.attributes.at("attr3").is_equal("val3"))
		end

end
