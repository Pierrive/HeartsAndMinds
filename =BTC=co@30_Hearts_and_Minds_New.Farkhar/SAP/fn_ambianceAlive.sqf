if !(isServer) exitWith {};

waitUntil {(count allplayers) > 2};

private _safezone = missionNamespace getVariable "SafeZoneVar";

private _ArrayHouseVanilla = ["Land_Metal_Shed_F", "Land_cargo_house_slum_F", "Land_i_Addon_02_V1_F", "Land_u_Addon_02_V1_F", "Land_u_House_Small_01_V1_F", "Land_i_House_Small_01_V1_F", "Land_i_House_Small_01_V2_F", 
"Land_u_House_Small_02_V1_F", "Land_i_House_Small_02_V1_F", "Land_i_House_Small_02_V2_F", "Land_i_House_Small_02_V3_F", "Land_i_House_Small_01_V3_F", "Land_i_Stone_HouseSmall_V2_F", 
"Land_i_Stone_HouseSmall_V1_F", "Land_i_Stone_HouseBig_V2_F", "Land_d_Stone_HouseBig_V1_F", "Land_i_Stone_HouseBig_V1_F", "Land_i_Stone_HouseBig_V3_F", "Land_i_Stone_HouseSmall_V3_F", 
"Land_i_Stone_Shed_V3_F", "Land_i_Stone_Shed_V1_F", "Land_i_Stone_Shed_V2_F", "Land_Slum_House02_F", "Land_Slum_House03_F", "Land_Slum_House01_F", "Land_u_Shop_01_V1_F", "Land_i_Shop_01_V1_F", 
"Land_i_Shop_01_V2_F", "Land_i_Shop_01_V3_F", "Land_i_House_Small_03_V1_F", "Land_u_Shop_02_V1_F", "Land_i_Shop_02_V1_F", "Land_i_Shop_02_V2_F", "Land_i_Shop_02_V3_F", "Land_Offices_01_V1_F", 
"Land_u_House_Big_01_V1_F", "Land_i_House_Big_01_V1_F", "Land_i_House_Big_01_V2_F", "Land_i_House_Big_01_V3_F", "Land_u_House_Big_02_V1_F", "Land_i_House_Big_02_V1_F", "Land_i_House_Big_02_V3_F", 
"Land_i_House_Big_02_V2_F", "Land_VillageStore_01_F", "Land_Shed_14_F", "Land_Shed_10_F", "Land_Camp_House_01_brown_F", "Land_HealthCenter_01_F", "Land_House_1W01_F", "Land_House_1W10_F", 
"Land_House_1W11_F", "Land_House_1W12_F", "Land_House_1W13_F", "Land_House_1W02_F", "Land_House_1W03_F", "Land_House_1W04_F", "Land_House_1W04_F", "Land_House_1W05_F", "Land_House_1W06_F", 
"Land_House_1W07_F", "Land_House_1W08_F", "Land_House_1W09_F", "Land_House_2W01_F", "Land_House_2W02_F", "Land_House_2W03_F", "Land_House_2W04_F", "Land_House_2W05_F", "Land_House_1B01_F", 
"Land_House_2B01_F", "Land_House_2B02_F", "Land_House_2B03_F", "Land_House_2B04_F", "Land_PoliceStation_01_F", "Land_Shed_08_grey_F", "Land_Shed_08_brown_F", "Land_i_Addon_02_b_white_F", 
"Land_i_House_Small_01_b_whiteblue_F", "Land_i_House_Small_01_b_white_F", "Land_i_House_Small_01_b_blue_F", "Land_i_House_Small_01_b_yellow_F", "Land_i_House_Small_01_b_brown_F", 
"Land_i_House_Small_02_b_whiteblue_F", "Land_i_House_Small_02_b_blue_F", "Land_i_House_Small_02_b_white_F", "Land_i_House_Small_02_b_yellow_F", "Land_i_House_Small_02_b_brown_F", 
"Land_i_House_Small_02_b_pink_F", "Land_i_House_Small_02_c_whiteblue_F", "Land_i_House_Small_02_c_white_F", "Land_i_House_Small_02_c_blue_F", "Land_i_House_Small_02_c_yellow_F", 
"Land_i_House_Small_02_c_brown_F", "Land_i_House_Small_02_c_pink_F", "Land_i_House_Small_01_b_pink_F", "Land_i_Stone_House_Big_01_b_clay_F", "Land_i_Stone_Shed_01_b_white_F", 
"Land_i_Stone_Shed_01_b_raw_F", "Land_i_Stone_Shed_01_c_white_F", "Land_i_Stone_Shed_01_c_clay_F", "Land_i_Shop_02_b_whiteblue_F", "Land_i_Shop_02_b_white_F", "Land_i_Shop_02_b_blue_F", 
"Land_i_Shop_02_b_yellow_F", "Land_i_Shop_02_b_brown_F", "Land_i_Shop_02_b_pink_F", "Land_i_House_Big_01_b_blue_F", "Land_i_House_Big_01_b_white_F", "Land_i_House_Big_01_b_yellow_F", 
"Land_i_House_Big_01_b_brown_F", "Land_i_House_Big_01_b_pink_F", "Land_i_House_Big_02_b_whiteblue_F", "Land_i_House_Big_02_b_white_F", "Land_i_House_Big_02_b_yellow_F", 
"Land_i_House_Big_02_b_brown_F", "Land_i_House_Big_02_b_pink_F", "Land_House_Big_02_F", "Land_House_Small_06_F", "Land_House_Big_01_F", "Land_House_Small_03_F", "Land_House_Small_02_F", 
"Land_House_Small_01_F", "Land_Slum_05_F", "Land_Slum_05_F", "Land_Slum_02_F", "Land_Slum_02_ruins_F", "Land_Slum_01_F", "Land_Slum_03_F", "Land_Slum_04_F", "Land_Shed_07_F", "Land_Shed_05_F", 
"Land_Shop_Town_01_F", "Land_Shop_Town_05_F", "Land_Shop_Town_05_addon_F", "Land_Shop_Town_03_F", "Land_GarageShelter_01_F", "Land_Shop_Town_02_F", "Land_Shop_Town_04_F", "Land_School_01_F", 
"Land_Shop_City_01_F", "Land_Shop_City_02_F", "Land_House_Small_04_F", "Land_House_Small_05_F", "Land_MultistoryBuilding_01_F", "Land_Shop_City_07_F", "Land_Addon_03_F", "Land_Addon_05_F", 
"Land_Addon_01_F", "Land_Shop_City_05_F", "Land_Shop_City_04_F", "Land_House_Big_04_F", "Land_Shop_City_06_F", "Land_House_Big_05_F", "Land_House_Big_03_F", "Land_MultistoryBuilding_04_F", 
"Land_MultistoryBuilding_03_F", "Land_Warehouse_03_F", "Land_House_Native_01_F", "Land_House_Native_02_F", "Land_Temple_Native_01_F", "Land_Supermarket_01_malden_F", "Land_Barn_01_brown_F", 
"Land_Barn_01_grey_F", "Land_FuelStation_03_shop_F", "Land_Workshop_05_F", "Land_Workshop_05_grey_F", "Land_Workshop_03_grey_F", "Land_Workshop_04_grey_F", "Land_Workshop_03_F", 
"Land_Workshop_04_F", "Land_Workshop_01_grey_F", "Land_Workshop_02_grey_F", "Land_Workshop_01_F", "Land_Workshop_02_F", "Land_GarageOffice_01_F", "Land_i_Shed_Ind_old_F", 
"Land_IndustrialShed_01_F", "Land_Factory_02_F", "Land_CementWorks_01_brick_F", "Land_Rail_Station_Small_F", "Land_Rail_Station_Big_F", "Land_Caravan_01_green_F", "Land_Caravan_01_rust_F", 
"Land_Cowshed_01_C_F", "Land_Cowshed_01_B_F", "Land_Cowshed_01_A_F", "Land_Barn_03_large_F", "Land_Barn_03_small_F", "Land_Barn_02_F", "Land_Barn_04_F", "Land_CarService_F", 
"Land_GH_House_1_F", "Land_GH_Gazebo_F", "Land_GH_House_2_F", "Land_Kiosk_blueking_F", "Land_Kiosk_papers_F", "Land_Kiosk_gyros_F", "Land_Kiosk_redburger_F", "Land_FuelStation_Build_F"];

