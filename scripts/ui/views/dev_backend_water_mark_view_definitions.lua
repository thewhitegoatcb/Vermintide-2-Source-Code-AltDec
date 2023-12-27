local scenegraph_definition = {
	root = {
		scale = "fit",
		is_root = true,
		position = {
			0,
			0,
			0
		},
		size = {
			1920,
			1080
		}
	},
	water_mark = {
		vertical_alignment = "top",
		parent = "root",
		horizontal_alignment = "right",
		position = {
			-300,
			-20,
			999
		},
		size = {
			200,
			50
		}
	}
}
local definitions = {
	scenegraph_definition = scenegraph_definition,
	water_mark = UIWidgets.create_simple_texture("dev_backend_watermark", "water_mark", false, false)
}

return definitions
