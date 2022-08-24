require 'jabs'.setup {
	-- Options for the main window
	position = 'center', -- center, corner. Default corner
	width = 80, -- default 50
	height = 20, -- default 10
	border = 'single', -- none, single, double, rounded, solid, shadow, (or an array or chars). Default shadow

	offset = { -- window position offset
		top = 2, -- default 0
		bottom = 2, -- default 0
		left = 2, -- default 0
		right = 2, -- default 0
	}
}