private _ArrayHouseEurope = ["Land_HouseV_2I", "Land_HouseV_1I1", "Land_HouseV_1I1_dam", "Land_HouseV_3I1", "Land_HouseV_3I2", "Land_HouseV_1I2", "Land_HouseV_1L2", "Land_HouseV_1I3", "Land_HouseV_1I4", "Land_HouseV_3I4", 
"Land_HouseV_2L", "Land_HouseV_2L_dam", "Land_HouseV_1L1", "Land_HouseV_1T", "Land_houseV_2T1", "Land_houseV_2T2", "Land_HouseV2_01A", "Land_HouseV2_01A_dam", "Land_HouseV2_01B", 
"Land_HouseV2_01B_dam", "Land_HouseV2_02_Interier", "Land_HouseV2_02_Interier_dam", "Land_HouseV2_02", "Land_HouseV2_03", "Land_HouseV2_03_dam", "Land_HouseV2_03B", "Land_HouseV2_03B_dam", 
"Land_HouseV2_04_interier", "Land_HouseV2_04", "Land_HouseV2_05", "Land_HouseBlock_A1", "Land_HouseBlock_A1_1", "Land_HouseBlock_A2", "Land_HouseBlock_A2_1", "Land_HouseBlock_A3", 
"Land_HouseBlock_B1", "Land_HouseBlock_B2", "Land_HouseBlock_B4", "Land_HouseBlock_B5", "Land_HouseBlock_B6", "Land_HouseBlock_C1", "Land_HouseBlock_C2", "Land_HouseBlock_C3", 
"Land_HouseBlock_C4", "Land_HouseBlock_C5", "Land_HouseBlock_D1", "Land_HouseBlock_D2", "Land_A_MunicipalOffice", "Land_A_Office01", "Land_A_Office02", "Land_A_Pub_01", "Land_HouseB_Tenement", 
"Land_Farm_Cowshed_a", "Land_Farm_Cowshed_a_dam", "Land_Farm_Cowshed_b", "Land_Farm_Cowshed_b_dam", "Land_Farm_Cowshed_c", "Land_Farm_Cowshed_c_dam", "Land_Barn_W_01", "Land_Barn_W_01_dam", 
"Land_Barn_W_02", "Land_Shed_wooden", "Land_Shed_W03", "Land_Shed_W4", "Land_SCH_Classroom_A_01", "Land_SCH_Classroom_B_01", "Land_SCH_Classroom_C_01", "Land_SCH_Corner_01", "Land_SCH_End_A_01", 
"Land_SCH_Entrance_A_02", "Land_SCH_Stairs_A_01", "Land_Rail_House_01", "Land_A_Hospital", "Land_rail_station_big"];

