return function ()
	define_rule({
		name = "ebb_a_gameplay_running_towards_players",
		response = "ebb_a_gameplay_running_towards_players",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				5
			},
			{
				"faction_memory",
				"time_since_beastmen_bestigor",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_beastmen_bestigor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_bardin_present",
		response = "ebb_gameplay_bardin_present",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_kerillian_present",
		response = "ebb_gameplay_kerillian_present",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_kruber_present",
		response = "ebb_gameplay_kruber_present",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_no_damage_taunt",
		response = "ebb_gameplay_no_damage_taunt",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"no_damage_taunt_player"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigot_taunt",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigot_taunt",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_saltzpyre_present",
		response = "ebb_gameplay_saltzpyre_present",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebb_gameplay_sienna_present",
		response = "ebb_gameplay_sienna_present",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_target_changed"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_bestigor"
			},
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_bestigor_targeting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebg_alerted",
		response = "ebg_alerted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"alerted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_gor"
			},
			{
				"faction_memory",
				"time_since_gor_alerted",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_gor_alerted",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebg_gameplay_dogpile_shouts",
		response = "ebg_gameplay_dogpile_shouts",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"shouting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_gor"
			},
			{
				"faction_memory",
				"time_since_gor_shout",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_gor_shout",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebg_gameplay_flanking_players",
		response = "ebg_gameplay_flanking_players",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"flanking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_gor"
			},
			{
				"faction_memory",
				"time_since_gor_flanking",
				OP.TIMEDIFF,
				OP.GT,
				7
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_gor_flanking",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebg_gameplay_running_towards_players",
		response = "ebg_gameplay_running_towards_players",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_gor"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				6
			},
			{
				"faction_memory",
				"time_since_gor_running",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_gor_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebu_gameplay_dogpile_shouts",
		response = "ebu_gameplay_dogpile_shouts",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"shouting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			},
			{
				"faction_memory",
				"time_since_beastmen_ungor",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_beastmen_ungor",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebu_gameplay_flanking_players",
		response = "ebu_gameplay_flanking_players",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"flanking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			},
			{
				"faction_memory",
				"time_since_ungor_flanking",
				OP.TIMEDIFF,
				OP.GT,
				7
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ungor_flanking",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ebu_gameplay_ranged_fire_in_group",
		name = "ebu_gameplay_ranged_fire_in_group",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"fire_in_group"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			}
		}
	})
	define_rule({
		name = "ebu_gameplay_running_in_horde",
		response = "ebu_gameplay_running_in_horde",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				10
			},
			{
				"query_context",
				"num_units",
				OP.GT,
				3
			},
			{
				"faction_memory",
				"time_since_ungor_running",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ungor_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebu_gameplay_running_towards_players",
		response = "ebu_gameplay_running_towards_players",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"running"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			},
			{
				"query_context",
				"distance",
				OP.GT,
				5
			},
			{
				"faction_memory",
				"time_since_ungor_running",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_ungor_running",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebu_gameplay_taunt",
		response = "ebu_gameplay_taunt",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"taunt"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"beastmen_ungor"
			},
			{
				"faction_memory",
				"time_since_beastmen_ungor_taunt",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_beastmen_ungor_taunt",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		ebb_a_gameplay_running_towards_players = {
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "enemy_beastmen_vo",
			sound_events_n = 11,
			category = "enemy_basic_prio",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_a_gameplay_running_towards_players_01",
				"ebb_a_gameplay_running_towards_players_02",
				"ebb_a_gameplay_running_towards_players_03",
				"ebb_a_gameplay_running_towards_players_04",
				"ebb_a_gameplay_running_towards_players_05",
				"ebb_a_gameplay_running_towards_players_07",
				"ebb_a_gameplay_running_towards_players_09",
				"ebb_a_gameplay_running_towards_players_13",
				"ebb_a_gameplay_running_towards_players_14",
				"ebb_a_gameplay_running_towards_players_15",
				"ebb_a_gameplay_running_towards_players_16"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_a_gameplay_running_towards_players_01",
				"ebb_a_gameplay_running_towards_players_02",
				"ebb_a_gameplay_running_towards_players_03",
				"ebb_a_gameplay_running_towards_players_04",
				"ebb_a_gameplay_running_towards_players_05",
				"ebb_a_gameplay_running_towards_players_07",
				"ebb_a_gameplay_running_towards_players_09",
				"ebb_a_gameplay_running_towards_players_13",
				"ebb_a_gameplay_running_towards_players_14",
				"ebb_a_gameplay_running_towards_players_15",
				"ebb_a_gameplay_running_towards_players_16"
			},
			sound_events_duration = {
				2.2799999713898,
				2.4115417003632,
				2.1266875267029,
				2.3192915916443,
				2.3587291240692,
				3.8849999904633,
				3.655312538147,
				3.6507916450501,
				2.844687461853,
				1.9252500534058,
				3.821249961853
			}
		},
		ebb_gameplay_bardin_present = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "enemy_beastmen_vo",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_bardin_present_01",
				"ebb_gameplay_bardin_present_02",
				"ebb_gameplay_bardin_present_03",
				"ebb_gameplay_bardin_present_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_bardin_present_01",
				"ebb_gameplay_bardin_present_02",
				"ebb_gameplay_bardin_present_03",
				"ebb_gameplay_bardin_present_04"
			},
			sound_events_duration = {
				2.8539999723434,
				2.9165832996368,
				1.9036145806313,
				3.3841770887375
			}
		},
		ebb_gameplay_kerillian_present = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "enemy_beastmen_vo",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_kerillian_present_01",
				"ebb_gameplay_kerillian_present_02",
				"ebb_gameplay_kerillian_present_03",
				"ebb_gameplay_kerillian_present_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_kerillian_present_01",
				"ebb_gameplay_kerillian_present_02",
				"ebb_gameplay_kerillian_present_03",
				"ebb_gameplay_kerillian_present_04"
			},
			sound_events_duration = {
				1.861968755722,
				2.6323125362396,
				2.6676458120346,
				2.4882603883743
			}
		},
		ebb_gameplay_kruber_present = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "enemy_beastmen_vo",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_kruber_present_01",
				"ebb_gameplay_kruber_present_02",
				"ebb_gameplay_kruber_present_03",
				"ebb_gameplay_kruber_present_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_kruber_present_01",
				"ebb_gameplay_kruber_present_02",
				"ebb_gameplay_kruber_present_03",
				"ebb_gameplay_kruber_present_04"
			},
			sound_events_duration = {
				3.8537603616715,
				3.7761042118073,
				3.856166601181,
				3.729749917984
			}
		},
		ebb_gameplay_no_damage_taunt = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "enemy_beastmen_vo",
			sound_events_n = 10,
			category = "enemy_high_prio",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_no_damage_taunt_01",
				"ebb_gameplay_no_damage_taunt_02",
				"ebb_gameplay_no_damage_taunt_03",
				"ebb_gameplay_no_damage_taunt_04",
				"ebb_gameplay_no_damage_taunt_05",
				"ebb_gameplay_no_damage_taunt_06",
				"ebb_gameplay_no_damage_taunt_07",
				"ebb_gameplay_no_damage_taunt_08",
				"ebb_gameplay_no_damage_taunt_09",
				"ebb_gameplay_no_damage_taunt_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_no_damage_taunt_01",
				"ebb_gameplay_no_damage_taunt_02",
				"ebb_gameplay_no_damage_taunt_03",
				"ebb_gameplay_no_damage_taunt_04",
				"ebb_gameplay_no_damage_taunt_05",
				"ebb_gameplay_no_damage_taunt_06",
				"ebb_gameplay_no_damage_taunt_07",
				"ebb_gameplay_no_damage_taunt_08",
				"ebb_gameplay_no_damage_taunt_09",
				"ebb_gameplay_no_damage_taunt_10"
			},
			sound_events_duration = {
				1.6967812180519,
				2.0472603440285,
				1.7806562185288,
				0.94986456632614,
				1.641020834446,
				1.5754583477974,
				1.7265937924385,
				2.1183958053589,
				1.9674166440964,
				2.3748958110809
			}
		},
		ebb_gameplay_saltzpyre_present = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "enemy_beastmen_vo",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_saltzpyre_present_01",
				"ebb_gameplay_saltzpyre_present_02",
				"ebb_gameplay_saltzpyre_present_03",
				"ebb_gameplay_saltzpyre_present_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_saltzpyre_present_01",
				"ebb_gameplay_saltzpyre_present_02",
				"ebb_gameplay_saltzpyre_present_03",
				"ebb_gameplay_saltzpyre_present_04"
			},
			sound_events_duration = {
				3.3451353311539,
				3.1532292366028,
				2.6344165802002,
				3.9670209884644
			}
		},
		ebb_gameplay_sienna_present = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "enemy_beastmen_vo",
			sound_events_n = 4,
			category = "enemy_high_prio",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebb_gameplay_sienna_present_01",
				"ebb_gameplay_sienna_present_02",
				"ebb_gameplay_sienna_present_03",
				"ebb_gameplay_sienna_present_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ebb_gameplay_sienna_present_01",
				"ebb_gameplay_sienna_present_02",
				"ebb_gameplay_sienna_present_03",
				"ebb_gameplay_sienna_present_04"
			},
			sound_events_duration = {
				1.8499999642372,
				3.9008123874664,
				3.2714270353317,
				2.5762708187103
			}
		},
		ebg_alerted = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "enemy_beastmen_vo",
			category = "enemy_basic_prio",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_shout"
			},
			face_animations = {
				[1] = "face_angry"
			},
			localization_strings = {
				[1] = "play_enemy_gor_alerted_general_vce"
			},
			sound_events = {
				[1] = "play_enemy_gor_alerted_general_vce"
			},
			sound_events_duration = {
				[1] = 1.5603438317776
			}
		},
		ebg_gameplay_dogpile_shouts = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "enemy_beastmen_vo",
			sound_events_n = 20,
			category = "enemy_basic_prio",
			dialogue_animations_n = 20,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebg_gameplay_dogpile_shouts_01",
				"ebg_gameplay_dogpile_shouts_02",
				"ebg_gameplay_dogpile_shouts_03",
				"ebg_gameplay_dogpile_shouts_04",
				"ebg_gameplay_dogpile_shouts_05",
				"ebg_gameplay_dogpile_shouts_06",
				"ebg_gameplay_dogpile_shouts_07",
				"ebg_gameplay_dogpile_shouts_08",
				"ebg_gameplay_dogpile_shouts_09",
				"ebg_gameplay_dogpile_shouts_10",
				"ebg_gameplay_dogpile_shouts_11",
				"ebg_gameplay_dogpile_shouts_12",
				"ebg_gameplay_dogpile_shouts_13",
				"ebg_gameplay_dogpile_shouts_14",
				"ebg_gameplay_dogpile_shouts_15",
				"ebg_gameplay_dogpile_shouts_16",
				"ebg_gameplay_dogpile_shouts_17",
				"ebg_gameplay_dogpile_shouts_18",
				"ebg_gameplay_dogpile_shouts_19",
				"ebg_gameplay_dogpile_shouts_20"
			},
			randomize_indexes = {},
			sound_events = {
				"ebg_gameplay_dogpile_shouts_01",
				"ebg_gameplay_dogpile_shouts_02",
				"ebg_gameplay_dogpile_shouts_03",
				"ebg_gameplay_dogpile_shouts_04",
				"ebg_gameplay_dogpile_shouts_05",
				"ebg_gameplay_dogpile_shouts_06",
				"ebg_gameplay_dogpile_shouts_07",
				"ebg_gameplay_dogpile_shouts_08",
				"ebg_gameplay_dogpile_shouts_09",
				"ebg_gameplay_dogpile_shouts_10",
				"ebg_gameplay_dogpile_shouts_11",
				"ebg_gameplay_dogpile_shouts_12",
				"ebg_gameplay_dogpile_shouts_13",
				"ebg_gameplay_dogpile_shouts_14",
				"ebg_gameplay_dogpile_shouts_15",
				"ebg_gameplay_dogpile_shouts_16",
				"ebg_gameplay_dogpile_shouts_17",
				"ebg_gameplay_dogpile_shouts_18",
				"ebg_gameplay_dogpile_shouts_19",
				"ebg_gameplay_dogpile_shouts_20"
			},
			sound_events_duration = {
				2.0971770882607,
				2.0713021159172,
				2.1868957877159,
				2.4410416483879,
				1.9654583334923,
				2.0844791531563,
				2.5678541660309,
				1.9982187747955,
				1.786072909832,
				1.8983750343323,
				1.1008229255676,
				1.3561145663261,
				1.5993750095367,
				1.8292708396912,
				1.2561979293823,
				1.4611353874207,
				1.9950625300407,
				2.3577083349228,
				2.5504478216171,
				3.4014792442322
			}
		},
		ebg_gameplay_flanking_players = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "enemy_beastmen_vo",
			sound_events_n = 10,
			category = "enemy_basic_prio",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebg_gameplay_flanking_players_01",
				"ebg_gameplay_flanking_players_02",
				"ebg_gameplay_flanking_players_03",
				"ebg_gameplay_flanking_players_04",
				"ebg_gameplay_flanking_players_05",
				"ebg_gameplay_flanking_players_06",
				"ebg_gameplay_flanking_players_07",
				"ebg_gameplay_flanking_players_08",
				"ebg_gameplay_flanking_players_09",
				"ebg_gameplay_flanking_players_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebg_gameplay_flanking_players_01",
				"ebg_gameplay_flanking_players_02",
				"ebg_gameplay_flanking_players_03",
				"ebg_gameplay_flanking_players_04",
				"ebg_gameplay_flanking_players_05",
				"ebg_gameplay_flanking_players_06",
				"ebg_gameplay_flanking_players_07",
				"ebg_gameplay_flanking_players_08",
				"ebg_gameplay_flanking_players_09",
				"ebg_gameplay_flanking_players_10"
			},
			sound_events_duration = {
				1.2517743110657,
				1.3295504748821,
				1.4994792938232,
				1.4452602863312,
				1.5134925842285,
				1.5207923650742,
				1.4993743896484,
				2.4036979675293,
				1.5474333763123,
				2.0397373437882
			}
		},
		ebg_gameplay_running_towards_players = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "enemy_beastmen_vo",
			sound_events_n = 20,
			category = "enemy_basic_prio",
			dialogue_animations_n = 20,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebg_gameplay_running_towards_players_01",
				"ebg_gameplay_running_towards_players_02",
				"ebg_gameplay_running_towards_players_03",
				"ebg_gameplay_running_towards_players_04",
				"ebg_gameplay_running_towards_players_05",
				"ebg_gameplay_running_towards_players_06",
				"ebg_gameplay_running_towards_players_07",
				"ebg_gameplay_running_towards_players_08",
				"ebg_gameplay_running_towards_players_09",
				"ebg_gameplay_running_towards_players_10",
				"ebg_gameplay_running_towards_players_11",
				"ebg_gameplay_running_towards_players_12",
				"ebg_gameplay_running_towards_players_13",
				"ebg_gameplay_running_towards_players_14",
				"ebg_gameplay_running_towards_players_15",
				"ebg_gameplay_running_towards_players_16",
				"ebg_gameplay_running_towards_players_17",
				"ebg_gameplay_running_towards_players_18",
				"ebg_gameplay_running_towards_players_19",
				"ebg_gameplay_running_towards_players_20"
			},
			randomize_indexes = {},
			sound_events = {
				"ebg_gameplay_running_towards_players_01",
				"ebg_gameplay_running_towards_players_02",
				"ebg_gameplay_running_towards_players_03",
				"ebg_gameplay_running_towards_players_04",
				"ebg_gameplay_running_towards_players_05",
				"ebg_gameplay_running_towards_players_06",
				"ebg_gameplay_running_towards_players_07",
				"ebg_gameplay_running_towards_players_08",
				"ebg_gameplay_running_towards_players_09",
				"ebg_gameplay_running_towards_players_10",
				"ebg_gameplay_running_towards_players_11",
				"ebg_gameplay_running_towards_players_12",
				"ebg_gameplay_running_towards_players_13",
				"ebg_gameplay_running_towards_players_14",
				"ebg_gameplay_running_towards_players_15",
				"ebg_gameplay_running_towards_players_16",
				"ebg_gameplay_running_towards_players_17",
				"ebg_gameplay_running_towards_players_18",
				"ebg_gameplay_running_towards_players_19",
				"ebg_gameplay_running_towards_players_20"
			},
			sound_events_duration = {
				0.81206181645393,
				1.1812461018562,
				1.0690148770809,
				1.5769417881966,
				1.9504245519638,
				1.9403129816055,
				1.5194813609123,
				0.9423480629921,
				1.2229791879654,
				1.8195936083794,
				2.1639404892921,
				2.0922197699547,
				1.304800182581,
				1.2098639905453,
				1.5861641764641,
				0.91834050416946,
				1.3666924834251,
				1.4858169555664,
				2.1752290129662,
				2.2362593412399
			}
		},
		ebu_gameplay_dogpile_shouts = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "enemy_beastmen_vo",
			sound_events_n = 20,
			category = "enemy_basic_prio",
			dialogue_animations_n = 20,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_dogpile_shouts_01",
				"ebu_gameplay_dogpile_shouts_02",
				"ebu_gameplay_dogpile_shouts_03",
				"ebu_gameplay_dogpile_shouts_04",
				"ebu_gameplay_dogpile_shouts_05",
				"ebu_gameplay_dogpile_shouts_06",
				"ebu_gameplay_dogpile_shouts_07",
				"ebu_gameplay_dogpile_shouts_08",
				"ebu_gameplay_dogpile_shouts_09",
				"ebu_gameplay_dogpile_shouts_10",
				"ebu_gameplay_dogpile_shouts_11",
				"ebu_gameplay_dogpile_shouts_12",
				"ebu_gameplay_dogpile_shouts_13",
				"ebu_gameplay_dogpile_shouts_14",
				"ebu_gameplay_dogpile_shouts_15",
				"ebu_gameplay_dogpile_shouts_16",
				"ebu_gameplay_dogpile_shouts_17",
				"ebu_gameplay_dogpile_shouts_18",
				"ebu_gameplay_dogpile_shouts_19",
				"ebu_gameplay_dogpile_shouts_20"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_dogpile_shouts_01",
				"ebu_gameplay_dogpile_shouts_02",
				"ebu_gameplay_dogpile_shouts_03",
				"ebu_gameplay_dogpile_shouts_04",
				"ebu_gameplay_dogpile_shouts_05",
				"ebu_gameplay_dogpile_shouts_06",
				"ebu_gameplay_dogpile_shouts_07",
				"ebu_gameplay_dogpile_shouts_08",
				"ebu_gameplay_dogpile_shouts_09",
				"ebu_gameplay_dogpile_shouts_10",
				"ebu_gameplay_dogpile_shouts_11",
				"ebu_gameplay_dogpile_shouts_12",
				"ebu_gameplay_dogpile_shouts_13",
				"ebu_gameplay_dogpile_shouts_14",
				"ebu_gameplay_dogpile_shouts_15",
				"ebu_gameplay_dogpile_shouts_16",
				"ebu_gameplay_dogpile_shouts_17",
				"ebu_gameplay_dogpile_shouts_18",
				"ebu_gameplay_dogpile_shouts_19",
				"ebu_gameplay_dogpile_shouts_20"
			},
			sound_events_duration = {
				1.9426140785217,
				1.9121361374855,
				2.4714251756668,
				2.379315674305,
				2.3866775631905,
				3.2835792303085,
				4.2228572368622,
				2.4388943314552,
				2.7383106946945,
				2.3343193531036,
				1.9188398122788,
				2.2711064815521,
				2.3045286536217,
				2.1298300623894,
				2.3155146241188,
				2.3451387882233,
				2.0970534086227,
				2.3463319540024,
				2.4110250473023,
				3.0241831541061
			}
		},
		ebu_gameplay_flanking_players = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "enemy_beastmen_vo",
			sound_events_n = 10,
			category = "enemy_basic_prio",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_flanking_players_01",
				"ebu_gameplay_flanking_players_02",
				"ebu_gameplay_flanking_players_03",
				"ebu_gameplay_flanking_players_04",
				"ebu_gameplay_flanking_players_05",
				"ebu_gameplay_flanking_players_06",
				"ebu_gameplay_flanking_players_07",
				"ebu_gameplay_flanking_players_08",
				"ebu_gameplay_flanking_players_09",
				"ebu_gameplay_flanking_players_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_flanking_players_01",
				"ebu_gameplay_flanking_players_02",
				"ebu_gameplay_flanking_players_03",
				"ebu_gameplay_flanking_players_04",
				"ebu_gameplay_flanking_players_05",
				"ebu_gameplay_flanking_players_06",
				"ebu_gameplay_flanking_players_07",
				"ebu_gameplay_flanking_players_08",
				"ebu_gameplay_flanking_players_09",
				"ebu_gameplay_flanking_players_10"
			},
			sound_events_duration = {
				2.1371386051178,
				1.4505363702774,
				1.665587246418,
				2.0247306227684,
				1.553717315197,
				2.2152251005173,
				1.4774923324585,
				1.8883342146874,
				1.5399668812752,
				2.3583959341049
			}
		},
		ebu_gameplay_ranged_fire_in_group = {
			randomize_indexes_n = 0,
			face_animations_n = 15,
			database = "enemy_beastmen_vo",
			sound_events_n = 15,
			category = "enemy_high_prio",
			dialogue_animations_n = 15,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_ranged_fire_in_group_01",
				"ebu_gameplay_ranged_fire_in_group_02",
				"ebu_gameplay_ranged_fire_in_group_03",
				"ebu_gameplay_ranged_fire_in_group_04",
				"ebu_gameplay_ranged_fire_in_group_05",
				"ebu_gameplay_ranged_fire_in_group_06",
				"ebu_gameplay_ranged_fire_in_group_07",
				"ebu_gameplay_ranged_fire_in_group_08",
				"ebu_gameplay_ranged_fire_in_group_09",
				"ebu_gameplay_ranged_fire_in_group_10",
				"ebu_gameplay_ranged_fire_in_group_11",
				"ebu_gameplay_ranged_fire_in_group_12",
				"ebu_gameplay_ranged_fire_in_group_13",
				"ebu_gameplay_ranged_fire_in_group_14",
				"ebu_gameplay_ranged_fire_in_group_15"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_ranged_fire_in_group_01",
				"ebu_gameplay_ranged_fire_in_group_02",
				"ebu_gameplay_ranged_fire_in_group_03",
				"ebu_gameplay_ranged_fire_in_group_04",
				"ebu_gameplay_ranged_fire_in_group_05",
				"ebu_gameplay_ranged_fire_in_group_06",
				"ebu_gameplay_ranged_fire_in_group_07",
				"ebu_gameplay_ranged_fire_in_group_08",
				"ebu_gameplay_ranged_fire_in_group_09",
				"ebu_gameplay_ranged_fire_in_group_10",
				"ebu_gameplay_ranged_fire_in_group_11",
				"ebu_gameplay_ranged_fire_in_group_12",
				"ebu_gameplay_ranged_fire_in_group_13",
				"ebu_gameplay_ranged_fire_in_group_14",
				"ebu_gameplay_ranged_fire_in_group_15"
			},
			sound_events_duration = {
				1.9534739851952,
				2.2551728487015,
				2.389484167099,
				1.3968713879585,
				2.0356287360191,
				2.2368147373199,
				2.2548187971115,
				2.3321205377579,
				2.1802526116371,
				1.977151632309,
				2.4246696233749,
				1.8894696235657,
				1.977577149868,
				1.0482275485992,
				1.3239133358002
			}
		},
		ebu_gameplay_running_in_horde = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "enemy_beastmen_vo",
			sound_events_n = 10,
			category = "enemy_basic_prio",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_running_in_horde_01",
				"ebu_gameplay_running_in_horde_02",
				"ebu_gameplay_running_in_horde_03",
				"ebu_gameplay_running_in_horde_04",
				"ebu_gameplay_running_in_horde_05",
				"ebu_gameplay_running_in_horde_06",
				"ebu_gameplay_running_in_horde_07",
				"ebu_gameplay_running_in_horde_08",
				"ebu_gameplay_running_in_horde_09",
				"ebu_gameplay_running_in_horde_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_running_in_horde_01",
				"ebu_gameplay_running_in_horde_02",
				"ebu_gameplay_running_in_horde_03",
				"ebu_gameplay_running_in_horde_04",
				"ebu_gameplay_running_in_horde_05",
				"ebu_gameplay_running_in_horde_06",
				"ebu_gameplay_running_in_horde_07",
				"ebu_gameplay_running_in_horde_08",
				"ebu_gameplay_running_in_horde_09",
				"ebu_gameplay_running_in_horde_10"
			},
			sound_events_duration = {
				1.8748669624329,
				0.93134850263596,
				1.6477636694908,
				1.2283250689507,
				1.7541610598564,
				1.6086062788963,
				2.1226693987846,
				1.3727503418922,
				1.8590416312218,
				2.2928649187088
			}
		},
		ebu_gameplay_running_towards_players = {
			randomize_indexes_n = 0,
			face_animations_n = 19,
			database = "enemy_beastmen_vo",
			sound_events_n = 19,
			category = "enemy_basic_prio",
			dialogue_animations_n = 19,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_running_towards_players_01",
				"ebu_gameplay_running_towards_players_02",
				"ebu_gameplay_running_towards_players_03",
				"ebu_gameplay_running_towards_players_04",
				"ebu_gameplay_running_towards_players_05",
				"ebu_gameplay_running_towards_players_06",
				"ebu_gameplay_running_towards_players_07",
				"ebu_gameplay_running_towards_players_08",
				"ebu_gameplay_running_towards_players_09",
				"ebu_gameplay_running_towards_players_10",
				"ebu_gameplay_running_towards_players_11",
				"ebu_gameplay_running_towards_players_12",
				"ebu_gameplay_running_towards_players_13",
				"ebu_gameplay_running_towards_players_14",
				"ebu_gameplay_running_towards_players_16",
				"ebu_gameplay_running_towards_players_17",
				"ebu_gameplay_running_towards_players_18",
				"ebu_gameplay_running_towards_players_19",
				"ebu_gameplay_running_towards_players_20"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_running_towards_players_01",
				"ebu_gameplay_running_towards_players_02",
				"ebu_gameplay_running_towards_players_03",
				"ebu_gameplay_running_towards_players_04",
				"ebu_gameplay_running_towards_players_05",
				"ebu_gameplay_running_towards_players_06",
				"ebu_gameplay_running_towards_players_07",
				"ebu_gameplay_running_towards_players_08",
				"ebu_gameplay_running_towards_players_09",
				"ebu_gameplay_running_towards_players_10",
				"ebu_gameplay_running_towards_players_11",
				"ebu_gameplay_running_towards_players_12",
				"ebu_gameplay_running_towards_players_13",
				"ebu_gameplay_running_towards_players_14",
				"ebu_gameplay_running_towards_players_16",
				"ebu_gameplay_running_towards_players_17",
				"ebu_gameplay_running_towards_players_18",
				"ebu_gameplay_running_towards_players_19",
				"ebu_gameplay_running_towards_players_20"
			},
			sound_events_duration = {
				1.2949503660202,
				1.9889738559723,
				2.4674404859543,
				2.2370032072067,
				2.4674588441849,
				2.0849791765213,
				1.853244304657,
				1.8117777705193,
				2.442173242569,
				2.4371546506882,
				2.2822785973549,
				2.9280549883842,
				1.3442802429199,
				1.5737510323525,
				1.0987058281899,
				1.4005897641182,
				1.6420783400536,
				1.7344158291817,
				1.6482338905334
			}
		},
		ebu_gameplay_taunt = {
			randomize_indexes_n = 0,
			face_animations_n = 20,
			database = "enemy_beastmen_vo",
			sound_events_n = 20,
			category = "enemy_basic_prio",
			dialogue_animations_n = 20,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"ebu_gameplay_dogpile_shouts_01",
				"ebu_gameplay_dogpile_shouts_02",
				"ebu_gameplay_dogpile_shouts_03",
				"ebu_gameplay_dogpile_shouts_04",
				"ebu_gameplay_dogpile_shouts_05",
				"ebu_gameplay_dogpile_shouts_06",
				"ebu_gameplay_dogpile_shouts_07",
				"ebu_gameplay_dogpile_shouts_08",
				"ebu_gameplay_dogpile_shouts_09",
				"ebu_gameplay_dogpile_shouts_10",
				"ebu_gameplay_dogpile_shouts_11",
				"ebu_gameplay_dogpile_shouts_12",
				"ebu_gameplay_dogpile_shouts_13",
				"ebu_gameplay_dogpile_shouts_14",
				"ebu_gameplay_dogpile_shouts_15",
				"ebu_gameplay_dogpile_shouts_16",
				"ebu_gameplay_dogpile_shouts_17",
				"ebu_gameplay_dogpile_shouts_18",
				"ebu_gameplay_dogpile_shouts_19",
				"ebu_gameplay_dogpile_shouts_20"
			},
			randomize_indexes = {},
			sound_events = {
				"ebu_gameplay_dogpile_shouts_01",
				"ebu_gameplay_dogpile_shouts_02",
				"ebu_gameplay_dogpile_shouts_03",
				"ebu_gameplay_dogpile_shouts_04",
				"ebu_gameplay_dogpile_shouts_05",
				"ebu_gameplay_dogpile_shouts_06",
				"ebu_gameplay_dogpile_shouts_07",
				"ebu_gameplay_dogpile_shouts_08",
				"ebu_gameplay_dogpile_shouts_09",
				"ebu_gameplay_dogpile_shouts_10",
				"ebu_gameplay_dogpile_shouts_11",
				"ebu_gameplay_dogpile_shouts_12",
				"ebu_gameplay_dogpile_shouts_13",
				"ebu_gameplay_dogpile_shouts_14",
				"ebu_gameplay_dogpile_shouts_15",
				"ebu_gameplay_dogpile_shouts_16",
				"ebu_gameplay_dogpile_shouts_17",
				"ebu_gameplay_dogpile_shouts_18",
				"ebu_gameplay_dogpile_shouts_19",
				"ebu_gameplay_dogpile_shouts_20"
			},
			sound_events_duration = {
				1.9426140785217,
				1.9121361374855,
				2.4714251756668,
				2.379315674305,
				2.3866775631905,
				3.2835792303085,
				4.2228572368622,
				2.4388943314552,
				2.7383106946945,
				2.3343193531036,
				1.9188398122788,
				2.2711064815521,
				2.3045286536217,
				2.1298300623894,
				2.3155146241188,
				2.3451387882233,
				2.0970534086227,
				2.3463319540024,
				2.4110250473023,
				3.0241831541061
			}
		}
	})
end
