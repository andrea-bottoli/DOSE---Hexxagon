note
	description: "I hate this field"
	author: "Debrecen1"
	date: "01.12.2012"
	revision: "$Revision$"

class
	ZB_IMAGE_BUTTON

inherit
    EV_FIXED
		export
        	{ANY} all
        end

create
	default_create,
	make_with_images

feature {ANY}

	make_with_images(a_img_normal: EV_PIXMAP; a_img_hover: EV_PIXMAP)
		do
			default_create

			img_normal := a_img_normal
			img_hover := a_img_hover

			set_pointer_style (default_pixmaps.hyperlink_cursor)
			pointer_enter_actions.extend (agent pointer_enter_area)
			pointer_leave_actions.extend (agent pointer_leave_area)

			set_background_pixmap (img_normal)
		end

feature {NONE}

	pointer_enter_area ()
		do
			set_background_pixmap (img_hover)
		end

	pointer_leave_area ()
		do
			set_background_pixmap (img_normal)
		end

	img_normal: EV_PIXMAP
	img_hover: EV_PIXMAP

end -- class ZB_IMAGE_BUTTON