private _ArrayHouseMiddle = ["Land_House_L_1_EP1", "Land_House_L_3_EP1", "Land_House_L_3_dam_EP1", "Land_House_L_3_H_EP1", "Land_House_L_4_EP1", "Land_House_L_4_dam_EP1", "Land_House_L_6_EP1", "Land_House_L_6_dam_EP1", 
"Land_House_L_7_EP1", "Land_House_L_7_dam_EP1", "Land_House_L_8_EP1", "Land_House_L_8_dam_EP1", "Land_House_L_9_EP1", "Land_House_K_1_EP1", "Land_House_K_5_EP1", "Land_House_K_5_dam_EP1", 
"Land_House_K_8_EP1", "Land_House_K_8_dam_EP1", "Land_House_K_6_EP1", "Land_House_K_6_dam_EP1", "Land_House_K_3_EP1", "Land_House_K_3_dam_EP1", "Land_House_K_7_EP1", "Land_House_K_7_dam_EP1", 
"Land_House_K_2_basehide_EP1", "Land_Dum_istan4", "Land_Dum_istan4_big", "Land_Dum_istan2_01", "Land_Dum_istan2_02", "Land_Dum_istan2_04a", "Land_Dum_istan2_03", "Land_Dum_istan2_03a", 
"Land_Dum_istan4_detaily1", "Land_Dum_istan4_inverse", "Land_Dum_istan4_big_inverse", "Land_Dum_istan3_hromada", "Land_House_C_10_EP1", "Land_House_C_11_dam_EP1", "Land_Dum_istan3_pumpa", 
"Land_House_C_5_EP1", "Land_House_C_5_dam_EP1", "Land_House_C_5_V1_EP1", "Land_House_C_5_V1_dam_EP1", "Land_House_C_5_V2_EP1", "Land_House_C_5_V2_dam_EP1", "Land_House_C_5_V3_EP1", 
"Land_House_C_5_V3_dam_EP1", "Land_Dum_istan2", "Land_Dum_istan2b", "Land_Dum_mesto3_istan", "Land_Dum_istan3", "Land_Dum_istan3_hromada2", "Land_A_Villa_EP1", "Land_House_C_4_EP1", 
"Land_House_C_4_dam_EP1", "Land_A_Office01_EP1"];

