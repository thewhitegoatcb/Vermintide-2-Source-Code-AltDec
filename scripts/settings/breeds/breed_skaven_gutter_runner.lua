local breed_data = {
	target_selection = "pick_ninja_approach_target",
	walk_speed = 3,
	pounce_bonus_dmg_per_meter = 1,
	run_speed = 9,
	stagger_in_air_mover_check_radius = 0.2,
	flingable = true,
	ignore_death_watch_timer = true,
	behavior = "gutter_runner",
	exchange_order = 2,
	animation_sync_rpc = "rpc_sync_anim_state_3",
	player_locomotion_constrain_radius = 0.7,
	is_always_spawnable = true,
	smart_targeting_width = 0.3,
	allow_fence_jumping = true,
	pounce_impact_damage = 5,
	approaching_switch_radius = 10,
	has_inventory = true,
	hit_reaction = "ai_default",
	jump_speed = 25,
	time_to_unspawn_after_death = 1,
	special = true,
	armor_category = 1,
	smart_targeting_outer_width = 0.6,
	death_reaction = "gutter_runner",
	hit_effect_template = "HitEffectsGutterRunner",
	smart_targeting_height_multiplier = 1.6,
	radius = 1,
	poison_resistance = 100,
	unit_template = "ai_unit_gutter_runner",
	no_stagger_duration = true,
	threat_value = 8,
	race = "skaven",
	awards_positive_reinforcement_message = true,
	proximity_system_check = true,
	perception = "perception_all_seeing_re_evaluate",
	minion_detection_radius = 10,
	jump_gravity = 9.82,
	default_inventory_template = "gutter_runner",
	debug_flag = "ai_gutter_runner_behavior",
	jump_range = 20,
	bone_lod_level = 1,
	smart_object_template = "special",
	vortexable = true,
	is_bot_aid_threat = true,
	initial_is_passive = false,
	base_unit = "units/beings/enemies/skaven_gutter_runner/chr_skaven_gutter_runner",
	headshot_coop_stamina_fatigue_type = "headshot_special",
	aoe_height = 1.5,
	infighting = InfightingSettings.small,
	detection_radius = math.huge,
	perception_weights = {
		sticky_bonus = 5,
		dog_pile_penalty = -5,
		distance_weight = 10,
		max_distance = 40
	},
	max_health = BreedTweaks.max_health.gutter_runner,
	bloodlust_health = BreedTweaks.bloodlust_health.skaven_special,
	stagger_duration = {
		1,
		1,
		1,
		1,
		1,
		1,
		1,
		1
	},
	status_effect_settings = {
		category = "small",
		ignored_statuses = table.set({
			StatusEffectNames.burning_warpfire
		})
	},
	debug_class = DebugGutterRunner,
	debug_color = {
		255,
		200,
		200,
		0
	},
	disabled = Development.setting("disable_gutter_runner") or false,
	hitzone_multiplier_types = {
		head = "headshot"
	},
	hit_zones = {
		head = {
			prio = 1,
			actors = {
				"c_head"
			},
			push_actors = {
				"j_head",
				"j_spine1"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck"
			},
			push_actors = {
				"j_head",
				"j_spine1"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_hips",
				"c_spine",
				"c_spine2",
				"c_leftshoulder",
				"c_rightshoulder"
			},
			push_actors = {
				"j_spine1"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand"
			},
			push_actors = {
				"j_spine1"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand"
			},
			push_actors = {
				"j_spine1"
			}
		},
		left_leg = {
			prio = 3,
			actors = {
				"c_leftleg",
				"c_leftupleg",
				"c_leftfoot",
				"c_lefttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		right_leg = {
			prio = 3,
			actors = {
				"c_rightleg",
				"c_rightupleg",
				"c_rightfoot",
				"c_righttoebase"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		tail = {
			prio = 3,
			actors = {
				"c_tail1",
				"c_tail2",
				"c_tail3",
				"c_tail4",
				"c_tail5",
				"c_tail6"
			},
			push_actors = {
				"j_hips"
			}
		},
		full = {
			prio = 4,
			actors = {}
		},
		afro = {
			prio = 5,
			actors = {
				"c_afro"
			}
		}
	},
	custom_death_enter_function = function (unit, killer_unit, damage_type, death_hit_zone, t, damage_source)
		local blackboard = BLACKBOARDS[unit]

		if not Unit.alive(killer_unit) then
			return
		end

		QuestSettings.check_gutter_killed_while_pouncing(blackboard, killer_unit, damage_source)
	end,
	run_on_spawn = AiBreedSnippets.on_gutter_runner_spawn,
	before_stagger_enter_function = function (unit, blackboard, attacker_unit, is_push)
		if is_push then
			QuestSettings.check_gutter_runner_push_on_pounce(blackboard, attacker_unit)
			QuestSettings.check_gutter_runner_push_on_target_pounced(blackboard, attacker_unit)
		end
	end
}

Breeds.skaven_gutter_runner = table.create_copy(Breeds.skaven_gutter_runner, breed_data)

local action_data = {
	target_pounced = {
		final_damage_multiplier = 5,
		damage = 1.5,
		foff_after_pounce_kill = true,
		fatigue_type = "blocked_attack",
		far_impact_radius = 6,
		close_impact_radius = 2,
		impact_speed_given = 10,
		damage_type = "cutting",
		stab_until_target_is_killed = true,
		time_before_ramping_damage = {
			10,
			10,
			5,
			5,
			5,
			5,
			5,
			5
		},
		time_to_reach_final_damage_multiplier = {
			15,
			15,
			10,
			10,
			10,
			10,
			10,
			10
		},
		difficulty_damage = {
			harder = 2.5,
			hard = 2,
			normal = 1,
			hardest = 5,
			cataclysm = 10,
			cataclysm_3 = 20,
			cataclysm_2 = 15,
			easy = 1
		},
		ignore_staggers = {
			true,
			false,
			false,
			true,
			false,
			false,
			allow_push = true
		}
	},
	jump = {
		difficulty_jump_delay_time = {
			0.3,
			0.3,
			0.3,
			0.3,
			0.3,
			0.3,
			0.3,
			0.3
		}
	},
	prepare_crazy_jump = {
		difficulty_prepare_jump_time = {
			0.5,
			0.5,
			0.5,
			0.5,
			0.5,
			0.5,
			0.5,
			0.5
		}
	},
	ninja_vanish = {
		stalk_lonliest_player = true,
		foff_anim_length = 0.32,
		effect_name = "fx/chr_gutter_foff"
	},
	smash_door = {
		unblockable = true,
		damage = 5,
		damage_type = "cutting",
		move_anim = "move_fwd",
		attack_anim = "smash_door"
	},
	stagger = {
		stagger_anims = {
			{
				fwd = {
					"stun_fwd_sword"
				},
				bwd = {
					"stun_bwd_sword"
				},
				left = {
					"stun_left_sword"
				},
				right = {
					"stun_right_sword"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_heavy"
				},
				bwd = {
					"stagger_bwd_heavy"
				},
				left = {
					"stagger_left_heavy"
				},
				right = {
					"stagger_right_heavy"
				}
			},
			{
				fwd = {
					"stun_fwd_sword"
				},
				bwd = {
					"stun_bwd_sword"
				},
				left = {
					"stun_left_sword"
				},
				right = {
					"stun_right_sword"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_exp"
				},
				bwd = {
					"stagger_bwd_exp"
				},
				left = {
					"stagger_left_exp"
				},
				right = {
					"stagger_right_exp"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				}
			},
			{
				fwd = {},
				bwd = {},
				left = {},
				right = {}
			},
			{
				fwd = {
					"stagger_fwd_heavy"
				},
				bwd = {
					"stagger_bwd_heavy"
				},
				left = {
					"stagger_left_heavy"
				},
				right = {
					"stagger_right_heavy"
				}
			}
		}
	}
}

BreedActions.skaven_gutter_runner = table.create_copy(BreedActions.skaven_gutter_runner, action_data)
