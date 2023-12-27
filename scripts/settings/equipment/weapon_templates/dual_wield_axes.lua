local push_radius = 2
local default_L_sub_action = "light_attack_left"
local light_attack_left_chain_action = "default_last"
local default_right_L_sub_action = "light_attack_back_left"
local light_attack_back_left_chain_action = "default_left"
local default_last_L_sub_action = "light_attack_right"
local light_attack_right_chain_action = "default_right"
local default_left_L_sub_action = "light_attack_back_right"
local light_attack_back_right_chain_action = "default"
local time_mod = 0.9
local weapon_template = {}

weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_L_sub_action
				},
				{
					sub_action = "heavy_attack_2",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_2",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
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
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_right_L_sub_action
				},
				{
					sub_action = "heavy_attack",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_heavy = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_diagonal",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_L_sub_action
				},
				{
					sub_action = "heavy_attack_3",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_3",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right_heavy = {
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
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_right_L_sub_action
				},
				{
					sub_action = "heavy_attack",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
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
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_left_L_sub_action
				},
				{
					sub_action = "heavy_attack",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.7,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_last = {
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
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release",
					sub_action = default_last_L_sub_action
				},
				{
					sub_action = "heavy_attack",
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
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_dagger",
			damage_profile_left = "light_slashing_smiter_dual",
			damage_window_end = 0.44,
			impact_sound_event = "axe_1h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_heavy",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one"
				},
				{
					sub_action = "default_heavy",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "attack_hit",
				right = "shake_hit"
			},
			baked_sweep_right = {
				{
					0.26666666666666666,
					-0.26616954803466797,
					0.24126344919204712,
					0.02114105224609375,
					-0.679732084274292,
					0.23539961874485016,
					-0.3705863058567047,
					-0.5875518321990967
				},
				{
					0.3011111111111111,
					-0.16599273681640625,
					0.5135536193847656,
					-0.0008392333984375,
					-0.4320225119590759,
					0.3230293095111847,
					-0.23812827467918396,
					-0.8076531887054443
				},
				{
					0.33555555555555555,
					0.15581703186035156,
					0.6888819932937622,
					-0.15437090396881104,
					0.27911636233329773,
					0.4844047427177429,
					0.20854176580905914,
					-0.80246901512146
				},
				{
					0.37,
					0.4865903854370117,
					0.6078401803970337,
					-0.26525044441223145,
					0.5864624977111816,
					0.4011482298374176,
					0.4200778901576996,
					-0.5645143389701843
				},
				{
					0.40444444444444444,
					0.6498546600341797,
					0.4641394317150116,
					-0.308080792427063,
					0.6600956320762634,
					0.31503450870513916,
					0.4830985367298126,
					-0.4812929630279541
				},
				{
					0.4388888888888889,
					0.7212991714477539,
					0.34359702467918396,
					-0.3269388675689697,
					0.6987438797950745,
					0.24097761511802673,
					0.5265752673149109,
					-0.4200064539909363
				},
				{
					0.47333333333333333,
					0.7425746917724609,
					0.22173961997032166,
					-0.3315542936325073,
					0.7203393578529358,
					0.17560218274593353,
					0.5524102449417114,
					-0.38094374537467957
				}
			},
			baked_sweep_left = {
				{
					0.26666666666666666,
					-0.5160121917724609,
					0.3550927937030792,
					-0.07407629489898682,
					-0.3481108546257019,
					0.23031437397003174,
					-0.17486225068569183,
					-0.8917383551597595
				},
				{
					0.3011111111111111,
					-0.4475545883178711,
					0.41780534386634827,
					-0.020788192749023438,
					-0.40759703516960144,
					0.257951557636261,
					-0.177394300699234,
					-0.8578210473060608
				},
				{
					0.33555555555555555,
					-0.3522481918334961,
					0.5045206546783447,
					0.02547907829284668,
					-0.4052679240703583,
					0.29088538885116577,
					-0.14002612233161926,
					-0.8552989363670349
				},
				{
					0.37,
					-0.2354574203491211,
					0.5935336351394653,
					0.018953800201416016,
					-0.22819732129573822,
					0.33197256922721863,
					-0.016443287953734398,
					-0.9151228666305542
				},
				{
					0.40444444444444444,
					-0.06546497344970703,
					0.641985297203064,
					-0.07994449138641357,
					0.22657988965511322,
					0.3280225098133087,
					0.22992010414600372,
					-0.8878060579299927
				},
				{
					0.4388888888888889,
					0.2606039047241211,
					0.5596650838851929,
					-0.2455986738204956,
					0.6180360913276672,
					0.31897011399269104,
					0.46400022506713867,
					-0.548628568649292
				},
				{
					0.47333333333333333,
					0.5226106643676758,
					0.2864212691783905,
					-0.3546132445335388,
					0.7633880376815796,
					0.30305349826812744,
					0.5499991178512573,
					-0.15132158994674683
				}
			}
		},
		heavy_attack_2 = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_profile_left = "light_slashing_smiter_dual",
			damage_window_end = 0.42,
			impact_sound_event = "axe_1h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.5,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "attack_hit"
			},
			baked_sweep_right = {
				{
					0.26666666666666666,
					0.5209474563598633,
					0.324125200510025,
					0.13695275783538818,
					-0.609455406665802,
					-0.21437878906726837,
					0.1671033501625061,
					-0.7447699904441833
				},
				{
					0.29777777777777775,
					0.4845590591430664,
					0.4353499710559845,
					0.10720312595367432,
					-0.49217721819877625,
					-0.27489158511161804,
					0.07747101783752441,
					-0.8223104476928711
				},
				{
					0.3288888888888889,
					0.42959117889404297,
					0.5465584993362427,
					0.058118462562561035,
					-0.34326231479644775,
					-0.33175742626190186,
					-0.005392863880842924,
					-0.8786802291870117
				},
				{
					0.36,
					0.3613853454589844,
					0.6323223114013672,
					0.01974189281463623,
					-0.18393976986408234,
					-0.38365739583969116,
					-0.09380988031625748,
					-0.9000959992408752
				},
				{
					0.3911111111111111,
					0.24297332763671875,
					0.6681731939315796,
					-0.08104681968688965,
					0.07407090067863464,
					-0.4177837371826172,
					-0.16391007602214813,
					-0.8905637264251709
				},
				{
					0.42222222222222217,
					0.061310768127441406,
					0.6484177112579346,
					-0.17079949378967285,
					0.38643816113471985,
					-0.4022306501865387,
					-0.27520009875297546,
					-0.7830331921577454
				},
				{
					0.4533333333333333,
					-0.13422679901123047,
					0.5790780782699585,
					-0.25595223903656006,
					0.6487429738044739,
					-0.32329392433166504,
					-0.36227619647979736,
					-0.5859774947166443
				}
			},
			baked_sweep_left = {
				{
					0.26666666666666666,
					0.2684335708618164,
					0.4033895432949066,
					0.02960491180419922,
					-0.7097639441490173,
					-0.27644070982933044,
					0.33258306980133057,
					-0.5560613870620728
				},
				{
					0.29777777777777775,
					0.1801900863647461,
					0.5427560806274414,
					0.005400180816650391,
					-0.5217556953430176,
					-0.39438188076019287,
					0.2404564470052719,
					-0.717227041721344
				},
				{
					0.3288888888888889,
					-0.08541584014892578,
					0.7366918325424194,
					-0.1448725461959839,
					0.15130896866321564,
					-0.48267215490341187,
					-0.04075605049729347,
					-0.8616682291030884
				},
				{
					0.36,
					-0.3375577926635742,
					0.6810235977172852,
					-0.2947731018066406,
					0.5444421768188477,
					-0.3548217713832855,
					-0.2572140693664551,
					-0.7152099609375
				},
				{
					0.3911111111111111,
					-0.5039234161376953,
					0.42589452862739563,
					-0.42878103256225586,
					0.6503870487213135,
					-0.2895996570587158,
					-0.35798904299736023,
					-0.6041296720504761
				},
				{
					0.42222222222222217,
					-0.5831260681152344,
					0.06778240203857422,
					-0.49045658111572266,
					0.7505710124969482,
					-0.2437613308429718,
					-0.39177680015563965,
					-0.47300589084625244
				},
				{
					0.4533333333333333,
					-0.5843086242675781,
					-0.03041785955429077,
					-0.5203301906585693,
					0.8000097274780273,
					-0.20705921947956085,
					-0.37205275893211365,
					-0.42271482944488525
				}
			}
		},
		heavy_attack_3 = {
			damage_window_start = 0.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_profile_left = "light_slashing_smiter_dual",
			damage_window_end = 0.37,
			impact_sound_event = "axe_1h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 0.75,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 0.75,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "shake_hit"
			},
			baked_sweep_right = {
				{
					0.21666666666666667,
					-0.25127696990966797,
					0.4386614263057709,
					0.013619661331176758,
					-0.21367570757865906,
					0.44313040375709534,
					-0.09736233204603195,
					-0.8651582598686218
				},
				{
					0.2477777777777778,
					-0.1595621109008789,
					0.5346193313598633,
					-0.030654191970825195,
					-0.021914327517151833,
					0.4899994134902954,
					0.0007981444941833615,
					-0.8714469075202942
				},
				{
					0.2788888888888889,
					0.10425281524658203,
					0.6737651824951172,
					-0.13260269165039062,
					0.3072558641433716,
					0.5000014901161194,
					0.22657166421413422,
					-0.7773400545120239
				},
				{
					0.31,
					0.3523521423339844,
					0.6432210206985474,
					-0.2361154556274414,
					0.5316553115844727,
					0.4295964539051056,
					0.3714684844017029,
					-0.62833172082901
				},
				{
					0.3411111111111111,
					0.49355506896972656,
					0.5191222429275513,
					-0.29625213146209717,
					0.6333901882171631,
					0.347278356552124,
					0.4540190100669861,
					-0.5216142535209656
				},
				{
					0.37222222222222223,
					0.5627498626708984,
					0.41099658608436584,
					-0.3172229528427124,
					0.6799503564834595,
					0.27720415592193604,
					0.5035404562950134,
					-0.45527181029319763
				},
				{
					0.4033333333333333,
					0.6018867492675781,
					0.3030528724193573,
					-0.3296085000038147,
					0.707848072052002,
					0.21481189131736755,
					0.5328847169876099,
					-0.4109024703502655
				}
			},
			baked_sweep_left = {
				{
					0.21666666666666667,
					0.2782878875732422,
					0.4643877446651459,
					0.0003236532211303711,
					-0.46452265977859497,
					-0.3345135450363159,
					0.6448476314544678,
					-0.5064494609832764
				},
				{
					0.2477777777777778,
					0.15956401824951172,
					0.5978052616119385,
					-0.06281578540802002,
					-0.2718716859817505,
					-0.3817704916000366,
					0.5938706994056702,
					-0.6539531350135803
				},
				{
					0.2788888888888889,
					-0.13571453094482422,
					0.7212172746658325,
					-0.19516777992248535,
					0.2324293702840805,
					-0.3622114360332489,
					0.19987136125564575,
					-0.880244791507721
				},
				{
					0.31,
					-0.31035709381103516,
					0.6410497426986694,
					-0.29266512393951416,
					0.46684032678604126,
					-0.23090004920959473,
					0.029314346611499786,
					-0.8531623482704163
				},
				{
					0.3411111111111111,
					-0.39137744903564453,
					0.48433104157447815,
					-0.36587095260620117,
					0.5312708616256714,
					-0.11715822666883469,
					0.05316154286265373,
					-0.8373763561248779
				},
				{
					0.37222222222222223,
					-0.45900630950927734,
					0.1556556224822998,
					-0.420998752117157,
					0.7213727831840515,
					-0.09119148552417755,
					-0.2177053838968277,
					-0.6510835289955139
				},
				{
					0.4033333333333333,
					-0.4726743698120117,
					-0.0103970468044281,
					-0.43327194452285767,
					0.7721967697143555,
					-0.08226581662893295,
					-0.3472817838191986,
					-0.5256803631782532
				}
			}
		},
		light_attack_back_right = {
			damage_window_start = 0.3,
			range_mod = 1,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "left",
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_diag_dual_L",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.42,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.9,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0.45,
					action = "action_one",
					end_time = 1,
					input = "action_one",
					sub_action = light_attack_back_right_chain_action
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.26666666666666666,
					0.2621755599975586,
					0.40735772252082825,
					0.03302872180938721,
					-0.7124361395835876,
					-0.28285181522369385,
					0.3318568766117096,
					-0.5498188138008118
				},
				{
					0.29777777777777775,
					0.17428874969482422,
					0.549044132232666,
					0.004819631576538086,
					-0.512001097202301,
					-0.39052560925483704,
					0.23122146725654602,
					-0.729301929473877
				},
				{
					0.3288888888888889,
					-0.07547283172607422,
					0.7370927333831787,
					-0.1330510377883911,
					0.11658374965190887,
					-0.4537122845649719,
					-0.052148256450891495,
					-0.8819489479064941
				},
				{
					0.36,
					-0.3530616760253906,
					0.6567826271057129,
					-0.3088022470474243,
					0.5983372926712036,
					-0.3847278952598572,
					-0.24812062084674835,
					-0.6575812697410583
				},
				{
					0.3911111111111111,
					-0.5126304626464844,
					0.40151169896125793,
					-0.427293062210083,
					0.7423480749130249,
					-0.36305803060531616,
					-0.2757231295108795,
					-0.491004079580307
				},
				{
					0.42222222222222217,
					-0.5762519836425781,
					0.0667773187160492,
					-0.48681938648223877,
					0.7701460719108582,
					-0.25637081265449524,
					-0.36773672699928284,
					-0.45378270745277405
				},
				{
					0.4533333333333333,
					-0.5546636581420898,
					-0.014841824769973755,
					-0.5060542225837708,
					0.7603158950805664,
					-0.17488016188144684,
					-0.4119926393032074,
					-0.4707428216934204
				}
			}
		},
		light_attack_back_left = {
			damage_window_start = 0.3,
			range_mod = 1,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_diag_dual_L",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.48,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0.45,
					action = "action_one",
					end_time = 1,
					input = "action_one",
					sub_action = light_attack_back_left_chain_action
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.26666666666666666,
					-0.2818422317504883,
					0.1319391429424286,
					-0.00027954578399658203,
					-0.6016495823860168,
					0.4005645513534546,
					-0.4163641929626465,
					-0.5515493750572205
				},
				{
					0.30777777777777776,
					-0.2588376998901367,
					0.48694732785224915,
					0.026498079299926758,
					-0.25044387578964233,
					0.4921274185180664,
					-0.19237875938415527,
					-0.811220645904541
				},
				{
					0.34888888888888886,
					0.24597930908203125,
					0.8296149969100952,
					-0.20887815952301025,
					0.4955872893333435,
					0.3845566511154175,
					0.2431803196668625,
					-0.7398464679718018
				},
				{
					0.39,
					0.6002645492553711,
					0.6779481172561646,
					-0.4114980101585388,
					0.6848273873329163,
					0.288221538066864,
					0.33592066168785095,
					-0.578875720500946
				},
				{
					0.4311111111111111,
					0.7831001281738281,
					0.5109267234802246,
					-0.47933149337768555,
					0.7484959363937378,
					0.2232125848531723,
					0.40727880597114563,
					-0.4733434021472931
				},
				{
					0.4722222222222222,
					0.8726615905761719,
					0.3487319052219391,
					-0.47723889350891113,
					0.7639342546463013,
					0.18257509171962738,
					0.47021034359931946,
					-0.4024588167667389
				},
				{
					0.5133333333333333,
					0.9090642929077148,
					0.18557536602020264,
					-0.43493521213531494,
					0.7530843615531921,
					0.15206903219223022,
					0.5321638584136963,
					-0.3557254672050476
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.26,
			range_mod = 1.05,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "right",
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_diag_dual_L",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.4,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0.4,
					action = "action_one",
					end_time = 1,
					input = "action_one",
					sub_action = light_attack_left_chain_action
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.22666666666666668,
					0.45981693267822266,
					0.5592590570449829,
					0.06331300735473633,
					-0.2059432566165924,
					-0.3390442132949829,
					0.12526990473270416,
					-0.9093645215034485
				},
				{
					0.2611111111111111,
					0.3577852249145508,
					0.6240154504776001,
					-0.009106040000915527,
					-0.09429479390382767,
					-0.3695113956928253,
					0.05498082935810089,
					-0.9227930307388306
				},
				{
					0.29555555555555557,
					0.0967559814453125,
					0.7200695276260376,
					-0.16147351264953613,
					0.3348773121833801,
					-0.40308377146720886,
					-0.16304107010364532,
					-0.8359415531158447
				},
				{
					0.33,
					-0.24341201782226562,
					0.5992468595504761,
					-0.299075722694397,
					0.7538997530937195,
					-0.23207297921180725,
					-0.41705965995788574,
					-0.45148488879203796
				},
				{
					0.36444444444444446,
					-0.38533496856689453,
					0.2986496388912201,
					-0.3064103126525879,
					0.8524529933929443,
					-0.014746997505426407,
					-0.49950405955314636,
					-0.15362998843193054
				},
				{
					0.3988888888888889,
					-0.43073272705078125,
					0.12271857261657715,
					-0.311498761177063,
					0.8538385033607483,
					0.07422111928462982,
					-0.5146225094795227,
					-0.02479545772075653
				},
				{
					0.43333333333333335,
					-0.42133331298828125,
					0.057805269956588745,
					-0.33198899030685425,
					0.8481127619743347,
					0.07337644696235657,
					-0.5246869921684265,
					-0.00492508802562952
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.24,
			range_mod = 1.05,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "left",
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_diag_dual_L",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.42,
			impact_sound_event = "axe_1h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.05,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					start_time = 0.45,
					action = "action_one",
					end_time = 1,
					input = "action_one",
					sub_action = light_attack_right_chain_action
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep = {
				{
					0.20666666666666667,
					-0.3678121566772461,
					0.4105457365512848,
					0.10070717334747314,
					-0.4323253333568573,
					0.37994712591171265,
					-0.1418723165988922,
					-0.8053615689277649
				},
				{
					0.24777777777777776,
					-0.34998130798339844,
					0.47290632128715515,
					0.0780947208404541,
					-0.3818146884441376,
					0.4131992757320404,
					-0.16472119092941284,
					-0.8101548552513123
				},
				{
					0.28888888888888886,
					-0.1515960693359375,
					0.6224979162216187,
					0.015857458114624023,
					0.09859520196914673,
					0.3336711823940277,
					0.15029644966125488,
					-0.9253937005996704
				},
				{
					0.32999999999999996,
					0.3379678726196289,
					0.5189094543457031,
					-0.23441171646118164,
					0.6916812658309937,
					0.19135531783103943,
					0.4776756465435028,
					-0.5067407488822937
				},
				{
					0.37111111111111106,
					0.5349454879760742,
					0.2748745381832123,
					-0.3725314736366272,
					0.8144258260726929,
					0.08500120043754578,
					0.5580123662948608,
					-0.13456475734710693
				},
				{
					0.41222222222222216,
					0.4956197738647461,
					0.25986626744270325,
					-0.40084409713745117,
					0.8158562183380127,
					0.03446656093001366,
					0.5759561061859131,
					0.038279205560684204
				},
				{
					0.4533333333333333,
					0.4357728958129883,
					0.25340166687965393,
					-0.4254559278488159,
					0.7976114153862,
					0.03974628821015358,
					0.571377158164978,
					0.18911483883857727
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.15,
			range_mod = 1.05,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_sword_1h",
			damage_profile_left = "light_slashing_smiter_dual_bopp",
			damage_window_end = 0.25,
			impact_sound_event = "axe_1h_hit",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_slashing_smiter_dual_bopp",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 0.8,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.45,
					action = "action_one",
					end_time = 1,
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
					start_time = 0.45,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "shake_hit"
			},
			impact_axis = Vector3Box(0, 0, 1),
			baked_sweep_right = {
				{
					0.11666666666666667,
					0.069488525390625,
					0.3930821120738983,
					0.1820770502090454,
					-0.4213496446609497,
					0.0655088871717453,
					0.08426084369421005,
					-0.900596022605896
				},
				{
					0.14444444444444443,
					0.08718585968017578,
					0.46456459164619446,
					0.1596163511276245,
					-0.13596732914447784,
					-0.024861132726073265,
					0.1551389992237091,
					-0.9781752228736877
				},
				{
					0.17222222222222222,
					0.09003639221191406,
					0.5841156244277954,
					-0.020306110382080078,
					0.41208335757255554,
					-0.07677217572927475,
					0.005165729206055403,
					-0.9078913331031799
				},
				{
					0.2,
					0.07197093963623047,
					0.6795880794525146,
					-0.16673636436462402,
					0.6655995845794678,
					-0.04366239160299301,
					-0.033580146729946136,
					-0.7442736029624939
				},
				{
					0.22777777777777777,
					0.06752586364746094,
					0.6778186559677124,
					-0.3245853781700134,
					0.7557472586631775,
					-0.05285021662712097,
					-0.05853281170129776,
					-0.6500975489616394
				},
				{
					0.25555555555555554,
					0.07218551635742188,
					0.5829885005950928,
					-0.5514176487922668,
					0.8357394933700562,
					-0.018138976767659187,
					-0.058612558990716934,
					-0.545687735080719
				},
				{
					0.2833333333333333,
					0.13320541381835938,
					0.3728419840335846,
					-0.7472038269042969,
					0.8793743252754211,
					0.015139274299144745,
					0.04753914102911949,
					-0.47350993752479553
				}
			},
			baked_sweep_left = {
				{
					0.11666666666666667,
					-0.25020408630371094,
					0.1997722089290619,
					0.23025262355804443,
					-0.4550740718841553,
					0.10765039175748825,
					-0.045053690671920776,
					-0.8827735781669617
				},
				{
					0.14444444444444443,
					-0.2686433792114258,
					0.24974289536476135,
					0.1711972951889038,
					-0.4543502628803253,
					0.2238570600748062,
					-0.10981801152229309,
					-0.8552156686782837
				},
				{
					0.17222222222222222,
					-0.1758136749267578,
					0.4629117548465729,
					0.07120609283447266,
					-0.31413358449935913,
					0.13823837041854858,
					0.004798284266144037,
					-0.939248263835907
				},
				{
					0.2,
					-0.14138031005859375,
					0.6883893013000488,
					-0.23610615730285645,
					0.4612760841846466,
					0.07001012563705444,
					0.07897954434156418,
					-0.8809570074081421
				},
				{
					0.22777777777777777,
					-0.16327571868896484,
					0.5802057981491089,
					-0.5077384114265442,
					0.8560749292373657,
					-0.015441500581800938,
					0.07410864531993866,
					-0.5112781524658203
				},
				{
					0.25555555555555554,
					-0.193756103515625,
					0.36037567257881165,
					-0.6669842004776001,
					0.8806235790252686,
					-0.11680147051811218,
					0.06994866579771042,
					-0.4538355767726898
				},
				{
					0.2833333333333333,
					-0.1986408233642578,
					0.3060527741909027,
					-0.6857901811599731,
					0.8890352249145508,
					-0.17120574414730072,
					0.08628104627132416,
					-0.41576510667800903
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
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.3,
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
					start_time = 0.3,
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
					external_multiplier = 0.85,
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
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.left_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.left
weapon_template.display_unit = "units/weapons/weapon_display/display_dual_axes"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "AXE_1H"
weapon_template.max_fatigue_points = 4
weapon_template.dodge_count = 6
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_1h_block_wood"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.25
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.25
	}
}
weapon_template.wield_anim = "to_dual_axes"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/dual_axes"
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = false,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
		arc = 0
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0,
	target_node = "j_neck",
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 6,
		[DamageTypes.STAGGER] = 0,
		[DamageTypes.DAMAGE] = 4
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 3,
		[DamageTypes.CLEAVE] = 7,
		[DamageTypes.SPEED] = 1,
		[DamageTypes.STAGGER] = 7,
		[DamageTypes.DAMAGE] = 2
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_high_damage",
	"weapon_keyword_fast_attacks",
	"weapon_keyword_armour_piercing"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_2"
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
weapon_template.wwise_dep_left_hand = {
	"wwise/one_handed_axes"
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_axes"
}

return {
	dual_wield_axes_template_1 = table.clone(weapon_template)
}
