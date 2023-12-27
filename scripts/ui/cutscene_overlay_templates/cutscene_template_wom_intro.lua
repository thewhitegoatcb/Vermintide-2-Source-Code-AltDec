local utils = require("scripts/ui/cutscene_overlay_templates/cutscene_utils")
local start_layer = 700
local template_settings = {
	template_1 = {
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_01",
			start_timestamp = "00:26:02",
			fade_in_duration = 0.3,
			end_timestamp = "00:28:20",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_02",
			start_timestamp = "00:29:20",
			fade_in_duration = 0.3,
			end_timestamp = "00:31:20",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_03",
			start_timestamp = "00:35:00",
			fade_in_duration = 0.3,
			end_timestamp = "00:37:00",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 35,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_04",
			start_timestamp = "01:05:15",
			fade_in_duration = 0.3,
			end_timestamp = "01:08:15",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("orange", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 35,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_05",
			start_timestamp = "01:21:06",
			fade_in_duration = 0.3,
			end_timestamp = "01:24:05",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("orange", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 35,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_06",
			start_timestamp = "01:28:05",
			fade_in_duration = 0.3,
			end_timestamp = "01:30:10",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("orange", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_07",
			start_timestamp = "01:57:18",
			fade_in_duration = 0.3,
			end_timestamp = "02:00:24",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_08",
			start_timestamp = "02:13:18",
			fade_in_duration = 0.3,
			end_timestamp = "02:16:18",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		},
		{
			fade_out_duration = 0.3,
			font_size = 30,
			localize = true,
			vertical_alignment = "bottom",
			word_wrap = true,
			font_upper_case = false,
			horizontal_alignment = "center",
			text = "wom_intro_subtitle_09",
			start_timestamp = "02:19:00",
			fade_in_duration = 0.3,
			end_timestamp = "02:22:06",
			font_type = "hell_shark",
			color = Colors.get_color_table_with_alpha("white", 255),
			offset = {
				0,
				20,
				start_layer
			}
		}
	}
}

utils.convert_string_timestamps_to_seconds(template_settings)

return {
	templates = template_settings
}