private _ArrayHouseMiscel = ["Land_Misc_PowerStation", "Land_Shed_Ind02_dam", "Land_Shed_Ind02", "Land_Ind_Workshop01_01", "Land_Ind_Workshop01_02", "Land_Ind_Workshop01_03", "Land_Ind_Workshop01_04", 
"Land_Ind_Workshop01_L", "Land_pila", "Land_bouda_plech_open", "Land_A_GeneralStore_01", "Land_A_GeneralStore_01a", "Land_GeneralStore_01a_PMC", "Land_GeneralStore_01a_dam_PMC", 
"Land_Sara_stodola", "Land_Sara_stodola3", "Land_Ruin_Cowshed_a_PMC", "Land_Ruin_Cowshed_b_PMC", "Land_Ruin_Cowshed_c_PMC", "Land_Sara_domek_podhradi_1", "Land_Hut_old02", "Land_Kulna", 
"Land_Shed_W03_PMC", "Land_Barn_Metal", "Land_Barn_Metal_dam", "Land_Sara_stodola2", "Land_Statek_hl_bud", "Land_Statek_kulna", "Land_Stodola_old", "Land_Stodola_old_open", "Land_Stodola_open", 
"Land_Sara_hasic_zbroj", "Land_Bouda2_vnitrek", "Land_ZalChata", "Land_Shed_W02_PMC", "Land_Sara_domek_hospoda", "Land_Hotel_riviera1", "Land_Hotel_riviera2", "Land_a_stationhouse", 
"Land_A_FuelStation_Build", "Land_Ind_FuelStation_Build_EP1", "Land_FuelStation_Build_PMC", "Land_Vysilac_budova", "Land_Hut02", "Land_Hut04", "Land_Hut06", "Land_Cihlovej_Dum_mini", 
"Land_Cihlovej_Dum_in", "Land_Dum02", "Land_Cihlovej_dum", "Land_Deutshe_mini", "Land_Deutshe", "Land_Domek_rosa", "Land_Garaz_long_open", "Land_Garaz_mala", "Land_Garaz", "Land_Hospital", 
"Land_Hotel", "Land_Sara_domek_ruina", "Land_Dumruina_mini", "Land_Dum_olez_istan2_maly2", "Land_Dum_m2", "Land_Sara_domek01", "Land_Sara_Dum_podloubi03rovny", "Land_OrlHot", 
"Land_Sara_domek_sedy_bez", "Land_Sara_domek02", "Land_Sara_domek04", "Land_Dumruina", "Land_Dum_olezlina", "Land_Dumruina", "Land_Sara_domek_rosa", "Land_Dum_olezlina_closed", 
"Land_Dum_mesto2l", "Land_Sara_Dum_podloubi03klaster", "Land_Dum_olez_istan2_maly", "Land_Sara_domek_vilka", "Land_Dum_mesto_in", "Land_Dum_mesto_in_bare", "Land_Dum_mesto3", 
"Land_Sara_Domek_sedy", "Land_Sara_zluty_statek_in", "Land_Sara_domek_zluty", "Land_House_y", "Land_Ryb_domek", "Land_Dum_rasovna", "Land_Hruzdum", "Land_Dum_mesto2", "Land_Sara_domek05", 
"Land_Sara_domek03", "Land_Sara_zluty_statek", "Land_Sara_domek_zluty_bez", "Land_Dum_mesto", "Land_Dum_olez_istan1_closed", "Land_Dum_olez_istan1_open2", "Land_Dum_olez_istan1", 
"Land_Sara_domek_kovarna", "Land_Dum01", "Land_Panelak3_Grey", "Land_Panelak3", "Land_Panelak", "Land_Panelak1_Grey", "Land_Panelak2", "Land_Panelak2_Grey", "Land_Hospoda_mesto", "Land_Skola", 
"Land_Stanice", "Land_A_BuildingWIP", "Land_Bouda1", "Land_Bouda3", "Land_Kasarna_rohova", "Land_Kasarna_brana", "Land_Kasarna_prujezd"];

