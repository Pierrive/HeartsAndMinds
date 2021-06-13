 //ClassName typeOf vehicle
vlr_class_units = ["rhsgref_tla_specialist_at", "rhsgref_tla_grenadier", "rhsgref_tla_rifleman", "rhsgref_tla_rifleman_l1a1", "rhsgref_tla_rifleman_m1", "rhsgref_tla_rifleman_m14", "rhsgref_tla_rifleman_pm63", "rhsgref_tla_rifleman_rpg75", "rhsgref_tla_machinegunner", "rhsgref_tla_machinegunner_mg42", "rhsgref_tla_medic", "rhsgref_tla_saboteur", "rhsgref_tla_rifleman_M16", "rhsgref_tla_mechanic", "rhsgref_tla_marksman_m14", "rhsgref_tla_rifleman_akms"];
vlr_class_ATunits = ["rhsgref_tla_specialist_at", "rhsgref_tla_specialist_at", "rhsgref_tla_rifleman_rpg75", "rhsgref_tla_squadleader"];
vlr_class_AAunits = ["CUP_O_sla_Soldier_AA", "rhsgref_tla_squadleader"];
vlr_class_Tanks = ["rhsgref_tla_btr60"];
vlr_class_CarArmed = ["rhsgref_tla_offroad_at", "rhsgref_tla_offroad_armed"];
vlr_class_VehTransport = ["rhsgref_tla_offroad", "rhsgref_tla_kraz255b1_cargo_open"];
vlr_class_VehAA = ["CUP_I_Ural_ZU23_TK_Gue","CUP_I_Hilux_igla_TK"];
vlr_class_AirArmed = ["CUP_O_UH1H_gunship_SLA","CUP_O_UH1H_armed_SLA"];
vlr_class_TransportAir = ["CUP_O_UH1H_SLA", "CUP_O_UH1H_slick_SLA"];
vlr_class_static = ["rhsgref_tla_DSHKM","rhsgref_tla_DSHKM_Mini_TriPod"];
vlr_class_staticAA = ["rhsgref_tla_ZU23"];
vlr_class_staticAT = ["rhsgref_tla_SPG9"];
vlr_flag_texture = "\po_main\Data\UI\flags\flag_am_opf_co.paa"; //vanilla flag = "\A3\Data_F\Flags\flag_pow_co.paa"

///// Add SafeZone Spawn And Sound //////////
missionNamespace setVariable ["SafeZoneVar", "safeZone", true];
missionNamespace setVariable ["SoundPosUse", [], false];

///// Another variable, don't edit //////////
debug_VLR = true;
missionNamespace setVariable ["AllGroupVLR", [], true];
missionNamespace setVariable ["CheckVehReady", false, true];

//Variable Spectre
missionNamespace setVariable ["Ai_Check_Spect", [], true];

if (isServer) then {
	if ((missionNamespace getVariable "SafeZoneVar") == "") then {
		//Create C130 for Halo Jump
		_C130_halo = "C130J_static_EP1" createVehicle [0,0,0]; 
		_C130_halo allowDamage false; 
		_C130_halo setpos [(getPosASL _C130_halo) select 0, (getPosASL _C130_halo) select 1, (((getPosASL _C130_halo) select 2) + 4000)];
		missionNamespace setVariable ["Halo_Veh", _C130_halo, true];	
	} else {
		//Create C130 for Halo Jump
		_C130_halo = "C130J_static_EP1" createVehicle (getMarkerPos (missionNamespace getVariable "SafeZoneVar")); 
		_C130_halo allowDamage false; 
		_C130_halo setpos [(getPosASL _C130_halo) select 0, (getPosASL _C130_halo) select 1, (((getPosASL _C130_halo) select 2) + 4000)];
		missionNamespace setVariable ["Halo_Veh", _C130_halo, true];		
	};
};

