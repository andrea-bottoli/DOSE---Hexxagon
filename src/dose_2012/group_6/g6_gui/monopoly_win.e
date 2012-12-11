note
	description: "EiffelVision Widget MONOPOLY_WIN.%
		%The original version of this class was generated by EiffelBuild."
	generator: "EiffelBuild"
	date: "$Date: 2010-12-22 10:39:24 -0800 (Wed, 22 Dec 2010) $"
	revision: "$Revision: 85202 $"

class
	MONOPOLY_WIN

inherit
	MONOPOLY_WIN_IMP
		redefine
			default_create
		end

create
	default_create,
	make_with_window
	
feature {NONE} -- Initialization

	make_with_window (a_window: like window)
			-- Create `Current' in `a_window'.
		require
			window_not_void: a_window /= Void
			window_empty: a_window.is_empty
			no_menu_bar: a_window.menu_bar = Void
		do
			window := a_window
			create_interface_objects
			initialize
		ensure
			window_set: window = a_window
			window_not_void: window /= Void
		end

	default_create
			 -- Create `Current'.
		do
			make_with_window (create {like window})
		ensure then
			window_not_void: window /= Void
		end

feature {NONE} -- Initialization

	user_create_interface_objects
			-- Create any auxilliary objects needed for MONOPOLY_WIN.
			-- Initialization for these objects must be performed in `user_initialization'.
		do
				-- Create attached types defined in class here, initialize them in `user_initialization'.
		end

	user_initialization
			-- Perform any initialization on objects created by `user_create_interface_objects'
			-- and from within current class itself.
		do
				-- Initialize types defined in current class
		end

feature {NONE} -- Implementation


end