return function ()
	define_rule({
		name = "pwh_helmgart_military_a",
		response = "pwh_helmgart_military_a",
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
				"helmgart_military_a"
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
				"helmgart_military_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_helmgart_military_b",
		response = "pwh_helmgart_military_b",
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
				"helmgart_military_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"helmgart_military_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_helmgart_military_c",
		response = "pwh_helmgart_military_c",
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
				"helmgart_military_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"helmgart_military_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"helmgart_military_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_armoury",
		response = "pwh_level_helmgart_military_armoury",
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
				"helmgart_military_armoury"
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
				"time_since_helmgart_military_armoury",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_armoury",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_arriving_temple",
		response = "pwh_level_helmgart_military_arriving_temple",
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
				"helmgart_military_arriving_temple"
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
				"time_since_helmgart_military_arriving_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_arriving_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_axebite_pass_vista",
		response = "pwh_level_helmgart_military_axebite_pass_vista",
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
				"helmgart_military_axebite_pass_vista"
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
				"time_since_helmgart_military_axebite_pass_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_axebite_pass_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_courtyard_event",
		response = "pwh_level_helmgart_military_courtyard_event",
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
				"helmgart_military_courtyard_event"
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
				"time_since_helmgart_military_courtyard_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_courtyard_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_door_opens",
		response = "pwh_level_helmgart_military_door_opens",
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
				"helmgart_military_door_opens"
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
				"time_since_helmgart_military_door_opens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_door_opens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_empty_town",
		response = "pwh_level_helmgart_military_empty_town",
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
				"helmgart_military_empty_town"
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
				"time_since_helmgart_military_empty_town",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_empty_town",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_fire_cannon",
		response = "pwh_level_helmgart_military_fire_cannon",
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
				"helmgart_military_fire_cannon"
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
				"time_since_helmgart_military_fire_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fire_cannon",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_fort_elevator",
		response = "pwh_level_helmgart_military_fort_elevator",
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
				"helmgart_military_fort_elevator"
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
				"time_since_helmgart_military_fort_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_fort_entrance",
		response = "pwh_level_helmgart_military_fort_entrance",
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
				"helmgart_military_fort_entrance"
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
				"time_since_helmgart_military_fort_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_fort_help",
		response = "pwh_level_helmgart_military_fort_help",
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
				"helmgart_military_fort_help"
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
				"time_since_helmgart_military_fort_help",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_help",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_fort_massacre",
		response = "pwh_level_helmgart_military_fort_massacre",
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
				"helmgart_military_fort_massacre"
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
				"time_since_helmgart_military_fort_massacre",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_fort_massacre",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_halfway_through_horde",
		response = "pwh_level_helmgart_military_halfway_through_horde",
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
				"helmgart_military_halfway_through_horde"
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
				"time_since_helmgart_military_halfway_through_horde",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_halfway_through_horde",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_helmgart_vista",
		response = "pwh_level_helmgart_military_helmgart_vista",
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
				"helmgart_military_helmgart_vista"
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
				"time_since_helmgart_military_helmgart_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_helmgart_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_locked_portcullis",
		response = "pwh_level_helmgart_military_locked_portcullis",
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
				"helmgart_military_locked_portcullis"
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
				"time_since_helmgart_military_locked_portcullis",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_locked_portcullis",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_oops",
		response = "pwh_level_helmgart_military_oops",
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
				"helmgart_military_oops"
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
				"time_since_helmgart_military_oops",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_oops",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_pilgrim_path",
		response = "pwh_level_helmgart_military_pilgrim_path",
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
				"helmgart_military_pilgrim_path"
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
				"time_since_helmgart_military_pilgrim_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_pilgrim_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_portcullis",
		response = "pwh_level_helmgart_military_portcullis",
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
				"helmgart_military_portcullis"
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
				"time_since_helmgart_military_portcullis",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_portcullis",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_prepare",
		response = "pwh_level_helmgart_military_prepare",
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
				"helmgart_military_prepare"
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
				"time_since_helmgart_military_prepare",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_prepare",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_ring_bell",
		response = "pwh_level_helmgart_military_ring_bell",
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
				"helmgart_military_ring_bell"
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
				"time_since_helmgart_military_ring_bell",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_ring_bell",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_spooky_temple",
		response = "pwh_level_helmgart_military_spooky_temple",
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
				"helmgart_military_spooky_temple"
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
				"time_since_helmgart_military_spooky_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_spooky_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_spotting_portal",
		response = "pwh_level_helmgart_military_spotting_portal",
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
				"helmgart_military_spotting_portal"
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
				"time_since_helmgart_military_spotting_portal",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_spotting_portal",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_temple_ahead",
		response = "pwh_level_helmgart_military_temple_ahead",
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
				"helmgart_military_temple_ahead"
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
				"time_since_helmgart_military_temple_ahead",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_temple_ahead",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_they_are_coming",
		response = "pwh_level_helmgart_military_they_are_coming",
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
				"helmgart_military_they_are_coming"
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
				"time_since_helmgart_military_they_are_coming",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_they_are_coming",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_time_to_leave",
		response = "pwh_level_helmgart_military_time_to_leave",
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
				"helmgart_military_time_to_leave"
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
				"time_since_helmgart_military_time_to_leave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_time_to_leave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_level_helmgart_military_turn_cannon",
		response = "pwh_level_helmgart_military_turn_cannon",
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
				"helmgart_military_turn_cannon"
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
				"time_since_helmgart_military_turn_cannon",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_helmgart_military_turn_cannon",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_helmgart_military_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_military",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwh_helmgart_military_intro_a_01",
				[2] = "pwh_helmgart_military_intro_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_helmgart_military_intro_a_01",
				[2] = "pwh_helmgart_military_intro_a_02"
			},
			sound_events_duration = {
				[1] = 5.2550835609436,
				[2] = 4.7800626754761
			}
		},
		pwh_helmgart_military_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_military",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwh_helmgart_military_intro_b_01",
				[2] = "pwh_helmgart_military_intro_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_helmgart_military_intro_b_01",
				[2] = "pwh_helmgart_military_intro_b_02"
			},
			sound_events_duration = {
				[1] = 5.4227914810181,
				[2] = 2.9362709522247
			}
		},
		pwh_helmgart_military_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_military",
			sound_events_n = 2,
			category = "level_talk",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "pwh_helmgart_military_intro_c_01",
				[2] = "pwh_helmgart_military_intro_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_helmgart_military_intro_c_01",
				[2] = "pwh_helmgart_military_intro_c_02"
			},
			sound_events_duration = {
				[1] = 3.8480207920074,
				[2] = 4.0310206413269
			}
		},
		pwh_level_helmgart_military_armoury = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_armoury_01",
				"pwh_level_helmgart_military_armoury_02",
				"pwh_level_helmgart_military_armoury_03",
				"pwh_level_helmgart_military_armoury_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_armoury_01",
				"pwh_level_helmgart_military_armoury_02",
				"pwh_level_helmgart_military_armoury_03",
				"pwh_level_helmgart_military_armoury_04"
			},
			sound_events_duration = {
				1.9181041717529,
				3.6873958110809,
				4.3722915649414,
				5.6159167289734
			}
		},
		pwh_level_helmgart_military_arriving_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_arriving_temple_01",
				"pwh_level_helmgart_military_arriving_temple_02",
				"pwh_level_helmgart_military_arriving_temple_03",
				"pwh_level_helmgart_military_arriving_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_arriving_temple_01",
				"pwh_level_helmgart_military_arriving_temple_02",
				"pwh_level_helmgart_military_arriving_temple_03",
				"pwh_level_helmgart_military_arriving_temple_04"
			},
			sound_events_duration = {
				4.4071664810181,
				5.7528958320618,
				3.3752083778381,
				4.0015830993652
			}
		},
		pwh_level_helmgart_military_axebite_pass_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_axebite_pass_vista_01",
				"pwh_level_helmgart_military_axebite_pass_vista_02",
				"pwh_level_helmgart_military_axebite_pass_vista_03",
				"pwh_level_helmgart_military_axebite_pass_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_axebite_pass_vista_01",
				"pwh_level_helmgart_military_axebite_pass_vista_02",
				"pwh_level_helmgart_military_axebite_pass_vista_03",
				"pwh_level_helmgart_military_axebite_pass_vista_04"
			},
			sound_events_duration = {
				4.5508751869202,
				5.8302707672119,
				3.2589790821075,
				5.053249835968
			}
		},
		pwh_level_helmgart_military_courtyard_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_courtyard_event_01",
				"pwh_level_helmgart_military_courtyard_event_02",
				"pwh_level_helmgart_military_courtyard_event_03",
				"pwh_level_helmgart_military_courtyard_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_courtyard_event_01",
				"pwh_level_helmgart_military_courtyard_event_02",
				"pwh_level_helmgart_military_courtyard_event_03",
				"pwh_level_helmgart_military_courtyard_event_04"
			},
			sound_events_duration = {
				2.8777709007263,
				3.5144791603088,
				3.5273542404175,
				4.8129167556763
			}
		},
		pwh_level_helmgart_military_door_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_door_opens_01",
				"pwh_level_helmgart_military_door_opens_02",
				"pwh_level_helmgart_military_door_opens_03",
				"pwh_level_helmgart_military_door_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_door_opens_01",
				"pwh_level_helmgart_military_door_opens_02",
				"pwh_level_helmgart_military_door_opens_03",
				"pwh_level_helmgart_military_door_opens_04"
			},
			sound_events_duration = {
				2.5231666564941,
				1.3234167098999,
				2.8141667842865,
				2.5940001010895
			}
		},
		pwh_level_helmgart_military_empty_town = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_empty_town_01",
				"pwh_level_helmgart_military_empty_town_02",
				"pwh_level_helmgart_military_empty_town_03",
				"pwh_level_helmgart_military_empty_town_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_empty_town_01",
				"pwh_level_helmgart_military_empty_town_02",
				"pwh_level_helmgart_military_empty_town_03",
				"pwh_level_helmgart_military_empty_town_04"
			},
			sound_events_duration = {
				4.4033331871033,
				3.1399791240692,
				4.1536250114441,
				3.6559791564941
			}
		},
		pwh_level_helmgart_military_fire_cannon = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_fire_cannon_01",
				"pwh_level_helmgart_military_fire_cannon_02",
				"pwh_level_helmgart_military_fire_cannon_03",
				"pwh_level_helmgart_military_fire_cannon_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_fire_cannon_01",
				"pwh_level_helmgart_military_fire_cannon_02",
				"pwh_level_helmgart_military_fire_cannon_03",
				"pwh_level_helmgart_military_fire_cannon_04"
			},
			sound_events_duration = {
				4.589729309082,
				4.7250208854675,
				3.2835624217987,
				4.1397914886475
			}
		},
		pwh_level_helmgart_military_fort_elevator = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_fort_elevator_01",
				"pwh_level_helmgart_military_fort_elevator_02",
				"pwh_level_helmgart_military_fort_elevator_03",
				"pwh_level_helmgart_military_fort_elevator_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_fort_elevator_01",
				"pwh_level_helmgart_military_fort_elevator_02",
				"pwh_level_helmgart_military_fort_elevator_03",
				"pwh_level_helmgart_military_fort_elevator_04"
			},
			sound_events_duration = {
				2.9436666965485,
				2.5766875743866,
				4.1311874389648,
				2.3589999675751
			}
		},
		pwh_level_helmgart_military_fort_entrance = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_fort_entrance_01",
				"pwh_level_helmgart_military_fort_entrance_02",
				"pwh_level_helmgart_military_fort_entrance_03",
				"pwh_level_helmgart_military_fort_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_fort_entrance_01",
				"pwh_level_helmgart_military_fort_entrance_02",
				"pwh_level_helmgart_military_fort_entrance_03",
				"pwh_level_helmgart_military_fort_entrance_04"
			},
			sound_events_duration = {
				2.7169165611267,
				2.57066655159,
				5.1020002365112,
				4.0695414543152
			}
		},
		pwh_level_helmgart_military_fort_help = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_fort_help_01",
				"pwh_level_helmgart_military_fort_help_02",
				"pwh_level_helmgart_military_fort_help_03",
				"pwh_level_helmgart_military_fort_help_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_fort_help_01",
				"pwh_level_helmgart_military_fort_help_02",
				"pwh_level_helmgart_military_fort_help_03",
				"pwh_level_helmgart_military_fort_help_04"
			},
			sound_events_duration = {
				3.7664792537689,
				4.2763123512268,
				4.96329164505,
				4.72110414505
			}
		},
		pwh_level_helmgart_military_fort_massacre = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_fort_massacre_01",
				"pwh_level_helmgart_military_fort_massacre_02",
				"pwh_level_helmgart_military_fort_massacre_03",
				"pwh_level_helmgart_military_fort_massacre_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_fort_massacre_01",
				"pwh_level_helmgart_military_fort_massacre_02",
				"pwh_level_helmgart_military_fort_massacre_03",
				"pwh_level_helmgart_military_fort_massacre_04"
			},
			sound_events_duration = {
				3.4869582653046,
				4.283625125885,
				5.2135834693909,
				4.158166885376
			}
		},
		pwh_level_helmgart_military_halfway_through_horde = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_halfway_through_horde_01",
				"pwh_level_helmgart_military_halfway_through_horde_02",
				"pwh_level_helmgart_military_halfway_through_horde_03",
				"pwh_level_helmgart_military_halfway_through_horde_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_halfway_through_horde_01",
				"pwh_level_helmgart_military_halfway_through_horde_02",
				"pwh_level_helmgart_military_halfway_through_horde_03",
				"pwh_level_helmgart_military_halfway_through_horde_04"
			},
			sound_events_duration = {
				1.4448750019074,
				3.8711249828339,
				4.8889374732971,
				2.89097905159
			}
		},
		pwh_level_helmgart_military_helmgart_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "witch_hunter_military",
			sound_events_n = 3,
			category = "level_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_helmgart_vista_01",
				"pwh_level_helmgart_military_helmgart_vista_02",
				"pwh_level_helmgart_military_helmgart_vista_03"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_helmgart_vista_01",
				"pwh_level_helmgart_military_helmgart_vista_02",
				"pwh_level_helmgart_military_helmgart_vista_03"
			},
			sound_events_duration = {
				5.3062291145325,
				5.0904793739319,
				5.0187501907349
			}
		},
		pwh_level_helmgart_military_locked_portcullis = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_locked_portcullis_01",
				"pwh_level_helmgart_military_locked_portcullis_02",
				"pwh_level_helmgart_military_locked_portcullis_03",
				"pwh_level_helmgart_military_locked_portcullis_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_locked_portcullis_01",
				"pwh_level_helmgart_military_locked_portcullis_02",
				"pwh_level_helmgart_military_locked_portcullis_03",
				"pwh_level_helmgart_military_locked_portcullis_04"
			},
			sound_events_duration = {
				1.6828750371933,
				3.4668126106262,
				3.403416633606,
				4.7403960227966
			}
		},
		pwh_level_helmgart_military_oops = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_oops_01",
				"pwh_level_helmgart_military_oops_02",
				"pwh_level_helmgart_military_oops_03",
				"pwh_level_helmgart_military_oops_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_oops_01",
				"pwh_level_helmgart_military_oops_02",
				"pwh_level_helmgart_military_oops_03",
				"pwh_level_helmgart_military_oops_04"
			},
			sound_events_duration = {
				5.3329792022705,
				3.8644790649414,
				5.6917500495911,
				4.1974167823792
			}
		},
		pwh_level_helmgart_military_pilgrim_path = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_pilgrim_path_01",
				"pwh_level_helmgart_military_pilgrim_path_02",
				"pwh_level_helmgart_military_pilgrim_path_03",
				"pwh_level_helmgart_military_pilgrim_path_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_pilgrim_path_01",
				"pwh_level_helmgart_military_pilgrim_path_02",
				"pwh_level_helmgart_military_pilgrim_path_03",
				"pwh_level_helmgart_military_pilgrim_path_04"
			},
			sound_events_duration = {
				5.644896030426,
				4.7875418663025,
				5.5448956489563,
				2.8694791793823
			}
		},
		pwh_level_helmgart_military_portcullis = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_portcullis_01",
				"pwh_level_helmgart_military_portcullis_02",
				"pwh_level_helmgart_military_portcullis_03",
				"pwh_level_helmgart_military_portcullis_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_portcullis_01",
				"pwh_level_helmgart_military_portcullis_02",
				"pwh_level_helmgart_military_portcullis_03",
				"pwh_level_helmgart_military_portcullis_04"
			},
			sound_events_duration = {
				2.2328124046326,
				3.3217709064484,
				3.6565833091736,
				3.2966248989105
			}
		},
		pwh_level_helmgart_military_prepare = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_prepare_01",
				"pwh_level_helmgart_military_prepare_02",
				"pwh_level_helmgart_military_prepare_03",
				"pwh_level_helmgart_military_prepare_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_prepare_01",
				"pwh_level_helmgart_military_prepare_02",
				"pwh_level_helmgart_military_prepare_03",
				"pwh_level_helmgart_military_prepare_04"
			},
			sound_events_duration = {
				3.8278748989105,
				4.3112292289734,
				4.0432915687561,
				3.0052917003632
			}
		},
		pwh_level_helmgart_military_ring_bell = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_ring_bell_01",
				"pwh_level_helmgart_military_ring_bell_02",
				"pwh_level_helmgart_military_ring_bell_03",
				"pwh_level_helmgart_military_ring_bell_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_ring_bell_01",
				"pwh_level_helmgart_military_ring_bell_02",
				"pwh_level_helmgart_military_ring_bell_03",
				"pwh_level_helmgart_military_ring_bell_04"
			},
			sound_events_duration = {
				3.9284999370575,
				3.7051041126251,
				3.7415416240692,
				4.2974791526794
			}
		},
		pwh_level_helmgart_military_spooky_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_spooky_temple_01",
				"pwh_level_helmgart_military_spooky_temple_02",
				"pwh_level_helmgart_military_spooky_temple_03",
				"pwh_level_helmgart_military_spooky_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_spooky_temple_01",
				"pwh_level_helmgart_military_spooky_temple_02",
				"pwh_level_helmgart_military_spooky_temple_03",
				"pwh_level_helmgart_military_spooky_temple_04"
			},
			sound_events_duration = {
				3.64808344841,
				2.372750043869,
				2.6442499160767,
				4.1766042709351
			}
		},
		pwh_level_helmgart_military_spotting_portal = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_spotting_portal_01",
				"pwh_level_helmgart_military_spotting_portal_02",
				"pwh_level_helmgart_military_spotting_portal_03",
				"pwh_level_helmgart_military_spotting_portal_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_spotting_portal_01",
				"pwh_level_helmgart_military_spotting_portal_02",
				"pwh_level_helmgart_military_spotting_portal_03",
				"pwh_level_helmgart_military_spotting_portal_04"
			},
			sound_events_duration = {
				3.5319166183472,
				2.8718750476837,
				3.0709791183472,
				3.0744376182556
			}
		},
		pwh_level_helmgart_military_temple_ahead = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_temple_ahead_01",
				"pwh_level_helmgart_military_temple_ahead_02",
				"pwh_level_helmgart_military_temple_ahead_03",
				"pwh_level_helmgart_military_temple_ahead_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_temple_ahead_01",
				"pwh_level_helmgart_military_temple_ahead_02",
				"pwh_level_helmgart_military_temple_ahead_03",
				"pwh_level_helmgart_military_temple_ahead_04"
			},
			sound_events_duration = {
				5.6291041374206,
				3.0743124485016,
				1.6959791183472,
				6.2334585189819
			}
		},
		pwh_level_helmgart_military_they_are_coming = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_they_are_coming_01",
				"pwh_level_helmgart_military_they_are_coming_02",
				"pwh_level_helmgart_military_they_are_coming_03",
				"pwh_level_helmgart_military_they_are_coming_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_they_are_coming_01",
				"pwh_level_helmgart_military_they_are_coming_02",
				"pwh_level_helmgart_military_they_are_coming_03",
				"pwh_level_helmgart_military_they_are_coming_04"
			},
			sound_events_duration = {
				2.0539166927338,
				2.2517082691193,
				1.4111042022705,
				3.1251666545868
			}
		},
		pwh_level_helmgart_military_time_to_leave = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_time_to_leave_01",
				"pwh_level_helmgart_military_time_to_leave_02",
				"pwh_level_helmgart_military_time_to_leave_03",
				"pwh_level_helmgart_military_time_to_leave_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_time_to_leave_01",
				"pwh_level_helmgart_military_time_to_leave_02",
				"pwh_level_helmgart_military_time_to_leave_03",
				"pwh_level_helmgart_military_time_to_leave_04"
			},
			sound_events_duration = {
				3.6086666584015,
				5.5276250839233,
				4.9690418243408,
				7.0620832443237
			}
		},
		pwh_level_helmgart_military_turn_cannon = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_military",
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
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			localization_strings = {
				"pwh_level_helmgart_military_turn_cannon_01",
				"pwh_level_helmgart_military_turn_cannon_02",
				"pwh_level_helmgart_military_turn_cannon_03",
				"pwh_level_helmgart_military_turn_cannon_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_level_helmgart_military_turn_cannon_01",
				"pwh_level_helmgart_military_turn_cannon_02",
				"pwh_level_helmgart_military_turn_cannon_03",
				"pwh_level_helmgart_military_turn_cannon_04"
			},
			sound_events_duration = {
				4.9067707061768,
				2.6700208187103,
				4.8180832862854,
				4.8460831642151
			}
		}
	})
end
