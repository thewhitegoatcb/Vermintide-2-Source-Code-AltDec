local push_radius = 2.5
local extra_range_add = 1.1
local time_mod = 0.9
local weapon_mode_normal
local weapon_mode_charged = 1
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_normal_pose = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left_pose",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_right_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_last = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_right_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.6,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_up_right_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "heavy_attack_right",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_right = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			width_mod = 30,
			damage_profile = "heavy_slashing_smiter_executioner",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_axe_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 2.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.26666666666666666,
					-0.2115662693977356,
					0.40229129791259766,
					0.11554169654846191,
					-0.7105236649513245,
					-0.05646563693881035,
					0.08672874420881271,
					-0.6960214376449585
				},
				{
					0.3111111111111111,
					-0.17420077323913574,
					0.4217958450317383,
					0.11385989189147949,
					-0.650105357170105,
					-0.04077683389186859,
					0.07961060106754303,
					-0.7545611262321472
				},
				{
					0.35555555555555557,
					-0.09588050842285156,
					0.5142498016357422,
					0.05380558967590332,
					-0.5770925283432007,
					0.14896130561828613,
					-0.02357780560851097,
					-0.8026323914527893
				},
				{
					0.4,
					0.02708590030670166,
					0.5960054397583008,
					-0.0680689811706543,
					-0.39922022819519043,
					0.3183591961860657,
					-0.09279802441596985,
					-0.8547860383987427
				},
				{
					0.4444444444444444,
					0.1325927972793579,
					0.46024322509765625,
					-0.2983694076538086,
					0.039847247302532196,
					0.27095627784729004,
					0.06325963139533997,
					-0.959683895111084
				},
				{
					0.48888888888888893,
					0.08225429058074951,
					0.07795906066894531,
					-0.2586348056793213,
					0.8491173982620239,
					0.08629218488931656,
					0.24388031661510468,
					-0.4605167508125305
				},
				{
					0.5333333333333333,
					0.18428468704223633,
					-0.12858009338378906,
					-0.43176913261413574,
					0.8976349234580994,
					0.03377867117524147,
					0.20743080973625183,
					-0.3874056041240692
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			width_mod = 30,
			use_precision_sweep = false,
			damage_profile = "heavy_slashing_smiter_executioner",
			hit_effect = "melee_hit_axes_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_axe_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			uninterruptible = true,
			anim_event = "attack_swing_down_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.26666666666666666,
					0.20002281665802002,
					0.56011962890625,
					0.11138796806335449,
					-0.6806483864784241,
					-0.15076157450675964,
					0.17208169400691986,
					-0.6959717869758606
				},
				{
					0.3111111111111111,
					0.17410898208618164,
					0.6228351593017578,
					0.036095380783081055,
					-0.6208077073097229,
					-0.11256221681833267,
					0.15769657492637634,
					-0.7596442699432373
				},
				{
					0.35555555555555557,
					0.08746147155761719,
					0.7350349426269531,
					-0.16718792915344238,
					-0.42610085010528564,
					-0.09147147089242935,
					0.12421617656946182,
					-0.8914266228675842
				},
				{
					0.4,
					-0.0471416711807251,
					0.4007844924926758,
					-0.4451773166656494,
					0.3082645833492279,
					-0.10261204093694687,
					-0.02660544030368328,
					-0.9453760385513306
				},
				{
					0.4444444444444444,
					-0.05750548839569092,
					0.23860645294189453,
					-0.30161261558532715,
					0.7795809507369995,
					-0.08923015743494034,
					-0.13032348453998566,
					-0.6060587763786316
				},
				{
					0.48888888888888893,
					-0.16644203662872314,
					0.0554046630859375,
					-0.2852213382720947,
					0.950158417224884,
					-0.06215202808380127,
					-0.18474514782428741,
					-0.24332159757614136
				},
				{
					0.5333333333333333,
					-0.18291616439819336,
					0.02299976348876953,
					-0.27282023429870605,
					0.9799988269805908,
					-0.046204548329114914,
					-0.18585151433944702,
					-0.054098233580589294
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_blunt_hit_special",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			additional_hit_effects = {
				"fx/coghammer_impact"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.31666666666666665,
					0.37423861026763916,
					0.5812749862670898,
					-0.20066529512405396,
					0.7442251443862915,
					-0.37621578574180603,
					0.46924009919166565,
					0.29052433371543884
				},
				{
					0.35277777777777775,
					0.22149372100830078,
					0.6298847198486328,
					-0.15874451398849487,
					0.8269151449203491,
					-0.15851706266403198,
					0.5100840926170349,
					0.1757780909538269
				},
				{
					0.3888888888888889,
					0.07932281494140625,
					0.6009492874145508,
					-0.05563300848007202,
					0.8502056002616882,
					-0.0005969275953248143,
					0.4955514967441559,
					-0.17770417034626007
				},
				{
					0.425,
					-0.10826826095581055,
					0.45558738708496094,
					-0.00920182466506958,
					0.667561411857605,
					0.2176109105348587,
					0.40440067648887634,
					-0.5860608220100403
				},
				{
					0.46111111111111114,
					-0.23037469387054443,
					0.24475574493408203,
					-0.05542820692062378,
					0.3567037880420685,
					0.39477965235710144,
					0.23739518225193024,
					-0.8127453327178955
				},
				{
					0.49722222222222223,
					-0.17906928062438965,
					0.17382431030273438,
					-0.17646974325180054,
					0.14127856492996216,
					0.4720184803009033,
					-0.024167919531464577,
					-0.8698590993881226
				},
				{
					0.5333333333333333,
					-0.14319682121276855,
					0.17606163024902344,
					-0.2560728192329407,
					0.054749492555856705,
					0.5002443790435791,
					-0.249727264046669,
					-0.8272812962532043
				}
			}
		},
		light_attack_left_pose = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_blunt_hit_special",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up_pose",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			additional_hit_effects = {
				"fx/coghammer_impact"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.31666666666666665,
					0.3103722333908081,
					0.5904569625854492,
					-0.2657968997955322,
					0.7223937511444092,
					-0.29107052087783813,
					0.5494855046272278,
					0.302474707365036
				},
				{
					0.35277777777777775,
					0.1775137186050415,
					0.6366815567016602,
					-0.19225668907165527,
					0.7879757285118103,
					-0.14280153810977936,
					0.5783776640892029,
					0.1555033177137375
				},
				{
					0.3888888888888889,
					0.051915526390075684,
					0.6041536331176758,
					-0.08548450469970703,
					0.8273890018463135,
					-0.0234444011002779,
					0.5306860208511353,
					-0.18234620988368988
				},
				{
					0.425,
					-0.12680041790008545,
					0.4566812515258789,
					-0.04089641571044922,
					0.6963638663291931,
					0.19201868772506714,
					0.41889646649360657,
					-0.5502110719680786
				},
				{
					0.46111111111111114,
					-0.26615601778030396,
					0.21436119079589844,
					-0.12140655517578125,
					0.37910813093185425,
					0.4430711269378662,
					0.2820264995098114,
					-0.7618570327758789
				},
				{
					0.49722222222222223,
					-0.1962783932685852,
					0.1402301788330078,
					-0.22664093971252441,
					0.17541848123073578,
					0.5380390882492065,
					0.08140674978494644,
					-0.8204360008239746
				},
				{
					0.5333333333333333,
					-0.13591063022613525,
					0.1464986801147461,
					-0.29386401176452637,
					0.0605529323220253,
					0.579397976398468,
					-0.1304379105567932,
					-0.8022575974464417
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.35,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.53,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.31666666666666665,
					-0.1651219129562378,
					0.41902637481689453,
					-0.12357282638549805,
					-0.35473594069480896,
					-0.43480953574180603,
					0.7788936495780945,
					-0.2800496220588684
				},
				{
					0.35777777777777775,
					0.014032959938049316,
					0.4897041320800781,
					-0.14508891105651855,
					-0.46682223677635193,
					-0.26358669996261597,
					0.8325770497322083,
					-0.13933588564395905
				},
				{
					0.3988888888888889,
					0.16783201694488525,
					0.4859123229980469,
					-0.1843559741973877,
					-0.5155827403068542,
					-0.020326634868979454,
					0.8565773963928223,
					0.006041984539479017
				},
				{
					0.44,
					0.23536741733551025,
					0.37369251251220703,
					-0.22095942497253418,
					-0.4831708073616028,
					0.2752068340778351,
					0.8144212365150452,
					0.16590768098831177
				},
				{
					0.48111111111111116,
					0.33757781982421875,
					0.09530067443847656,
					-0.31476402282714844,
					-0.234669491648674,
					0.6974785923957825,
					0.5167436599731445,
					0.4375268518924713
				},
				{
					0.5222222222222223,
					0.3845963478088379,
					-0.0766305923461914,
					-0.39172816276550293,
					0.11856687068939209,
					-0.7932396531105042,
					-0.29416516423225403,
					-0.5197882056236267
				},
				{
					0.5633333333333334,
					0.3412182331085205,
					-0.19030284881591797,
					-0.36787962913513184,
					0.13064886629581451,
					-0.8158949613571167,
					-0.11737420409917831,
					-0.5508808493614197
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.3,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.45,
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					0.35154640674591064,
					0.6105613708496094,
					-0.013287782669067383,
					0.3414539694786072,
					-0.5722248554229736,
					0.6815572381019592,
					0.30240345001220703
				},
				{
					0.30277777777777776,
					0.21344292163848877,
					0.6865348815917969,
					-0.08280587196350098,
					0.3867288827896118,
					-0.47263258695602417,
					0.7539681792259216,
					0.24205638468265533
				},
				{
					0.3388888888888889,
					0.008887767791748047,
					0.6877231597900391,
					-0.2301170825958252,
					0.42069894075393677,
					-0.23887230455875397,
					0.8661098480224609,
					0.1257227659225464
				},
				{
					0.375,
					-0.13148605823516846,
					0.3379478454589844,
					-0.3322117328643799,
					0.3491513133049011,
					0.38807761669158936,
					0.8230494856834412,
					-0.2237825244665146
				},
				{
					0.4111111111111111,
					-0.037958502769470215,
					0.21931171417236328,
					-0.22301840782165527,
					0.1010207086801529,
					0.768790602684021,
					0.35491928458213806,
					-0.5222911238670349
				},
				{
					0.44722222222222224,
					-0.09986889362335205,
					0.15837764739990234,
					-0.24700427055358887,
					0.06424062699079514,
					0.7897444367408752,
					0.27032071352005005,
					-0.5469035506248474
				},
				{
					0.48333333333333334,
					-0.1390310525894165,
					0.04988288879394531,
					-0.26990199089050293,
					0.0747339278459549,
					0.790736734867096,
					0.28017276525497437,
					-0.5391227006912231
				}
			}
		},
		light_attack_up_right_last = {
			damage_window_start = 0.3,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank_impact",
			hit_shield_stop_anim = "attack_hit_shield",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.45,
			impact_sound_event = "cog_blunt_hit_special",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 3,
			anim_event = "attack_swing_up_right",
			hit_stop_anim = "attack_hit",
			total_time = 1.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			range_mod = extra_range_add * 1.3,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.35,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_normal_pose",
					start_time = 0.65,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			additional_hit_effects = {
				"fx/coghammer_impact"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.018985867500305176,
					0.4225139617919922,
					-0.03986763954162598,
					0.8562652468681335,
					0.1614139825105667,
					-0.49023109674453735,
					-0.02070920355618
				},
				{
					0.30277777777777776,
					0.07023012638092041,
					0.4202117919921875,
					-0.002153158187866211,
					0.822195291519165,
					0.011076490394771099,
					-0.539947509765625,
					-0.17980246245861053
				},
				{
					0.3388888888888889,
					0.2331087589263916,
					0.2840118408203125,
					-0.024387359619140625,
					0.64033043384552,
					-0.2317727655172348,
					-0.438251256942749,
					-0.5866804718971252
				},
				{
					0.375,
					0.33568012714385986,
					0.0990591049194336,
					-0.05949687957763672,
					0.40570268034935,
					-0.2882540822029114,
					-0.16608624160289764,
					-0.8513109087944031
				},
				{
					0.4111111111111111,
					0.40175437927246094,
					-0.0743865966796875,
					-0.08070993423461914,
					0.2557642459869385,
					-0.33797702193260193,
					0.009457919746637344,
					-0.9056857824325562
				},
				{
					0.44722222222222224,
					0.4656496047973633,
					-0.13145160675048828,
					-0.12792420387268066,
					0.22943119704723358,
					-0.3850713074207306,
					-0.006239800248295069,
					-0.8938917517662048
				},
				{
					0.48333333333333334,
					0.46444451808929443,
					-0.16685962677001953,
					-0.21241021156311035,
					0.10743074864149094,
					-0.41462868452072144,
					-0.03283121436834335,
					-0.9030303359031677
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.33,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			use_precision_sweep = false,
			damage_profile = "medium_blunt_tank",
			invert_attack_direction = true,
			hit_effect = "melee_hit_hammers_2h",
			damage_window_end = 0.5,
			impact_sound_event = "cog_blunt_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			range_mod = extra_range_add * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			baked_sweep = {
				{
					0.2966666666666667,
					0.20107793807983398,
					0.6221380233764648,
					-0.18470454216003418,
					0.636563777923584,
					-0.3307386338710785,
					0.646638035774231,
					0.2593413293361664
				},
				{
					0.33611111111111114,
					-0.019190192222595215,
					0.5687437057495117,
					-0.18055987358093262,
					0.6845629215240479,
					-0.14283502101898193,
					0.7111994624137878,
					0.07188310474157333
				},
				{
					0.3755555555555556,
					-0.12409496307373047,
					0.2719612121582031,
					-0.16562724113464355,
					0.6177322864532471,
					0.2582583725452423,
					0.634552538394928,
					-0.3860732316970825
				},
				{
					0.41500000000000004,
					-0.03525340557098389,
					0.13697528839111328,
					-0.1588754653930664,
					0.27740272879600525,
					0.5863404273986816,
					0.27610501646995544,
					-0.7092381119728088
				},
				{
					0.45444444444444443,
					-0.07584583759307861,
					0.10315513610839844,
					-0.1643686294555664,
					0.19519448280334473,
					0.6083497405052185,
					0.24793025851249695,
					-0.7282446622848511
				},
				{
					0.49388888888888893,
					-0.11358177661895752,
					0.059683799743652344,
					-0.17803096771240234,
					0.1671963781118393,
					0.6194040179252625,
					0.24888458847999573,
					-0.7255622148513794
				},
				{
					0.5333333333333333,
					-0.09941041469573975,
					0.07971858978271484,
					-0.21016907691955566,
					0.13351668417453766,
					0.6358784437179565,
					0.14564372599124908,
					-0.746069610118866
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "light_push",
			weapon_action_hand = "right",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "slashing_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "medium_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.4,
					action = "action_one",
					doubleclick_window = 0,
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			push_radius = push_radius,
			chain_condition_func = function (attacker_unit, input_extension)
				local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

				return not status_extension:fatigued()
			end
		},
		default_charged = {
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left_charged",
					start_time = 0,
					action = "action_one",
					end_time = 0.35,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					release_required = "action_two_hold",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.3,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left_charged",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end
		},
		default_left_charged = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.2,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right_charged",
					start_time = 0,
					action = "action_one",
					end_time = 0.35,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 0.5,
					action = "action_one",
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					start_time = 0.3,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_right_charged",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_right_charged = {
			damage_window_start = 0.35,
			push_radius = 3,
			range_mod = 1.3,
			kind = "charged_sweep",
			first_person_hit_anim = "hit_right_shake",
			sweep_z_offset = 0.1,
			width_mod = 30,
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "heavy_blunt_smiter_burn_charge",
			hit_effect = "melee_hit_hammers_2h",
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_window_end = 0.5,
			overcharge_type = "cog_hammer_charge_light",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 3,
			weapon_up_offset_mod = 0.25,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			critical_strike = {}
		},
		heavy_attack_left_charged = {
			damage_window_start = 0.3,
			push_radius = 3,
			anim_end_event = "attack_finished",
			kind = "charged_sweep",
			first_person_hit_anim = "hit_left_shake",
			range_mod = 1.3,
			sweep_z_offset = 0.05,
			width_mod = 30,
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "heavy_blunt_smiter_burn_charge",
			hit_effect = "melee_hit_hammers_2h",
			impact_sound_event = "cog_blunt_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_window_end = 0.5,
			overcharge_type = "cog_hammer_charge_light",
			charge_value = "heavy_attack",
			dedicated_target_range = 3,
			weapon_up_offset_mod = 0.25,
			uninterruptible = true,
			anim_event = "attack_swing_down_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.4,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left_charged",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end
		},
		light_attack_left_charged = {
			damage_window_start = 0.3,
			range_mod = 1.3,
			kind = "charged_sweep",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			width_mod = 30,
			slide_armour_hit = true,
			damage_profile = "heavy_slashing_linesman_burn",
			hit_effect = "melee_hit_hammers_2h",
			overcharge_type = "cog_hammer_charge_light",
			aim_assist_ramp_multiplier = 0.5,
			damage_window_end = 0.45,
			impact_sound_event = "cog_blunt_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2.85,
			weapon_up_offset_mod = 0.25,
			uninterruptible = true,
			anim_event = "attack_swing_heavy",
			hit_stop_anim = "attack_hit",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left_charged",
					start_time = 0.7,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					end_time = 0.3,
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
		},
		light_attack_right_charged = {
			damage_window_start = 0.35,
			range_mod = 1.3,
			kind = "charged_sweep",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			width_mod = 30,
			slide_armour_hit = true,
			damage_profile = "heavy_slashing_linesman_burn",
			hit_effect = "melee_hit_hammers_2h",
			overcharge_type = "cog_hammer_charge_light",
			aim_assist_ramp_multiplier = 0.5,
			damage_window_end = 0.53,
			impact_sound_event = "cog_blunt_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0.1,
			dedicated_target_range = 2.85,
			weapon_up_offset_mod = 0.25,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.4,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.4,
					end_time = 0.35,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.5,
					external_multiplier = 0.4,
					end_time = 0.8,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_charged",
					start_time = 0.7,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.3,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					end_time = 0.3,
					input = "action_wield"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
		}
	},
	action_two = {
		default = {
			cooldown = 0.15,
			minimum_hold_time = 0.2,
			anim_end_event = "parry_finished",
			kind = "block",
			hold_input = "action_two_hold",
			anim_event = "parry_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			enter_function = function (attacker_unit, input_extension, remaining_time)
				return input_extension:reset_release_input_with_delay(remaining_time)
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "push",
					start_time = 0.2,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.coghammer
weapon_template.display_unit = "units/weapons/weapon_display/display_2h_axes"
weapon_template.wield_anim = "to_cog_hammer"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/cog_hammer"
weapon_template.buff_type = "MELEE_2H"
weapon_template.weapon_type = "AXE_2H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 2
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_2h_block_wood"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1
	},
	change_dodge_speed = {
		external_optional_multiplier = 1
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = true,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
		arc = 1
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 4,
		[DamageTypes.STAGGER] = 5,
		[DamageTypes.DAMAGE] = 2
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 7,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 6,
		[DamageTypes.DAMAGE] = 6
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_shield_breaking",
	"weapon_keyword_armour_piercing"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_left"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	push = {
		action_name = "action_one",
		sub_action_name = "push"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/coghammer"
}
weapon_template.wwise_dep_left_hand = {
	"wwise/coghammer"
}

return {
	two_handed_cog_hammers_template_1 = table.clone(weapon_template)
}
