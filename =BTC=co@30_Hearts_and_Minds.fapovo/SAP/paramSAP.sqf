 //ClassName typeOf vehicle
vlr_class_units = ["LOP_UVF_Infantry_Rifleman", "LOP_UVF_Infantry_GL", "LOP_UVF_Infantry_Corpsman", "LOP_UVF_Infantry_AR_Asst", "LOP_UVF_Infantry_AR", "LOP_UVF_Infantry_AT", "LOP_UVF_Infantry_SL", "LOP_UVF_Infantry_TL", "LOP_UVF_Infantry_IED", "LOP_UVF_Infantry_Driver", "LOP_UVF_Infantry_Rifleman_vz58", "LOP_UVF_Infantry_Marksman", "LOP_UVF_Infantry_Rifleman_lite"];
vlr_class_ATunits = ["LOP_UVF_Infantry_AT", "LOP_UVF_Infantry_Rifleman_vz58", "LOP_UVF_Infantry_IED", "LOP_UVF_Infantry_AT"];
vlr_class_AAunits = ["LOP_UVF_Infantry_AT", "LOP_UVF_Infantry_Rifleman"];
vlr_class_Tanks = ["LOP_UVF_Landrover_SPG9"];
vlr_class_CarArmed = ["LOP_UVF_Landrover_SPG9", "LOP_UVF_Nissan_PKM", "LOP_UVF_Offroad_AT", "LOP_UVF_Offroad_M2", "LOP_UVF_Landrover_M2"];
vlr_class_VehTransport = ["LOP_UVF_Offroad", "LOP_UVF_Landrover", "LOP_UVF_Truck"];
vlr_class_VehAA = ["LOP_UVF_Landrover_M2"];
vlr_class_AirArmed = ["CUP_O_UH1H_gunship_SLA","CUP_O_UH1H_armed_SLA"];
vlr_class_TransportAir = ["CUP_O_UH1H_SLA", "CUP_O_UH1H_slick_SLA"];
vlr_class_static = ["LOP_UVF_Igla_AA_pod", "LOP_UVF_Static_DSHKM", "LOP_UVF_Static_SPG9"];
vlr_class_staticAA = ["LOP_UVF_Igla_AA_pod"];
vlr_class_staticAT = ["LOP_UVF_Static_SPG9"];
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