private _ArrayReligionIslam = ["Land_House_C_9_EP1", "Land_House_C_9_dam_EP1", "Land_House_C_3_EP1", "Land_House_C_3_dam_EP1", "Land_House_C_2_EP1", "Land_House_C_2_DAM_EP1", "Land_House_C_1_EP1", 
"Land_House_C_1_dam_EP1", "Land_House_C_1_v2_EP1", "Land_House_C_1_v2_dam_EP1", "Land_R_Minaret", "Land_A_Minaret_Porto_EP1", "Land_A_Mosque_big_hq_EP1", "Land_A_Mosque_big_minaret_1_EP1", 
"Land_A_Mosque_big_minaret_2_dam_EP1", "Land_A_Mosque_small_1_EP1", "Land_A_Mosque_small_2_EP1", "Land_A_Mosque_small_2_dam_EP1"];

private _ArrayReligionCatho = ["Land_Church_02", "Land_Church_02a", "Land_Church_03_dam", "Land_Church_03", "Land_Church_01_F", "Land_Church_03_F", "Land_Church_02_F", "Land_Cathedral_01_F", 
"Land_Church_01_V2_F", "Land_Church_05_F", "Land_OrthodoxChurch_03_F", "Land_OrthodoxChurch_02_F", "Land_Church_04_small_red_damaged_F", "Land_Church_04_small_red_F", 
"Land_Church_04_red_damaged_F", "Land_Church_04_red_F", "Land_Church_04_small_white_red_damaged_F", "Land_Church_04_small_white_red_F", "Land_Church_04_white_red_damaged_F", 
"Land_Church_04_small_yellow_damaged_F", "Land_Church_04_small_yellow_F", "Land_Church_04_yellow_damaged_F", "Land_Church_04_yellow_F", "Land_Church_04_small_lightyellow_damaged_F", 
"Land_Church_04_small_lightyellow_F", "Land_Church_04_lightyellow_damaged_F", "Land_Church_04_lightyellow_F", "Land_Church_04_small_lightblue_damaged_F", "Land_Church_04_small_lightblue_F", 
"Land_Church_04_lightblue_damaged_F", "Land_Church_04_lightblue_F", "Land_Church_04_small_white_damaged_F", "Land_Church_01_V1_F", "Land_Chapel_V1_F", "Land_Chapel_Small_V1_F", 
"Land_Chapel_Small_V2_F", "Land_cwa_kostelik", "Land_cwa_kostelin", "Land_cwa_Kostel2", "Land_Church_01", "Land_Kostel", "Land_Kostel2", "Land_Kostel3", "Land_Kostel_mexico"];

