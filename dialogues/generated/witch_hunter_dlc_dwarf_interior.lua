return function ()
	define_rule({
		name = "pwh_dummy_memory_trigger_end_event",
		response = "pwh_dummy_memory_trigger_end_event",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"dummy_memory_trigger_end_event"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"end_event_memory_trigger",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"end_event_memory_trigger",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_brewery_a",
		response = "pwh_dwarf_internal_brewery_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_brewery_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_brewery_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_brewery_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_brewery_speaking_tube_interact_one_a",
		response = "pwh_dwarf_internal_brewery_speaking_tube_interact_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_brewery_speaking_tube_interact_one_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_brewery_speaking_tube_interact_one_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_brewery_speaking_tube_interact_one_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_brewery_speaking_tube_interact_two_a",
		response = "pwh_dwarf_internal_brewery_speaking_tube_interact_two_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_brewery_speaking_tube_interact_two_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_brewery_speaking_tube_interact_two_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_brewery_speaking_tube_interact_two_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_dead_dwarfs",
		response = "pwh_dwarf_internal_dead_dwarfs",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_dead_dwarfs"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_dead_dwarfs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_dead_dwarfs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_dwarf_sign",
		response = "pwh_dwarf_internal_dwarf_sign",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_dwarf_sign"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_dwarf_sign",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_dwarf_sign",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_end_conversation_a",
		response = "pwh_dwarf_internal_end_conversation_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				4
			},
			{
				"user_context",
				"intensity",
				OP.LT,
				6
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				30
			},
			{
				"faction_memory",
				"dwarf_internal_mid_conversation_a",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_a",
				OP.NOT,
				"dwarf_internal_end_event_interact_a"
			},
			{
				"faction_memory",
				"end_event_memory_trigger",
				OP.NOT,
				"end_event_memory_trigger"
			},
			{
				"faction_memory",
				"dwarf_internal_end_conversation_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_end_conversation_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_end_event_interact_a",
		response = "pwh_dwarf_internal_end_event_interact_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_end_event_interact_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_end_event_interact_c",
		response = "pwh_dwarf_internal_end_event_interact_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_end_event_interact_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b",
		response = "pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_end_event_speaking_tube_PLAN_A_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_speaking_tube_PLAN_A_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_end_event_speaking_tube_PLAN_A_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_end_event_speaking_tube_PLAN_B",
		response = "pwh_dwarf_internal_end_event_speaking_tube_PLAN_B",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_end_event_speaking_tube_PLAN_B"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_speaking_tube_PLAN_B",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_end_event_speaking_tube_PLAN_B",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_engineer_reveal_b",
		response = "pwh_dwarf_internal_engineer_reveal_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_engineer_reveal_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"dwarf_internal_engineer_reveal_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_engineer_reveal_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_hasnt_improved",
		response = "pwh_dwarf_internal_hasnt_improved",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_hasnt_improved"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_hasnt_improved",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_hasnt_improved",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_massing_skaven_a",
		response = "pwh_dwarf_internal_massing_skaven_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_massing_skaven_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_massing_skaven_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_massing_skaven_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"dwarf_internal_conversation_memory",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_mid_conversation_bardin_c",
		response = "pwh_dwarf_internal_mid_conversation_bardin_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_mid_conversation_bardin_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"dwarf_internal_mid_conversation_bardin_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_mid_conversation_bardin_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_mid_conversation_no_bardin_a",
		response = "pwh_dwarf_internal_mid_conversation_no_bardin_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				0
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"user_context",
				"enemies_close",
				OP.LT,
				4
			},
			{
				"user_context",
				"intensity",
				OP.LT,
				4
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				20
			},
			{
				"faction_memory",
				"dwarf_internal_conversation_memory",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"dwarf_internal_end_event_interact_a",
				OP.NOT,
				"dwarf_internal_end_event_interact_a"
			},
			{
				"faction_memory",
				"end_event_memory_trigger",
				OP.NOT,
				"end_event_memory_trigger"
			},
			{
				"faction_memory",
				"dwarf_internal_mid_conversation_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_mid_conversation_a",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_skaven_works",
		response = "pwh_dwarf_internal_skaven_works",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_skaven_works"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"dwarf_internal_skaven_works",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_skaven_works",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_start_banter_a",
		response = "pwh_dwarf_internal_start_banter_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"dwarf_internal_start_banter_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_start_banter_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_start_banter_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pwh_dwarf_internal_start_banter_b",
		name = "pwh_dwarf_internal_start_banter_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_start_banter_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		response = "pwh_dwarf_internal_start_banter_c",
		name = "pwh_dwarf_internal_start_banter_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"dwarf_internal_start_banter_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_steam_clearing",
		response = "pwh_dwarf_internal_steam_clearing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_steam_clearing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_steam_clearing",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_steam_clearing",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"dwarf_internal_conversation_memory",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_still_a_maze",
		response = "pwh_dwarf_internal_still_a_maze",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_still_a_maze"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_still_a_maze",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_still_a_maze",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_dwarf_internal_valaya",
		response = "pwh_dwarf_internal_valaya",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"dwarf_internal_valaya"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"dwarf_internal_valaya",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"dwarf_internal_valaya",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_dummy_memory_trigger_end_event = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "witch_hunter_dlc_dwarf_interior",
			category = "special_occasion",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm"
			},
			localization_strings = {
				[1] = "dummy"
			},
			sound_events = {
				[1] = "dummy"
			},
			sound_events_duration = {
				[1] = 0.20000000298023
			}
		},
		pwh_dwarf_internal_brewery_a = {
			override_awareness = "dwarf_internal_brewery_a_done",
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_brewery_a_01",
				"pwh_dwarf_internal_brewery_a_02",
				"pwh_dwarf_internal_brewery_a_03",
				"pwh_dwarf_internal_brewery_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_brewery_a_01",
				"pwh_dwarf_internal_brewery_a_02",
				"pwh_dwarf_internal_brewery_a_03",
				"pwh_dwarf_internal_brewery_a_04"
			},
			sound_events_duration = {
				7.5429792404175,
				4.1589789390564,
				5.6609792709351,
				4.147979259491
			}
		},
		pwh_dwarf_internal_brewery_speaking_tube_interact_one_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_01",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_02",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_03",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_01",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_02",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_03",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_one_a_04"
			},
			sound_events_duration = {
				3.7849791049957,
				5.3619790077209,
				4.9109792709351,
				6.2049789428711
			}
		},
		pwh_dwarf_internal_brewery_speaking_tube_interact_two_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_01",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_02",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_03",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_01",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_02",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_03",
				"pwh_dwarf_internal_brewery_speaking_tube_interact_two_a_04"
			},
			sound_events_duration = {
				6.0120000839233,
				5.0429792404175,
				7.0249791145325,
				6.3909792900085
			}
		},
		pwh_dwarf_internal_dead_dwarfs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_dead_dwarfs_01",
				"pwh_dwarf_internal_dead_dwarfs_02",
				"pwh_dwarf_internal_dead_dwarfs_03",
				"pwh_dwarf_internal_dead_dwarfs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_dead_dwarfs_01",
				"pwh_dwarf_internal_dead_dwarfs_02",
				"pwh_dwarf_internal_dead_dwarfs_03",
				"pwh_dwarf_internal_dead_dwarfs_04"
			},
			sound_events_duration = {
				3.2909791469574,
				5.7989792823792,
				7.9249792098999,
				3.5939791202545
			}
		},
		pwh_dwarf_internal_dwarf_sign = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_dwarf_sign_01",
				"pwh_dwarf_internal_dwarf_sign_02",
				"pwh_dwarf_internal_dwarf_sign_03",
				"pwh_dwarf_internal_dwarf_sign_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_dwarf_sign_01",
				"pwh_dwarf_internal_dwarf_sign_02",
				"pwh_dwarf_internal_dwarf_sign_03",
				"pwh_dwarf_internal_dwarf_sign_04"
			},
			sound_events_duration = {
				4.4289793968201,
				5.0009789466858,
				4.4519791603088,
				4.6619791984558
			}
		},
		pwh_dwarf_internal_end_conversation_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_end_conversation_a_01",
				"pwh_dwarf_internal_end_conversation_a_02",
				"pwh_dwarf_internal_end_conversation_a_03",
				"pwh_dwarf_internal_end_conversation_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_end_conversation_a_01",
				"pwh_dwarf_internal_end_conversation_a_02",
				"pwh_dwarf_internal_end_conversation_a_03",
				"pwh_dwarf_internal_end_conversation_a_04"
			},
			sound_events_duration = {
				3.9119791984558,
				4.5019793510437,
				8.8569793701172,
				5.544979095459
			}
		},
		pwh_dwarf_internal_end_event_interact_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_end_event_interact_a_01",
				"pwh_dwarf_internal_end_event_interact_a_02",
				"pwh_dwarf_internal_end_event_interact_a_03",
				"pwh_dwarf_internal_end_event_interact_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_end_event_interact_a_01",
				"pwh_dwarf_internal_end_event_interact_a_02",
				"pwh_dwarf_internal_end_event_interact_a_03",
				"pwh_dwarf_internal_end_event_interact_a_04"
			},
			sound_events_duration = {
				4.9649791717529,
				8.9979791641235,
				5.9799790382385,
				5.6979789733887
			}
		},
		pwh_dwarf_internal_end_event_interact_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_end_event_interact_c_01",
				"pwh_dwarf_internal_end_event_interact_c_02",
				"pwh_dwarf_internal_end_event_interact_c_03",
				"pwh_dwarf_internal_end_event_interact_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_end_event_interact_c_01",
				"pwh_dwarf_internal_end_event_interact_c_02",
				"pwh_dwarf_internal_end_event_interact_c_03",
				"pwh_dwarf_internal_end_event_interact_c_04"
			},
			sound_events_duration = {
				5.1199793815613,
				3.7269792556763,
				5.1569790840149,
				5.1949791908264
			}
		},
		pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_01",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_02",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_03",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_01",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_02",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_03",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_A_b_04"
			},
			sound_events_duration = {
				6.5259790420532,
				3.504979133606,
				3.7589790821075,
				4.8759789466858
			}
		},
		pwh_dwarf_internal_end_event_speaking_tube_PLAN_B = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_01",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_02",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_03",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_01",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_02",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_03",
				"pwh_dwarf_internal_end_event_speaking_tube_PLAN_B_04"
			},
			sound_events_duration = {
				4.893000125885,
				4.9119791984558,
				5.6619791984558,
				6.7919793128967
			}
		},
		pwh_dwarf_internal_engineer_reveal_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_dwarf_internal_engineer_reveal_b_01",
				[2] = "pwh_dwarf_internal_engineer_reveal_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_internal_engineer_reveal_b_01",
				[2] = "pwh_dwarf_internal_engineer_reveal_b_02"
			},
			sound_events_duration = {
				[1] = 4.124979019165,
				[2] = 5.7339792251587
			}
		},
		pwh_dwarf_internal_hasnt_improved = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_hasnt_improved_01",
				"pwh_dwarf_internal_hasnt_improved_02",
				"pwh_dwarf_internal_hasnt_improved_03",
				"pwh_dwarf_internal_hasnt_improved_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_hasnt_improved_01",
				"pwh_dwarf_internal_hasnt_improved_02",
				"pwh_dwarf_internal_hasnt_improved_03",
				"pwh_dwarf_internal_hasnt_improved_04"
			},
			sound_events_duration = {
				4.5649790763855,
				6.7399792671204,
				5.3499794006348,
				5.9249792098999
			}
		},
		pwh_dwarf_internal_massing_skaven_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_massing_skaven_a_01",
				"pwh_dwarf_internal_massing_skaven_a_02",
				"pwh_dwarf_internal_massing_skaven_a_03",
				"pwh_dwarf_internal_massing_skaven_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_massing_skaven_a_01",
				"pwh_dwarf_internal_massing_skaven_a_02",
				"pwh_dwarf_internal_massing_skaven_a_03",
				"pwh_dwarf_internal_massing_skaven_a_04"
			},
			sound_events_duration = {
				5.7479791641235,
				7.1189789772034,
				5.9719791412353,
				6.3259792327881
			}
		},
		pwh_dwarf_internal_mid_conversation_bardin_c = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_mid_conversation_bardin_c_01",
				"pwh_dwarf_internal_mid_conversation_bardin_c_02",
				"pwh_dwarf_internal_mid_conversation_bardin_c_03",
				"pwh_dwarf_internal_mid_conversation_bardin_c_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_mid_conversation_bardin_c_01",
				"pwh_dwarf_internal_mid_conversation_bardin_c_02",
				"pwh_dwarf_internal_mid_conversation_bardin_c_03",
				"pwh_dwarf_internal_mid_conversation_bardin_c_04"
			},
			sound_events_duration = {
				3.908979177475,
				4.8319792747498,
				7.5039792060852,
				6.2129793167114
			}
		},
		pwh_dwarf_internal_mid_conversation_no_bardin_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_01",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_02",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_03",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_01",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_02",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_03",
				"pwh_dwarf_internal_mid_conversation_no_bardin_a_04"
			},
			sound_events_duration = {
				6.6939792633057,
				5.1289792060852,
				6.8879790306091,
				5.8259792327881
			}
		},
		pwh_dwarf_internal_skaven_works = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "story_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_skaven_works_01",
				"pwh_dwarf_internal_skaven_works_02",
				"pwh_dwarf_internal_skaven_works_03",
				"pwh_dwarf_internal_skaven_works_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_skaven_works_01",
				"pwh_dwarf_internal_skaven_works_02",
				"pwh_dwarf_internal_skaven_works_03",
				"pwh_dwarf_internal_skaven_works_04"
			},
			sound_events_duration = {
				7.9269790649414,
				9.1349792480469,
				6.6289792060852,
				9.6799793243408
			}
		},
		pwh_dwarf_internal_start_banter_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_dwarf_internal_start_banter_a_01",
				[2] = "pwh_dwarf_internal_start_banter_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_internal_start_banter_a_01",
				[2] = "pwh_dwarf_internal_start_banter_a_02"
			},
			sound_events_duration = {
				[1] = 5.6179790496826,
				[2] = 7.2969789505005
			}
		},
		pwh_dwarf_internal_start_banter_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_dwarf_internal_start_banter_b_01",
				[2] = "pwh_dwarf_internal_start_banter_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_internal_start_banter_b_01",
				[2] = "pwh_dwarf_internal_start_banter_b_02"
			},
			sound_events_duration = {
				[1] = 4.401978969574,
				[2] = 6.9619793891907
			}
		},
		pwh_dwarf_internal_start_banter_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_dwarf_internal_start_banter_c_01",
				[2] = "pwh_dwarf_internal_start_banter_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_dwarf_internal_start_banter_c_01",
				[2] = "pwh_dwarf_internal_start_banter_c_02"
			},
			sound_events_duration = {
				[1] = 6.2489790916443,
				[2] = 7.4869790077209
			}
		},
		pwh_dwarf_internal_steam_clearing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_steam_clearing_01",
				"pwh_dwarf_internal_steam_clearing_02",
				"pwh_dwarf_internal_steam_clearing_03",
				"pwh_dwarf_internal_steam_clearing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_steam_clearing_01",
				"pwh_dwarf_internal_steam_clearing_02",
				"pwh_dwarf_internal_steam_clearing_03",
				"pwh_dwarf_internal_steam_clearing_04"
			},
			sound_events_duration = {
				4.3909792900085,
				4.9119791984558,
				4.5789790153503,
				5.147979259491
			}
		},
		pwh_dwarf_internal_still_a_maze = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_still_a_maze_01",
				"pwh_dwarf_internal_still_a_maze_02",
				"pwh_dwarf_internal_still_a_maze_03",
				"pwh_dwarf_internal_still_a_maze_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_still_a_maze_01",
				"pwh_dwarf_internal_still_a_maze_02",
				"pwh_dwarf_internal_still_a_maze_03",
				"pwh_dwarf_internal_still_a_maze_04"
			},
			sound_events_duration = {
				4.4729790687561,
				5.51797914505,
				7.5079793930054,
				8.0369787216187
			}
		},
		pwh_dwarf_internal_valaya = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_dwarf_interior",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_dwarf_internal_valaya_01",
				"pwh_dwarf_internal_valaya_02",
				"pwh_dwarf_internal_valaya_03",
				"pwh_dwarf_internal_valaya_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_dwarf_internal_valaya_01",
				"pwh_dwarf_internal_valaya_02",
				"pwh_dwarf_internal_valaya_03",
				"pwh_dwarf_internal_valaya_04"
			},
			sound_events_duration = {
				5.5279793739319,
				3.687979221344,
				6.9329791069031,
				6.0789790153503
			}
		}
	})
end
