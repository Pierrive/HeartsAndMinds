btc_custom_loc = [
/*
    DESCRIPTION: [POS(Array),TYPE(String),NAME(String),RADIUS X(Number),RADIUS X(Number),IS OCCUPIED(Bool)]
    Possible types: "NameVillage","NameCity","NameCityCapital","NameLocal","Hill","Airport","NameMarine"
    EXAMPLE: [[13132.8,3315.07,0.00128174],"NameVillage","Mountain 1",800,800,true]
*/

	[[11006.5,19646.1,0],"NameVillage","Baker Outpost",120,120,true],
	[[15653.8,17235.4,0],"NameCity","Camp Branca",250,350,true],
	[[14184.5,8344.31,0],"NameCity","Camp Kino",200,200,true],
	[[4891.17,13769.8,0],"NameCity","Camp Mike One",250,150,true],
	[[17482.1,6064.28,0],"NameVillage","Camp Mike Two",120,120,true],
	[[8443.04,10575.1,0],"NameVillage","Punta Cuervo",100,100,true],
	[[8185.86,8665.02,0],"NameVillage","Robstrepo",100,100,true]
];

/*
    Here you can specify which equipment should be added or removed from the arsenal.
    Please take care that there are different categories (weapons, magazines, items, backpacks) for different pieces of equipment into which you have to classify the classnames.
    In all cases, you need the classname of an object.

    Attention: The function of these lists depends on the setting in the mission parameter (Restrict arsenal).
        - "Full": here you have only the registered items in the arsenal available.
        - "Remove only": here all registered items are removed from the arsenal. This only works for the ACE3 arsenal!

    Example(s):
        private _weapons = [
            "arifle_MX_F",          //Classname for the rifle MX
            "arifle_MX_SW_F",       //Classname for the rifle MX LSW
            "arifle_MXC_F"          //Classname for the rifle MXC
        ];

        private _items = [
            "G_Shades_Black",
            "G_Shades_Blue",
            "G_Shades_Green"
        ];
*/
private _weapons = [
	"OFrP_AANF1_FM",
	"OFrP_FAMAS_F1",
	"OFrP_FAMAS_F1_GLM203",
	"OFrP_FAMAS_FELIN",
	"OFrP_FAMAS_VAL",
	"OFrP_FAMAS_VAL_GLM203",
	"OFrP_FRF2",
	"OFrP_HK416F_C",
	"OFrP_HK416F_C_HK269",
	"OFrP_HK416F_S",
	"OFrP_HK416F_S_HK269",
	"OFrP_HK417A1_20",
	"OFrP_Minimi_Para_556",
	"OFrP_Minimi_Para_762",
	"OFrP_PGM_Hecate2",
	"AMF_Samas_F1_01_F",
	"AMF_Samas_F1_01_camo_F",
	"AMF_Famas_valo_01_F",
	"AMF_RFF2_01_F",
	"AMF_614_long_01_F",
	"AMF_614_long_ag_01_F",
	"AMF_614_long_VG_01_F",
	"AMF_614_long_HK269_01_F",
	"AMF_614_short_01_F",
	"AMF_614_short_ag_01_F",
	"AMF_614_short_vg_01_F",
	"AMF_714_Long_01_F",
	"AMF_714_short_01_F",
	"AMF_MINI_MG_01_F",
	"AMF_Perseis_II_01_F",
	"AMF_Perseis_II_02_F",
	"AMF_PGM_ULTIMA_RATIO_01_F",
	"AMF_Glock_17",
	"AMF_Pamas",
	"hgun_esd_01_F",
	"OFrP_Glock17_Gen4",
	"OFrP_PAMAS",
	"ACE_Flashlight_Maglite_ML300L",
	"ACE_VMH3",
	"ACE_VMM3",
	"OFrP_AT4CS_Loaded",
	"OFrP_AT4CS_Inert_Loaded",
	"OFrP_ERYX",
	"launch_MRAWS_sand_rail_F",
	"launch_MRAWS_sand_F",
	"rhs_weap_m249_pip_S",
	"rhs_weap_minimi_para_railed",
	"LMG_03_F",
	
		//Lanceur
	"rhs_weap_fgm148",
	"rhs_weap_fim92",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_maaws",
	"rhs_weap_m72a7",
	"rhs_weap_smaw",
	"rhs_weap_smaw_green",
	"launch_NLAW_F",
	"launch_B_Titan_short_tna_F",
	"launch_B_Titan_tna_F",
	
	//Guns
	"rhsusf_weap_m9",
	"rhsusf_weap_glock17g4",
	"rhsusf_weap_m1911a1",
	"rhs_weap_M320",
	"hgun_Pistol_heavy_01_green_F",
	"hgun_esd_01_F",
	"ACE_Flashlight_Maglite_ML300L",
	"ACE_VMH3",
	"ACE_VMM3",
	"rhs_weap_rsp30_white",
	"rhs_weap_rsp30_green",
	"rhs_weap_rsp30_red"
];