Amb_Alive_Sound = [{
	params ["_args", "_handle"];
	
	private _safezone = _args select 0;
	private _typeHouse = _args select 1;
	private _typeReligion = _args select 2;

	if (debug_VLR) then {diag_log format ["Function ambianceAlive (1): SafeZone : %1", _safezone]};
	if (debug_VLR) then {diag_log format ["Function ambianceAlive (2): SafeZone : %1", _typeReligion]};
	if (debug_VLR) then {diag_log format ["Function ambianceAlive (3): SafeZone : %1", _typeHouse]};
	
	private _headlessClients = entities "HeadlessClient_F";
	private _humanPlayers = allPlayers - _headlessClients;
	private _player = selectRandom _humanPlayers;
	private _soundsPosUse = missionNamespace getVariable "SoundPosUse";

	private _pathToSound = "x\alive\addons\amb_civ_population\audio\%1.ogg";
	private _pathToSoundAfrican = "x\alive\addons\amb_civ_population\audio\african\%1.ogg";
	private _pathToSoundBuildings = "x\alive\addons\amb_civ_population\audio\buildings\%1.ogg";
	private _pathToSoundFear = "x\alive\addons\amb_civ_population\audio\fear\%1.ogg";
	private _pathToSoundMiddleEast = "x\alive\addons\amb_civ_population\audio\MiddleEast\%1.ogg";
	private _pathToSoundPacific = "x\alive\addons\amb_civ_population\audio\pacific\%1.ogg";

	_ArrayPets = ["dog5", "dog6", "dog7", "dog9", "dog12", "dog13", "dog18", "dog19", "largedog","smalldog","MiddleEast\cluck4","MiddleEast\cluck6","MiddleEast\goat1"];
	private _soundPets = selectRandom _ArrayPets;

	_ArrayRadio = ["radio1", "radio2", "radio3", "radio4", "radio5", "radio6", "pacific\frenchradionews1", "pacific\frenchradionews2", "MiddleEast\arab_talking", "MiddleEast\s1"];
	private _soundRadio = selectRandom _ArrayRadio;

	_ArrayNight = ["snoring", "African\afrnightsound", "African\afrnightsound2", "African\afrnightsound3"];
	private _soundNight = selectRandom _ArrayNight;
		
	_ArrayMusic = ["track1", "track2", "track4", "track5", "track6", "MiddleEast\arabicsong1", "MiddleEast\arabicsong2", "MiddleEast\music1", "MiddleEast\music2", "MiddleEast\s7", "MiddleEast\s5", "MiddleEast\s12", "MiddleEast\s15", "MiddleEast\s17", "MiddleEast\s19"];
	private _soundMusic = selectRandom _ArrayMusic;
		
	_ArrayAfriSings = ["africansinging", "africansong1", "africansong2", "africansong3", "drums", "drums2"];
	private _soundAfriSings = selectRandom _ArrayAfriSings;
		
	_ArrayAfricanNear = ["afrgrouptalk", "afrgrouptalk2", "afrvillage1", "afrvillage2", "dog12", "dog13", "dog18", "dog19", "largedog"];
	private _soundAfricanNear = selectRandom _ArrayAfricanNear;
		
	_ArrayAfricanFar = ["africancity", "africancity2", "africancity3", "africancity5", "africancity6", "afrvillage3", "afrvillage4", "afrvillage5", "afrvillage6", "freemarket1", "freemarket2", "freemarket3"];
	private _soundAfricanFar = selectRandom _ArrayAfricanFar;
		
	_ArrayMinaret = ["azan1", "azan2", "azan3", "azan4", "azan5", "azan6", "azan7", "azan8", "azan9", "azan10", "prayer2"];
	private _soundMinaret = selectRandom _ArrayMinaret;
		
	_ArrayMosquet = ["prayer1", "prayer3", "prayer4", "prayer5"];
	private _soundMosquet = selectRandom _ArrayMosquet;
		
	_ArrayFear = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"];
	private _soundFear = selectRandom _ArrayFear;
		
	_ArrayMiddleEastNear = ["1", "6", "13", "14", "16", "sfxsound3", "sfxsound4", "sfxsound7"];
	private _soundMiddleEastNear = selectRandom _ArrayMiddleEastNear;
		
	_ArrayMiddleEastFar = ["2", "11", "12", "19", "22", "sfxsound2", "sfxsound5", "sfxsound6", "sfxsound8"];
	private _soundMiddleEastFar = selectRandom _ArrayMiddleEastFar;
	
	_ArrayAllFar = _ArrayAfricanFar + _ArrayMiddleEastFar;
	private _soundAllFar = selectRandom _ArrayAllFar;
	
	_ArrayAllNear = _ArrayAfricanNear + _ArrayMiddleEastNear;
	private _soundAllNear = selectRandom _ArrayAllNear;	
	
	if ((count _humanPlayers > 0) || !(_player inArea _safeZone)) then {
		private _randomNb = round (random 100);
		private _PosFar = [_player, 100, 200, 0, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
		private _PosNear = [_player, 0, 50, 0, 0, 0, 0, [_safeZone], []] call BIS_fnc_findSafePos;
		private _allBuildingsFar = nearestObjects [_PosFar, ["HOUSE", "BUILDING"], 100, true];
		private _allBuildingsNear = nearestObjects [_PosNear, ["HOUSE", "BUILDING"], 100, true];
		private _allBuildings = _allBuildingsFar + _allBuildingsNear;	
		private _Buildings = [];
		private _BuildingsFar = [];
		private _BuildingsNear = [];
		private _BuildingsReli = [];
		private _allGroupFightArea = [];
		
		if (count _allBuildings > 0) then {

			//Check Ai Fight.
			_posPlayer = getpos _player;
			_scanMark = Format ["scanMarker_%1", _randomNb];
			_markerScan = createMarker [_scanMark, _posPlayer];
			_markerScan setMarkerShape "ELLIPSE";
			_markerScan setMarkerSize [200, 200];
			_markerScan setMarkerAlpha 0;
			
			//All Units Near Player
			{
				if ((side _x == btc_enemy_side) && ((getPos (leader _x)) inArea _markerScan) && (behaviour (leader _x) == "COMBAT")) then {
					_allGroupFightArea pushback _x;
				};
				sleep 0.1;
			} foreach allGroups;
			
			//All Building
			{
				if (_x in _typeHouse) then {
					_Buildings pushBack _x
				};
				sleep 0.1;
			} foreach _allBuildings;
			
			if (count _allGroupFightArea < 2) then {

				//Random Music Song
				if ((random 1) > 0.74) then {
					private _randomBuildMus = selectRandom _Buildings;
					private _posRandomBuildMus = getPosASL _randomBuildMus;
					
					if !(_posRandomBuildMus in _soundsPosUse) then {
						_soundsPosUse pushBackUnique _posRandomBuildMus;	
						_Sound = format [_pathToSound, _soundMusic];
						playSound3D [_Sound, _randomBuildMus, false, _posRandomBuildMus, 1, 1, 200];
					};			
				};
						
				//Random Pets Song					
				if ((random 1) > 0.59) then {
					private _randomBuildPets = selectRandom _Buildings;
					private _posRandomBuildPets = getPosASL _randomBuildPets;
					
					if !(_posRandomBuildPets in _soundsPosUse) then {
						_soundsPosUse pushBackUnique _posRandomBuildPets;					
						_Sound = format [_pathToSound, _soundPets];
						playSound3D [_Sound, _randomBuildPets, false, _posRandomBuildPets, 1, 1, 200];
					};
				};	
						
				//Random Pryers
				if (((random 1) > 0.70)) then {
					//All Building Religion Near Player
					{
						if (_x in _typeReligion) then {
							_BuildingsReli pushBack _x
						};
						sleep 0.1;
					} foreach _allBuildings;
					
					sleep 1;
					
					if (count _BuildingsReli > 0) then {
						_BuildingsReliClass = [_BuildingsReli, [], { _player distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
						private _BuildingReli = _BuildingsReliClass select 0;
						private _ArrayMinaret = ["Land_R_Minaret", "Land_A_Minaret_Porto_EP1", "Land_A_Minaret_porto_dam_EP1", "Land_A_Mosque_big_minaret_1_EP1", "Land_A_Mosque_big_minaret_2_EP1"];					
						private _posRandomBuildReli = getPosASL _BuildingReli;

						if !(_posRandomBuildReli in _soundsPosUse) then {
							_soundsPosUse pushBackUnique _posRandomBuildReli;	
							
							if (_BuildingReli in _ArrayMinaret) then {
								//Priere haut parleur						
								_Sound = format [_pathToSoundBuildings, _soundMinaret];
								playSound3D [_Sound, _randomBuild, false, _posRandomBuildReli, 1, 1, 500];						
							} else {	
								_Sound = format [_pathToSoundBuildings, _soundMosquet];
								playSound3D [_sound, _Building, false, _posRandomBuildReli, 1, 1, 200];								
							};
						};
					};
				};	
				
				if (_randomNb >= 40) then {	
					//All Building Far player
					{
						if (_x in _typeHouse) then {
							_BuildingsFar pushBack _x
						};
						sleep 0.1;
					} foreach _allBuildingsFar;				

					sleep 1;

					//Ambiance Sound on housse 100m to the player
					if (count _BuildingsFar > 0) then {
						_BuildingsClass = [_BuildingsFar, [], { _player distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
						private _Building = _BuildingsClass select 0;
						private _posRandomBuild = getPosASL _Building;	
						
						if !(_posRandomBuild in _soundsPosUse) then {						
							_soundsPosUse pushBackUnique _posRandomBuild;	
							if (sunOrMoon < 1) then {
								//Night Time							
								_Sound = format [_pathToSound, _soundNight];
								playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];								
							} else {
								//Day Time
								if (_soundAllFar in _ArrayAfricanFar) then {
									_Sound = format [_pathToSoundAfrican, _soundAllFar];
									playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];		
								} else {
									_Sound = format [_pathToSoundMiddleEast, _soundAllFar];
									playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];									
								};
							};
						};
					};		
				} else {
					//All Building Near player
					{
						if (_x in _typeHouse) then {
							_BuildingsNear pushBack _x
						};
						sleep 0.1;
					} foreach _allBuildingsNear;
					
					sleep 1;
					
					if (count _BuildingsNear > 0) then {
						_BuildingsClass = [_BuildingsNear, [], { _player distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;
						private _Building = _BuildingsClass select 0;
						private _posRandomBuild = getPosASL _Building;	
						
						if !(_posRandomBuild in _soundsPosUse) then {						
							_soundsPosUse pushBackUnique _posRandomBuild;		
							if (sunOrMoon < 1) then {
								//Night Time							
								_Sound = format [_pathToSound, _soundNight];
								playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];
							} else {
								//Day Time
								if (_soundAllNear in _ArrayAfricanFar) then {
									_Sound = format [_pathToSoundAfrican, _soundAllNear];
									playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];		
								} else {
									_Sound = format [_pathToSoundMiddleEast, _soundAllNear];
									playSound3D [_sound, _Building, false, _posRandomBuild, 1, 1, 300];									
								};
							};
						};
					};
				};
			} else {								
				//Random Pets Song					
				if ((random 1) > 0.59) then {
					private _randomBuildPets = selectRandom _Buildings;
					private _posRandomBuildPets = getPosASL _randomBuildPets;
					
					if !(_posRandomBuildPets in _soundsPosUse) then {
						_soundsPosUse pushBackUnique _posRandomBuildPets;					
						_Sound = format [_pathToSound, _soundPets];
						playSound3D [_Sound, _randomBuildPets, false, _posRandomBuildPets, 1, 1, 200];
					};
				};						

				if (count _Buildings > 0) then {
					_BuildingsClassFight = [_Buildings, [], { _player distance2D _x }, "ASCEND"] call BIS_fnc_sortBy;;
					private _BuildingFight = _BuildingsClassFight select 0;
					private _posRandomBuildFight = getPosASL _BuildingFight;	
						
					if !(_posRandomBuildFight in _soundsPosUse) then {						
						_soundsPosUse pushBackUnique _posRandomBuildFight;	
						//fear Song
						_Sound = format [_pathToSoundFear, _soundFear];
						playSound3D [_Sound, _Building, false, getPosASL _Building, 1, 1, 300];
					};	
				};				
			};
		};
	};
	
	if (count (missionNamespace getVariable "SoundPosUse") > 10) then {
		missionNamespace setVariable ["SoundPosUse", [], false];	
	} else {
		missionNamespace setVariable ["SoundPosUse", _soundsPosUse, false];
	};
}, ((round (random 100)) + 100), [_safezone, _ArrayHouseMiddle, _ArrayReligionIslam]] call CBA_fnc_addPerFrameHandler;

















