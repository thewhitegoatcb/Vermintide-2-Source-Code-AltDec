local ACTIONS = BreedActions.skaven_clan_rat_with_shield

BreedBehaviors.horde_shield_rat = {
	"BTSelector",
	{
		"BTSpawningAction",
		condition = "spawn",
		name = "spawn"
	},
	{
		"BTInVortexAction",
		condition = "in_vortex",
		name = "in_vortex"
	},
	{
		"BTFallAction",
		condition = "is_falling",
		name = "falling"
	},
	{
		"BTStaggerAction",
		name = "stagger",
		condition = "stagger",
		action_data = ACTIONS.stagger
	},
	{
		"BTBlockedAction",
		name = "blocked",
		condition = "blocked",
		action_data = ACTIONS.blocked
	},
	{
		"BTSelector",
		{
			"BTTeleportAction",
			condition = "at_teleport_smartobject",
			name = "teleport"
		},
		{
			"BTClimbAction",
			condition = "at_climb_smartobject",
			name = "climb"
		},
		{
			"BTJumpAcrossAction",
			condition = "at_jump_smartobject",
			name = "jump_across"
		},
		{
			"BTSmashDoorAction",
			name = "smash_door",
			condition = "at_door_smartobject",
			action_data = ACTIONS.smash_door
		},
		condition = "at_smartobject",
		name = "smartobject"
	},
	{
		"BTUtilityNode",
		action_data = ACTIONS.utility_action,
		{
			"BTClanRatFollowAction",
			name = "follow",
			action_data = ACTIONS.follow
		},
		{
			"BTAttackAction",
			name = "running_attack",
			condition = "ask_target_before_attacking",
			action_data = ACTIONS.running_attack
		},
		{
			"BTAttackAction",
			name = "normal_attack",
			condition = "ask_target_before_attacking",
			action_data = ACTIONS.normal_attack
		},
		{
			"BTCombatShoutAction",
			name = "combat_shout",
			action_data = ACTIONS.combat_shout
		},
		name = "in_combat",
		condition = "confirmed_player_sighting"
	},
	{
		"BTMoveToGoalAction",
		name = "move_to_goal",
		condition = "has_goal_destination",
		action_data = ACTIONS.follow
	},
	{
		"BTIdleAction",
		condition = "no_target",
		name = "idle"
	},
	{
		"BTFallbackIdleAction",
		name = "fallback_idle"
	},
	name = "horde_shield_rat"
}