private _magazines = [
	"MRAWS_HE_F",
	"MRAWS_HEAT_F",
	"rhs_fim92_mag",
	"OFrP_1Rnd_136_ERYX",
	"OFrP_15Rnd_9x19_PAMAS",
	"OFrP_17Rnd_9x19_Glock17",
	"17Rnd_9x21_Mag",
	"16Rnd_9x21_Mag",
	"1Rnd_GAM_40",
	"25Rnd_samas_f1_mag",
	"25Rnd_samas_f1_mag_Tracer_green",
	"25Rnd_samas_f1_mag_Tracer_red",
	"25Rnd_samas_f1_mag_Tracer_yellow",
	"10Rnd_762x54_Mag",
	"30Rnd_556x45_Stanag_Tracer_Yellow",
	"30Rnd_556x45_Stanag",
	"30Rnd_556x45_Stanag_red",
	"30Rnd_556x45_Stanag_green",
	"30Rnd_556x45_Stanag_Tracer_Red",
	"30Rnd_556x45_Stanag_Tracer_Green",
	"1Rnd_HE_Grenade_shell",
	"UGL_FlareRed_F",
	"UGL_FlareGreen_F",
	"UGL_FlareCIR_F",
	"UGL_FlareWhite_F",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"20Rnd_762x51_HK417_mag",
	"20Rnd_762x51_HK417_Tracer_green_mag",
	"20Rnd_762x51_HK417_Tracer_red_mag",
	"20Rnd_762x51_HK417_Tracer_yellow_mag",
	"150Rnd_MINI_MG_mag",
	"150Rnd_MINI_MG_mag_Tracer_green",
	"150Rnd_MINI_MG_mag_Tracer_red",
	"150Rnd_MINI_MG_mag_tracer_yellow",
	"7Rnd_Perseis_II_mag",
	"7Rnd_Perseis_II_mag_Tracer_green",
	"7Rnd_Perseis_II_mag_Tracer_red",
	"7Rnd_Perseis_II_mag_Tracer_yellow",
	"OFrP_AANF1_50Rnd_762x51",
	"OFrP_25Rnd_556x45",
	"OFrP_1Rnd_Grenade_AC58",
	"OFrP_1Rnd_Grenade_APAV40",
	"OFrP_10Rnd_762x51",
	"OFrP_HK417_10Rnd_762x51",
	"OFrP_HK417_20Rnd_762x51",
	"OFrP_Minimi_100Rnd_556x45",
	"OFrP_Minimi_200Rnd_556x45",
	"OFrP_Minimi_100Rnd_762x51",
	"OFrP_7Rnd_127x99",
	"OFrP_7Rnd_127x99_APEI",
	"rhsusf_200rnd_556x45_mixed_box",
	"rhsusf_200Rnd_556x45_box",
	"rhs_weap_M107",
	"ACE_HuntIR_M203",
	"ACE_40mm_Flare_ir",
	"Laserbatteries",
	"rhs_fgm148_magazine_AT",
	"Titan_AA",
	"rhs_mag_maaws_HE",
	"rhs_mag_maaws_HEDP",
	"rhs_mag_maaws_HEAT",
	"rhs_mag_smaw_HEDP",
	"rhs_mag_smaw_HEAA",
	
	/*Mine*/
	"APERSMineDispenser_Mag", "ACE_FlareTripMine_Mag", "DemoCharge_Remote_Mag", "rhsusf_mine_m14_mag", "ATMine_Range_Mag", "SatchelCharge_Remote_Mag", "ClaymoreDirectionalMine_Remote_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "Drone_Range_Mag", "TrainingMine_Mag", "APERSMine_Range_Mag",

	/*Grenade Main*/
	"ACE_M14", "Chemlight_blue", "Chemlight_yellow", "Chemlight_red", "Chemlight_green", "ACE_CTS9", "ACE_Chemlight_White", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiBlue", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_UltraHiOrange", "B_IR_Grenade", "ACE_HandFlare_White", "ACE_HandFlare_Yellow", "ACE_HandFlare_Red", "ACE_HandFlare_Green", "SmokeShellBlue", "SmokeShellYellow", "SmokeShellOrange", "SmokeShellPurple", "SmokeShellRed", "SmokeShellGreen", "HandGrenade", "SmokeShell", "ACE_M84", "MiniGrenade", "rhs_mag_m18_green", "rhs_mag_m67"
];

