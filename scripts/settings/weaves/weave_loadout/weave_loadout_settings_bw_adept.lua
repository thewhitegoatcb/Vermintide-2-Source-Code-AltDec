WeaveLoadoutSettings = WeaveLoadoutSettings or {}

local profile_name = "bright_wizard"
local talent_index = CareerSettings.bw_adept.talent_tree_index

WeaveLoadoutSettings.bw_adept = {
	talent_tree = TalentTrees[profile_name][talent_index],
	properties = {},
	traits = {}
}
