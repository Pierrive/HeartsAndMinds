 //ClassName typeOf vehicle
vlr_class_units = ["CUP_I_TK_GUE_Commander", "CUP_I_TK_GUE_Soldier_TL", "CUP_I_TK_GUE_Soldier_MG", "CUP_I_TK_GUE_Mechanic", "CUP_I_TK_GUE_Sniper", "CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Soldier_LAT", "CUP_I_TK_GUE_Soldier_AAT", "CUP_I_TK_GUE_Soldier_M16A2", "CUP_I_TK_GUE_Soldier_GL", "CUP_I_TK_GUE_Guerilla_Enfield", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Soldier_AK_47S", "CUP_I_TK_GUE_Soldier", "CUP_I_TK_GUE_Demo", "CUP_I_TK_GUE_Guerilla_Medic", "CUP_I_TK_GUE_Soldier_AR", "CUP_I_TK_GUE_Soldier_AA"];
vlr_class_ATunits = ["CUP_I_TK_GUE_Soldier_AT", "CUP_I_TK_GUE_Soldier_LAT", "CUP_I_TK_GUE_Soldier_HAT", "CUP_I_TK_GUE_Commander"];
vlr_class_AAunits = ["CUP_I_TK_GUE_Soldier_AA", "CUP_I_TK_GUE_Commander"];
vlr_class_Tanks = ["CUP_I_T34_TK_GUE", "CUP_I_T55_TK_GUE", "CUP_I_BRDM2_TK_Gue", "CUP_I_BMP1_TK_GUE", "CUP_I_BRDM2_HQ_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue"];
vlr_class_CarArmed = ["CUP_I_Hilux_M2_TK", "CUP_I_Datsun_PK_TK", "CUP_I_Hilux_SPG9_TK", "CUP_I_Hilux_podnos_TK", "CUP_I_Hilux_MLRS_TK", "CUP_I_Hilux_armored_DSHKM_TK"];
vlr_class_VehTransport = ["CUP_I_Hilux_unarmed_TK", "CUP_I_Datsun_4seat_TK", "CUP_I_V3S_Open_TKG", "CUP_I_V3S_Covered_TKG", "CUP_I_BTR40_TKG", "CUP_I_BTR40_MG_TKG"];
vlr_class_VehAA = ["CUP_I_Ural_ZU23_TK_Gue","CUP_I_Hilux_igla_TK"];
vlr_class_AirArmed = ["CUP_I_UH1H_armed_TK_GUE","CUP_I_UH1H_gunship_TK_GUE"];
vlr_class_TransportAir = ["CUP_I_UH1H_slick_TK_GUE", "CUP_I_UH1H_TK_GUE"];
vlr_class_static = ["CUP_I_DSHKM_TK_GUE"];
vlr_class_staticAA = ["CUP_I_ZU23_TK_GUE"];
vlr_class_staticAT = ["CUP_I_D30_TK_GUE", "CUP_I_D30_AT_TK_GUE", "CUP_I_SPG9_TK_GUE"];
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