private _items = [
	/*vest*/
	"amf_plate_carrier_tan", "amf_plate_carrier3_green", "amf_plate_carrier3_tan", "amf_plate_carrier_green", "amf_smb_mc_grn", "amf_smb_mc", "amf_smb_mcb_grn", "amf_smb_mcb", "amf_smb_tl_grn", "amf_smb_tl", "amf_smb_tlb_grn", "amf_smb_tlb", "amf_smb_in_grn", "amf_smb_in", "amf_smb_inb_grn", "amf_smb_inb", "amf_smb_gr_grn", "amf_smb_gr", "amf_smb_grb_grn", "amf_smb_grb", "amf_smb_me_grn", "amf_smb_me", "amf_smb_meb_grn", "amf_smb_meb", "V_Press_F", "V_Rangemaster_belt", "V_PlateCarrier2_blk", "V_PlateCarrier2_rgr", "V_RebreatherB", "V_TacVest_gen_F", "OFrP_Vest_CIRAS_CB", "OFrP_Vest_CIRAS_MJK", "OFrP_Vest_CIRAS_OD", "OFrP_Vest_CIRAS_TeamLeader_CB", "OFrP_Vest_CIRAS_TeamLeader_MJK", "OFrP_Vest_CIRAS_TeamLeader_OD", "OFrP_Vest_CIRAS_Rifleman_CB", "OFrP_Vest_CIRAS_Rifleman_MJK", "OFrP_Vest_CIRAS_Rifleman_OD", "OFrP_Vest_CIRAS_Grenadier_CB", "OFrP_Vest_CIRAS_Grenadier_MJK", "OFrP_Vest_CIRAS_Grenadier_OD", "OFrP_Vest_CIRAS_Medic_CB", "OFrP_Vest_CIRAS_Medic_MJK", "OFrP_Vest_CIRAS_Medic_OD", "OFrP_Vest_CIRAS_MachineGunner_CB", "OFrP_Vest_CIRAS_MachineGunner_MJK", "OFrP_Vest_CIRAS_MachineGunner_OD", "OFrP_Vest_CIRAS_Marksman2_CB", "OFrP_Vest_CIRAS_Marksman2_MJK", "OFrP_Vest_CIRAS_Marksman2_OD", "OFrP_Vest_CIRAS_Marksman1_CB", "OFrP_Vest_CIRAS_Marksman1_MJK", "OFrP_Vest_CIRAS_Marksman1_OD", "OFrP_Vest_S3_CE", "OFrP_Vest_S3_DA", "OFrP_Vest_S3_Full_CE", "OFrP_Vest_S3_Full_DA", "OFrP_Vest_SMB_CB", "OFrP_Vest_SMB_Kaki", "OFrP_Vest_SMB_Teamleader_CB", "OFrP_Vest_SMB_Teamleader_Kaki", "OFrP_Vest_SMB_Rifleman_CB", "OFrP_Vest_SMB_Rifleman_Kaki", "OFrP_Vest_SMB_Grenadier_CB", "OFrP_Vest_SMB_Grenadier_Kaki", "OFrP_Vest_SMB_Medic_CB", "OFrP_Vest_SMB_Medic_Kaki", "OFrP_Vest_SMB_MachineGunner_CB", "OFrP_Vest_SMB_MachineGunner_Kaki", "OFrP_Vest_SMB_Marksman2_CB", "OFrP_Vest_SMB_Marksman2_Kaki", "OFrP_Vest_SMB_Marksman1_CB", "OFrP_Vest_SMB_Marksman1_Kaki",
	
	/*Lunette*/
	"G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_khk", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Shades_Blue", "G_Shades_Black", "G_Shades_Red", "G_Shades_Green", "G_Squares_Tinted", "G_Lady_Blue", "G_Sport_Red", "G_Sport_Checkered", "G_Sport_Greenblack", "G_Tactical_Black", "G_Sport_Blackred", "G_Tactical_Clear", "G_Lowprofile", "G_Squares", "G_Spectacles", "G_Aviator", "G_Combat", "G_Diving", "G_B_Diving", "G_Goggles_VR", "G_Spectacles_Tinted", "G_AirPurifyingRespirator_01_F", "G_Blindfold_01_white_F", "G_Blindfold_01_black_F", "G_RegulatorMask_F", "G_WirelessEarpiece_F", "G_Respirator_white_F",
	
	/*uniform*/
	"U_B_FullGhillie_ard", "U_B_FullGhillie_sard", "U_C_WorkerCoveralls", "U_B_GhillieSuit", "U_B_PilotCoveralls", "U_B_Wetsuit", "U_B_HeliPilotCoveralls", "U_BG_Guerrilla_6_1", "U_B_GEN_Commander_F", "U_B_GEN_Soldier_F", "amf_uniform_01_CE_OD", "amf_uniform_01_CE", "amf_uniform_01_DA", "amf_uniform_01_S", "U_I_E_CBRN_Suit_01_EAF_F", "U_B_CBRN_Suit_01_MTP_F", "U_O_R_Gorka_01_black_F", "OFrP_Uniform_T4S2_Full_CE", "OFrP_Uniform_T4S2_Full_DA", "OFrP_Uniform_T4S2_Full_SE", "OFrP_Uniform_T4S2_Short_CE", "OFrP_Uniform_T4S2_Short_DA", "OFrP_Uniform_T4S2_Short_SE", "OFrP_Uniform_T4S2_UBAS_CE01", "OFrP_Uniform_T4S2_UBAS_CE02", "OFrP_Uniform_T4S2_UBAS_DA01", "OFrP_Uniform_T4S2_UBAS_SE01", "OFrP_Uniform_T4S2_UBAS_SE02", "U_C_IDAP_Man_casual_F",

	/*casque*/
	"H_PilotHelmetHeli_B", "H_PilotHelmetFighter_B", "H_Watchcap_khk", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Booniehat_khk", "H_Booniehat_khk_hs", "H_Booniehat_mcamo", "H_Booniehat_tan", "AMF_FE_LIN", "AMF_FE_LIN_DA", "AMF_FE_LIN_TA", "AMF_kepi_legio_01", "AMF_kepi_legio_03", "AMF_kepi_legio_02", "AMF_TS3000_01_od", "AMF_TS3000_01_snake", "AMF_TS3000_01_tan", "AMF_TS3000_01_cover", "AMF_TS3000_01_da_cover", "OFrP_Hat_Beret_126RI", "OFrP_Hat_Beret_1RI", "OFrP_Hat_Beret_24RI", "OFrP_Hat_Beret_35RI", "OFrP_Hat_Beret_92RI", "OFrP_Hat_Beret_CM", "OFrP_Hat_Beret_CPA", "OFrP_Hat_Beret_FUSMA", "OFrP_Hat_Beret_Legion", "OFrP_Hat_Beret_ONU", "OFrP_Hat_Bob_CE", "OFrP_Hat_Bob_DA", "OFrP_Helmet_F1", "OFrP_Helmet_F1_cover_CE", "OFrP_Helmet_F1_cover_DA", "OFrP_Helmet_FELIN_CE", "OFrP_Helmet_FELIN_TAN", "OFrP_Helmet_FELIN_ESSCOVER_CE", "OFrP_Helmet_FELIN_ESSCOVER_TAN", "OFrP_Helmet_Spectra_01_CE", "OFrP_Helmet_Spectra_02_CE", "OFrP_Helmet_Spectra_01_DA", "OFrP_Helmet_Spectra_02_DA", "OFrP_Helmet_Spectra_OD", "OFrP_Helmet_Spectra_UN", "OFrP_Helmet_Spectra_01_ESSCOVER_CE", "OFrP_Helmet_Spectra_02_ESSCOVER_CE", "OFrP_Helmet_Spectra_01_ESSCOVER_DA", "OFrP_Helmet_Spectra_ESSCOVER_OD", "OFrP_Helmet_TC3000_cover_CE", "OFrP_Helmet_TC3000_cover_DA", "OFrP_Helmet_TC3000_OD", "OFrP_Helmet_TC3000_TAN", "OFrP_Helmet_TC3000_cover_ESSCOVER_CE", "OFrP_Helmet_TC3000_cover_ESSCOVER_DA", "OFrP_Helmet_TC3000_ESSCOVER_OD", "OFrP_Helmet_TC3000_ESSCOVER_TAN", "OFrP_Hat_Kepi_Legion_Sdt", "OFrP_Hat_Tarte", "H_HeadBandage_clean_F", "H_HeadBandage_stained_F", "H_HeadBandage_bloody_F", "H_Hat_Safari_sand_F",

	/*jumelle*/
	"Laserdesignator", "Binocular", "Rangefinder", "ACE_MX2A", "ace_dragon_sight", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450",
	
	/*another item*/
	"ItemMap", "B_UavTerminal", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ItemWatch", "ChemicalDetector_01_watch_F", "ACE_Altimeter", "TFAR_microdagr",
	
	/*ACE Item*/
	"FirstAidKit", "ACE_ATragMX", "ACE_splint", "ACE_epinephrine", "ACE_adenosine", "ACE_morphine", "ACE_IR_Strobe_Item", "ACE_packingBandage", "ACE_elasticBandage", "ACE_UAVBattery", "ACE_EarPlugs", "ACE_WaterBottle", "ACE_WaterBottle_Half", "amp_slingload_CargoSling", "ALIVE_Tablet", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "adv_aceCPR_AED", "MineDetector", "ACE_DeadManSwitch", "ACE_DAGR", "ACE_M26_Clacker", "ACE_Clacker", "ACE_HuntIR_monitor", "ACE_Chemlight_Shield", "ACE_Fortify", "ACE_Flashlight_MX991", "ACE_tourniquet", "ACE_bodyBag", "ACE_Kestrel4500", "ACE_DefusalKit", "ACE_Tripod", "ACE_Flashlight_KSF1", "ACE_SpottingScope", "ACE_Flashlight_XL50", "ACE_microDAGR", "ACE_MapTools", "ACE_quikclot", "ACE_fieldDressing", "ACE_SpraypaintBlue", "ACE_SpraypaintBlack", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_EntrenchingTool", "ACE_wirecutter", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_CableTie", "ACE_salineIV", "ACE_salineIV_250", "ACE_salineIV_500", "ACE_RangeCard", "ACE_RangeTable_82mm", "ACE_artilleryTable", "ToolKit", "ACE_surgicalKit", "Medikit", "ACE_personalAidKit",

	/*Viseur*/
	"rhsusf_acc_acog_rmr", "optic_arco_blk_f", "optic_erco_blk_f", "rhsusf_acc_elcan", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rhsusf_acc_compm4", "rhsusf_acc_su230_mrds", "rhsusf_acc_eotech_xps3", "OFrP_OpticItem_AIMPoint_CompM2M68", "AMF_Aimpoint_Pro_Patrol", "AMF_Eotech_552", "AMF_EOTECH_553", "AMF_Red_Dot_Sight", "AMF_Scrome_J8", "optic_Arco_arid_F", "optic_Yorris", "optic_DMS", "optic_Aco", "optic_ACO_grn", "optic_Arco", "OFrP_OpticItem_EOTech_552", "OFrP_EOTech_Magnifier_UP", "optic_Holosight", "optic_Holosight_arid_F", "optic_MRCO", "optic_KHS_tan", "optic_Hamr", "OFrP_fake_optic_FAMAS_F1", "optic_SOS", "optic_MRD", "optic_LRPS", "optic_Nightstalker", "optic_NVS", "OFrP_OpticItem_SwordTD", "OFrP_OpticItem_Scrome_J10", "OFrP_OpticItem_Scrome_J4", "OFrP_OpticItem_Scrome_J4_Famas", "OFrP_OpticItem_Scrome_J8", "optic_ERCO_snd_F",

	/*Accessoire Weapon*/
	"AMF_AN_PEQ_15_green", "AMF_AN_PEQ_15_tan", "AMF_LASER_PIRATE", "AMF_M952_VBK_black", "AMF_M952_VBK_camo", "OFrP_fake_side_HK416F", "acc_esd_01_flashlight", "acc_flashlight_pistol", "OFrP_fake_side_FAMAS_F1", "OFrP_pointer_PIRAT_EL9A", "OFrP_pointer_PIRAT_EL9B", "acc_pointer_IR", "ACE_acc_pointer_green", "acc_flashlight_smg_01", "acc_flashlight",

	/*Silencieux*/
	"rhsusf_acc_nt4_black", "muzzle_antenna_03_f", "muzzle_antenna_02_f", "muzzle_antenna_01_f", "OFrP_muzzle_bayonets_FAMAS", "OFrP_muzzle_bayonets_HK416F", "ACE_muzzle_mzls_338", "ACE_muzzle_mzls_smg_01", "ACE_muzzle_mzls_L", "ACE_muzzle_mzls_H", "ACE_muzzle_mzls_B", "ACE_muzzle_mzls_smg_02", "ACE_muzzle_mzls_93mmg", "muzzle_snds_acp", "muzzle_snds_M", "muzzle_snds_m_snd_F", "muzzle_snds_H", "muzzle_snds_570", "muzzle_snds_H_snd_F", "muzzle_snds_B", "muzzle_snds_B_snd_F", "muzzle_snds_B_arid_F", "muzzle_snds_L", "muzzle_snds_58_blk_F", "muzzle_snds_65_TI_blk_F", "muzzle_snds_H_MG_blk_F", "muzzle_snds_338_black", "muzzle_snds_338_sand", "bipod_02_F_arid", "bipod_01_F_mtp", "bipod_01_F_blk", "bipod_01_F_snd", "ChemicalDetector_01_tan_F", "ChemicalDetector_01_black_F", "ChemicalDetector_01_olive_F", "ofrp_acc_grip1", "rhsusf_acc_saw_bipod", "rhsusf_acc_grip4",

	/*JVN*/
	"NVGoggles", "NVGoggles_OPFOR", "ACE_NVG_Wide", "OFrP_Lucie", "OFrP_Lucie_Mask", "OFrP_OVD"
];

private _backpacks = [
	"B_UGV_02_Science_backpack_F",
	"B_UGV_02_Demining_backpack_F",
	"B_W_Static_Designator_01_weapon_F",
	"LOP_PMC_FalconII_MK14", 
	"B_AssaultPack_cbr", 
	"B_AssaultPack_khk", 
	"B_AssaultPack_blk", 
	"B_AssaultPack_mcamo", 
	"B_AssaultPack_rgr", 
	"B_Kitbag_cbr", 
	"B_FieldPack_cbr", 
	"B_FieldPack_khk", 
	"B_Kitbag_tan", 
	"B_Kitbag_mcamo", 
	"B_FieldPack_blk", 
	"B_FieldPack_oli", 
	"B_Kitbag_sgg", 
	"B_Kitbag_rgr", 
	"B_Parachute", 
	"B_Carryall_mcamo", 
	"B_Carryall_oli", 
	"B_Carryall_cbr", 
	"B_Carryall_khk", 
	"B_TacticalPack_mcamo", 
	"B_TacticalPack_blk", 
	"B_TacticalPack_oli", 
	"B_UAV_01_backpack_F", 
	"B_Bergen_mcamo_F", 
	"AMF_FELIN_BACKPACK", 
	"AMF_FELIN_BACKPACK_TAN", 
	"O_AMF_A_E_B_support_F", 
	"O_AMF_A_E_B_weapon_F", 
	"B_SCBA_01_F", 
	"B_CombinationUnitRespirator_01_F", 
	"ACE_TacticalLadder_Pack", 
	"ACE_NonSteerableParachute", 
	"ace_gunbag", 
	"ace_gunbag_Tan",
	"TFAR_anarc210", 
	"TFAR_anprc155_coyote", 
	"TFAR_mr3000_bwmod_tropen", 
	"TFAR_mr3000_multicam", 
	"TFAR_mr6000l", 
	"TFAR_rt1523g", 
	"TFAR_rt1523g_big", 
	"TFAR_rt1523g_big_bwmod_tropen", 
	"TFAR_rt1523g_big_rhs", 
	"TFAR_rt1523g_black", 
	"TFAR_rt1523g_rhs", 
	"TFAR_rt1523g_sage"
];

btc_custom_arsenal = [_weapons, _magazines, _items, _backpacks];

/*
    Here you can specify which equipment is loaded on player connection.
*/

private _radio = ["tf_anprc152", "ACRE_PRC152"] select (isClass(configFile >> "cfgPatches" >> "acre_main"));
//Array of colored item: 0 - Desert, 1 - Tropic, 2 - Black, 3 - forest
private _uniforms = ["U_B_CombatUniform_mcam", "U_B_CTRG_Soldier_F", "U_B_CTRG_1", "U_B_CombatUniform_mcam_wdl_f"];
private _vests = ["V_PlateCarrierH_CTRG", "V_PlateCarrier2_rgr_noflag_F", "V_PlateCarrierH_CTRG", "V_PlateCarrier2_wdl"];
private _helmets = ["H_HelmetSpecB_paint2", "H_HelmetB_Enh_tna_F", "H_HelmetSpecB_blk", "H_HelmetSpecB_wdl"];
private _hoods = ["G_Balaclava_combat", "G_Balaclava_TI_G_tna_F", "G_Balaclava_combat", "G_Balaclava_combat"];
private _laserdesignators = ["Laserdesignator", "Laserdesignator_03", "Laserdesignator_01_khk_F", "Laserdesignator_01_khk_F"];
private _night_visions = ["NVGoggles", "NVGoggles_INDEP", "NVGoggles_OPFOR", "NVGoggles_INDEP"];
private _weapons = ["arifle_MXC_F", "arifle_MXC_khk_F", "arifle_MXC_Black_F", "arifle_MXC_Black_F"];
private _weapons_machineGunner = ["arifle_MX_SW_F", "arifle_MX_SW_khk_F", "arifle_MX_SW_Black_F", "arifle_MX_SW_Black_F"];
private _weapons_sniper = ["arifle_MXM_F", "arifle_MXM_khk_F", "arifle_MXM_Black_F", "arifle_MXM_Black_F"];
private _bipods = ["bipod_01_F_snd", "bipod_01_F_khk", "bipod_01_F_blk", "bipod_01_F_blk"];
private _pistols = ["hgun_P07_F", "hgun_P07_khk_F", "hgun_P07_F", "hgun_P07_khk_F"];
private _launcher_AT = ["launch_B_Titan_short_F", "launch_B_Titan_short_tna_F", "launch_O_Titan_short_F", "launch_B_Titan_short_tna_F"];
private _launcher_AA = ["launch_B_Titan_F", "launch_B_Titan_tna_F", "launch_O_Titan_F", "launch_B_Titan_tna_F"];
private _backpacks = ["B_AssaultPack_Kerry", "B_AssaultPack_eaf_F", "B_AssaultPack_blk", "B_AssaultPack_wdl_F"];
private _backpacks_big = ["B_Kitbag_mcamo", "B_Kitbag_rgr", "B_Kitbag_rgr", "B_Kitbag_rgr"];

btc_arsenal_loadout = [_uniforms, _vests, _helmets, _hoods, _laserdesignators, _night_visions, _weapons, _weapons_sniper, _weapons_machineGunner, _bipods, _pistols, _launcher_AT, _launcher_AA, _backpacks, _backpacks_big, [_radio, _radio, _radio, _radio]];
