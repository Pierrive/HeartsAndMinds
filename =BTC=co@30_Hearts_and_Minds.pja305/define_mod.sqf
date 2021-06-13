btc_custom_loc = [
/*
    DESCRIPTION: [POS(Array),TYPE(String),NAME(String),RADIUS X(Number),RADIUS X(Number),IS OCCUPIED(Bool)]
    Possible types: "NameVillage","NameCity","NameCityCapital","NameLocal","Hill","Airport","NameMarine"
    EXAMPLE: [[13132.8,3315.07,0.00128174],"NameVillage","Mountain 1",800,800,true]
*/
	[[18496.5,11323.2,0],"NameVillage","Taloqan",200,200,true],
	[[17646.2,13963.4,0],"NameCity","Baglan",200,200,true],
	[[18208.8,15720.1,0],"NameVillage","Balkh",200,200,true],
	[[9622.24,12602.4,0],"NameVillage","Rustaq",300,300,true],
	[[6231.76,16500.7,0],"NameVillage","Kushk",200,200,true],
	[[2684.3,3645.37,0],"NameVillage","Balalon",400,400,true],
	[[2370.66,1203.51,0],"NameVillage","Apal",200,200,true]
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
	"AMF_Samas_F1_01_F",
	"AMF_Samas_FELIN_01_F",
	"AMF_Samas_G2_01_F",
	"AMF_Samas_VALO_01_F",
	"AMF_SCAR_H_01_F",
	"AMF_RFF2_01_F",
	"AMF_614_short_01_F",
	"AMF_614_short_ag_01_F",
	"AMF_614_short_vg_01_F",
	"AMF_614_long_01_F",
	"AMF_614_long_ag_01_F",
	"AMF_614_long_VG_01_F",
	"AMF_614_long_HK269_01_F",
	"AMF_714_short_01_F",
	"AMF_714_Long_01_F",
	"amf_hk_mp5_01_f",
	"AMF_MINI_MG_01_F",
	"AMF_Perseis_II_01_F",
	"AMF_Perseis_II_02_F",
	"AMF_PGM_ULTIMA_RATIO_01_F",
	"AMF_Glock_17",
	"AMF_Pamas",
	"hgun_esd_01_F",
	"ACE_Flashlight_Maglite_ML300L",
	"ACE_VMH3",
	"ACE_VMM3",
	"rhs_weap_M136",
	"rhs_weap_M136_hedp",
	"rhs_weap_M136_hp",
	"rhs_weap_fim92",
	"launch_MRAWS_sand_rail_F",
	"launch_MRAWS_sand_F",
	"rhs_weap_m249_pip_S",
	"rhs_weap_minimi_para_railed",
	"rhs_weap_sr25",
	"rhs_weap_sr25_d",
	"rhs_weap_sr25_ec",
	"rhs_weap_sr25_ec_d",
	"LMG_03_F"
];

private _magazines = [
	"MRAWS_HE_F",
	"MRAWS_HEAT_F",
	"rhs_fim92_mag",
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
	"rhsusf_200rnd_556x45_mixed_box",
	"rhsusf_200Rnd_556x45_box",
	"ACE_HuntIR_M203",
	"ACE_40mm_Flare_ir",
	"Laserbatteries",
	"rhsusf_20Rnd_762x51_SR25_m62_Mag",
	"rhsusf_20Rnd_762x51_SR25_m993_Mag",
	"rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
	"20Rnd_762x51_Mag",
	"10Rnd_762x51_Mag",
	"30Rnd_9x19_mag",
	"30Rnd_9x19_mag_red_Tracer",
	
	/*Mine*/
	"APERSMineDispenser_Mag", "ACE_FlareTripMine_Mag", "DemoCharge_Remote_Mag", "rhsusf_mine_m14_mag", "ATMine_Range_Mag", "SatchelCharge_Remote_Mag", "ClaymoreDirectionalMine_Remote_Mag", "APERSBoundingMine_Range_Mag", "SLAMDirectionalMine_Wire_Mag", "Drone_Range_Mag", "TrainingMine_Mag", "APERSMine_Range_Mag",

	/*Grenade Main*/
	"ACE_M14", "Chemlight_blue", "Chemlight_yellow", "Chemlight_red", "Chemlight_green", "ACE_CTS9", "ACE_Chemlight_White", "ACE_Chemlight_IR", "ACE_Chemlight_Orange", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiBlue", "ACE_Chemlight_HiYellow", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiGreen", "ACE_Chemlight_UltraHiOrange", "B_IR_Grenade", "ACE_HandFlare_White", "ACE_HandFlare_Yellow", "ACE_HandFlare_Red", "ACE_HandFlare_Green", "SmokeShellBlue", "SmokeShellYellow", "SmokeShellOrange", "SmokeShellPurple", "SmokeShellRed", "SmokeShellGreen", "HandGrenade", "SmokeShell", "ACE_M84", "MiniGrenade"
];

private _items = [
	/*vest*/
	"amf_plate_carrier_tan", "amf_plate_carrier3_green", "amf_plate_carrier3_tan", "amf_plate_carrier_green", "amf_smb_mc_grn", "amf_smb_mc", "amf_smb_mcb_grn", "amf_smb_mcb", "amf_smb_tl_grn", "amf_smb_tl", "amf_smb_tlb_grn", "amf_smb_tlb", "amf_smb_in_grn", "amf_smb_in", "amf_smb_inb_grn", "amf_smb_inb", "amf_smb_gr_grn", "amf_smb_gr", "amf_smb_grb_grn", "amf_smb_grb", "amf_smb_me_grn", "amf_smb_me", "amf_smb_meb_grn", "amf_smb_meb", "V_Press_F", "V_Rangemaster_belt", "V_PlateCarrier2_blk", "V_PlateCarrier2_rgr", "V_RebreatherB", "V_TacVest_gen_F",
	
	/*Lunette*/
	"G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_khk", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Shades_Blue", "G_Shades_Black", "G_Shades_Red", "G_Shades_Green", "G_Squares_Tinted", "G_Lady_Blue", "G_Sport_Red", "G_Sport_Checkered", "G_Sport_Greenblack", "G_Tactical_Black", "G_Sport_Blackred", "G_Tactical_Clear", "G_Lowprofile", "G_Squares", "G_Spectacles", "G_Aviator", "G_Combat", "G_Diving", "G_B_Diving", "G_Goggles_VR", "G_Spectacles_Tinted", "G_AirPurifyingRespirator_01_F", "G_Blindfold_01_white_F", "G_Blindfold_01_black_F", "G_RegulatorMask_F", "G_WirelessEarpiece_F", "G_Respirator_white_F",
	
	/*uniform*/
	"U_B_FullGhillie_ard", "U_B_FullGhillie_sard", "U_C_WorkerCoveralls", "U_B_GhillieSuit", "U_B_PilotCoveralls", "U_B_Wetsuit", "U_B_HeliPilotCoveralls", "U_BG_Guerrilla_6_1", "U_B_GEN_Commander_F", "U_B_GEN_Soldier_F", "amf_uniform_01_CE_OD", "amf_uniform_01_CE", "amf_uniform_01_DA", "amf_uniform_01_S", "U_I_E_CBRN_Suit_01_EAF_F", "U_B_CBRN_Suit_01_MTP_F", "U_O_R_Gorka_01_black_F", "U_C_IDAP_Man_casual_F",

	/*casque*/
	"H_PilotHelmetHeli_B", "H_PilotHelmetFighter_B", "H_Watchcap_khk", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Booniehat_khk", "H_Booniehat_khk_hs", "H_Booniehat_mcamo", "H_Booniehat_tan", "AMF_FE_LIN", "AMF_FE_LIN_DA", "AMF_FE_LIN_TA", "AMF_kepi_legio_01", "AMF_kepi_legio_03", "AMF_kepi_legio_02", "AMF_TS3000_01_od", "AMF_TS3000_01_snake", "AMF_TS3000_01_tan", "AMF_TS3000_01_cover", "AMF_TS3000_01_da_cover", "amf_felin", "amf_felin_mount", "amf_felin_cover", "AMF_FELIN_COVER_EARPROT_BLK", "AMF_FELIN_COVER_EARPROT_OD", "AMF_FELIN_COVER_EARPROT_TAN", "AMF_LA100", "H_HeadBandage_clean_F", "H_HeadBandage_stained_F", "H_HeadBandage_bloody_F", "H_Hat_Safari_sand_F",

	/*Beret AMF*/
	"AMF_BERET_RPIMa", "AMF_BERET_ALAT_ARGENT", "AMF_BERET_ALAT_OR", "AMF_BERET_ARTILLERIE", "AMF_BERET_FRANCO_ALLEMAND", "AMF_BERET_CAVALERIE_ARGENT", "AMF_BERET_CAVALERIE_OR", "AMF_BERET_C_MONTAGNE", "AMF_BERET_C_MARINE", "AMF_BERET_CPA", "AMF_BERET_GENIE", "AMF_BERET_INFANTERIE", "AMF_BERET_LEGION_13DBLE", "AMF_BERET_PARA", "AMF_BERET_MEDICAL", "AMF_BERET_MARINE_PARA", "AMF_BERET_TRANSMISSION", "AMF_BERET_MARINE", "AMF_TARTE_ARTILLERIE", "AMF_TARTE_CHASSEUR",

	/*jumelle*/
	"Laserdesignator", "Binocular", "Rangefinder", "ACE_MX2A", "ace_dragon_sight", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450",
	
	/*another item*/
	"ItemMap", "B_UavTerminal", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ItemWatch", "ChemicalDetector_01_watch_F", "ACE_Altimeter", "TFAR_microdagr",
	
	/*ACE Item*/
	"FirstAidKit", "ACE_ATragMX", "ACE_splint", "ACE_epinephrine", "ACE_adenosine", "ACE_morphine", "ACE_IR_Strobe_Item", "ACE_packingBandage", "ACE_elasticBandage", "ACE_UAVBattery", "ACE_EarPlugs", "ACE_WaterBottle", "ACE_WaterBottle_Half", "amp_slingload_CargoSling", "ALIVE_Tablet", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "adv_aceCPR_AED", "MineDetector", "ACE_DeadManSwitch", "ACE_DAGR", "ACE_M26_Clacker", "ACE_Clacker", "ACE_HuntIR_monitor", "ACE_Chemlight_Shield", "ACE_Fortify", "ACE_Flashlight_MX991", "ACE_tourniquet", "ACE_bodyBag", "ACE_Kestrel4500", "ACE_DefusalKit", "ACE_Tripod", "ACE_Flashlight_KSF1", "ACE_SpottingScope", "ACE_Flashlight_XL50", "ACE_microDAGR", "ACE_MapTools", "ACE_quikclot", "ACE_fieldDressing", "ACE_SpraypaintBlue", "ACE_SpraypaintBlack", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_EntrenchingTool", "ACE_wirecutter", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_CableTie", "ACE_salineIV", "ACE_salineIV_250", "ACE_salineIV_500", "ACE_RangeCard", "ACE_RangeTable_82mm", "ACE_artilleryTable", "ToolKit", "ACE_surgicalKit", "Medikit", "ACE_personalAidKit",

	/*Viseur*/
	"optic_yorris", "optic_dms", "optic_aco", "optic_aco_grn", "optic_aco_smg", "optic_aco_grn_smg", "optic_arco", "optic_holosight", "optic_holosight_smg", "optic_mrco", "optic_hamr", "optic_sos", "optic_lrps", "optic_nightstalker", "optic_nvs", "optic_tws", "optic_tws_mg", "ace_optic_arco_pip", "ace_optic_arco_2d", "ace_optic_mrco_2d", "ace_optic_hamr_2d", "ace_optic_lrps_pip", "ace_optic_sos_2d", "ace_optic_sos_pip", "ace_optic_lrps_2d", "ace_optic_hamr_pip", "optic_dms_ghex_f", "optic_arco_ghex_f", "optic_arco_blk_f", "optic_holosight_khk_f", "optic_holosight_blk_f", "optic_holosight_smg_khk_f", "optic_holosight_smg_blk_f", "optic_hamr_khk_f", "optic_sos_khk_f", "optic_lrps_ghex_f", "optic_lrps_tna_f", "optic_erco_snd_f", "optic_erco_khk_f", "optic_erco_blk_f", "optic_khs_hex", "optic_khs_blk", "optic_khs_tan", "optic_khs_old", "optic_ams_snd", "optic_ams_khk", "optic_ams", "optic_arco_arid_f", "optic_arco_lush_f", "optic_arco_ak_arid_f", "optic_arco_ak_lush_f", "optic_arco_ak_blk_f", "optic_dms_weathered_f", "optic_dms_weathered_kir_f", "optic_holosight_arid_f", "optic_holosight_lush_f", "cup_optic_1p87_ris", "cup_optic_1p87_ris_desert", "cup_optic_1p87_ris_woodland", "cup_optic_aimpoint_5000", "cup_optic_aimm_compm4_blk", "cup_optic_compm4", "cup_optic_microt1", "cup_optic_microt1_coyote", "cup_optic_microt1_low", "cup_optic_microt1_low_coyote", "cup_optic_microt1_low_od", "cup_optic_microt1_od", "cup_optic_aimm_microt1_tan", "cup_optic_aimm_microt1_blk", "cup_optic_aimm_microt1_od", "cup_optic_an_pas_13c2", "cup_optic_an_pas_13c1", "cup_optic_an_pvs_10", "cup_optic_an_pvs_10_black", "cup_optic_an_pvs_10_od", "cup_optic_an_pvs_4", "cup_optic_an_pvs_4_m14", "cup_optic_an_pvs_4_m16", "cup_optic_cws", "cup_optic_ac11704_black", "cup_optic_ac11704_coyote", "cup_optic_ac11704_jungle", "cup_optic_ac11704_od", "cup_optic_ac11704_tan", "cup_optic_cws_nv", "cup_optic_cws_nv_rds", "cup_optic_elcanm145", "cup_optic_elcan_specterdr_black", "cup_optic_elcan_specterdr_coyote", "cup_optic_elcan_specterdr_kf_black", "cup_optic_elcan_specterdr_kf_coyote", "cup_optic_elcan_specterdr_kf_od", "cup_optic_elcan_specterdr_kf", "cup_optic_elcan_specterdr_od", "cup_optic_elcan_specterdr_rmr_black", "cup_optic_elcan_specterdr_rmr_coyote", "cup_optic_elcan_specterdr_kf_rmr_black", "cup_optic_elcan_specterdr_kf_rmr_coyote", "cup_optic_elcan_specterdr_kf_rmr_od", "cup_optic_elcan_specterdr_kf_rmr", "cup_optic_elcan_specterdr_rmr_od", "cup_optic_elcan_specterdr_rmr", "cup_optic_elcan_specterdr", "cup_optic_elcan", "cup_optic_elcan_coyote", "cup_optic_elcan_od", "cup_optic_elcan_reflex", "cup_optic_elcan_reflex_coyote", "cup_optic_elcan_reflex_od", "cup_optic_holowdl", "cup_optic_holodesert", "cup_optic_holoblack", "cup_optic_eotech553_coyote", "cup_optic_eotech533grey", "cup_optic_eotech553_black", "cup_optic_eotech553_od", "cup_optic_eotech533", "cup_optic_g33_hws_coyote", "cup_optic_g33_hws_tan", "cup_optic_g33_hws_blk", "cup_optic_g33_hws_od", "cup_optic_goshawk_ris", "cup_optic_hensoldtzo", "cup_optic_hensoldtzo_coyote", "cup_optic_hensoldtzo_desert", "cup_optic_hensoldtzo_hex", "cup_optic_hensoldtzo_low", "cup_optic_hensoldtzo_low_coyote", "cup_optic_hensoldtzo_low_desert", "cup_optic_hensoldtzo_low_hex", "cup_optic_hensoldtzo_low_od", "cup_optic_hensoldtzo_low_rds", "cup_optic_hensoldtzo_low_rds_coyote", "cup_optic_hensoldtzo_low_rds_desert", "cup_optic_hensoldtzo_low_rds_hex", "cup_optic_hensoldtzo_low_rds_od", "cup_optic_hensoldtzo_od", "cup_optic_hensoldtzo_rds", "cup_optic_hensoldtzo_rds_coyote", "cup_optic_hensoldtzo_rds_desert", "cup_optic_hensoldtzo_rds_hex", "cup_optic_hensoldtzo_rds_od", "cup_optic_leupoldmk4", "cup_optic_leupoldmk4_10x40_lrt_woodland", "cup_optic_leupoldmk4_10x40_lrt_desert", "cup_optic_leupoldmk4_mrt_tan", "cup_optic_leupoldm3lr", "cup_optic_leupoldmk4_20x40_lrt", "cup_optic_leupoldmk4_25x50_lrt", "cup_optic_leupoldmk4_25x50_lrt_desert", "cup_optic_leupoldmk4_25x50_lrt_snow", "cup_optic_leupoldmk4_25x50_lrt_woodland", "cup_optic_leupoldmk4_cq_t", "cup_optic_leupold_vx3", "cup_optic_compm2_low", "cup_optic_compm2_low_coyote", "cup_optic_compm2_low_od", "cup_optic_aimm_m68_tan", "cup_optic_aimm_m68_blk", "cup_optic_aimm_m68_od", "cup_optic_aimm_compm2_tan", "cup_optic_aimm_compm2_blk", "cup_optic_aimm_compm2_od", "cup_optic_compm2_woodland2", "cup_optic_compm2_woodland", "cup_optic_compm2_coyote", "cup_optic_compm2_desert", "cup_optic_compm2_black", "cup_optic_compm2_od", "cup_optic_mars", "cup_optic_mars_od", "cup_optic_mars_tan", "cup_optic_aimm_mars_tan", "cup_optic_aimm_mars_blk", "cup_optic_aimm_mars_od", "cup_optic_mrad", "cup_optic_zddot", "cup_optic_aimm_zddot_blk", "cup_optic_mepro", "cup_optic_mepro_moa_clear", "cup_optic_mepro_openx_orange", "cup_optic_mepro_tri_clear", "cup_optic_sb_11_4x20_pm_od", "cup_optic_sb_3_12x50_pmii_tan", "cup_optic_sb_11_4x20_pm", "cup_optic_sb_11_4x20_pm_tan", "cup_optic_sb_3_12x50_pmii", "cup_optic_susat", "cup_optic_acog_ta01b_black", "cup_optic_acog_ta01b_coyote", "cup_optic_acog_ta01b_od", "cup_optic_acog_ta01b_rmr_black", "cup_optic_acog_ta01b_rmr_coyote", "cup_optic_acog_ta01b_rmr_od", "cup_optic_acog_ta01b_rmr_tan", "cup_optic_acog_ta01b_rmr_tropic", "cup_optic_acog_ta01b_tan", "cup_optic_acog_ta01b_tropic", "cup_optic_rco", "cup_optic_rco_desert", "cup_optic_acog_ta01nsn_od", "cup_optic_acog_ta01nsn_rmr_black", "cup_optic_acog_ta01nsn_rmr_coyote", "cup_optic_acog_ta01nsn_rmr_od", "cup_optic_acog_ta01nsn_rmr_tan", "cup_optic_acog_ta01nsn_rmr_tropic", "cup_optic_acog_ta01nsn_tan", "cup_optic_acog_ta01nsn_tropic", "cup_optic_acog2", "cup_optic_acog_ta31_kf", "cup_optic_acog_ta31_kf_desert", "cup_optic_acog_ta31_kf_wood", "cup_optic_acog", "cup_optic_acog_reflex_desert", "cup_optic_acog_reflex_wood", "cup_optic_trijiconrx01_black", "cup_optic_trijiconrx01_desert", "cup_optic_trijiconrx01_kf_black", "cup_optic_trijiconrx01_kf_desert", "cup_optic_trijiconrx01_kf_od", "cup_optic_trijiconrx01_od", "cup_optic_vortexrazor_uh1_black", "cup_optic_vortexrazor_uh1_coyote", "cup_optic_vortexrazor_uh1_khaki", "cup_optic_vortexrazor_uh1_od", "cup_optic_vortexrazor_uh1_tan", "cup_optic_zeisszpoint", "cup_optic_zeisszpoint_desert", "cup_optic_zeisszpoint_hex", "cup_optic_zeisszpoint_wood", "rhs_acc_rakurspm", "rhs_acc_1p87", "rhs_acc_dh520x56", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsgref_acc_rx01_nofilter_camo", "rhsgref_acc_rx01_camo", "rhsusf_acc_anpas13gv1", "rhsusf_acc_acog2_usmc", "rhsusf_acc_acog3_usmc", "rhsusf_acc_acog_usmc", "rhsusf_acc_anpvs27", "rhsusf_acc_eotech", "rhsusf_acc_g33_t1", "rhsusf_acc_g33_xps3", "rhsusf_acc_g33_xps3_tan", "rhsusf_acc_elcan", "rhsusf_acc_elcan_ard", "rhsusf_acc_acog", "rhsusf_acc_acog2", "rhsusf_acc_acog3", "rhsusf_acc_m2a1", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rhsusf_acc_eotech_552_wd", "rhsusf_acc_compm4", "rhsusf_acc_m8541", "rhsusf_acc_m8541_d", "rhsusf_acc_m8541_low", "rhsusf_acc_m8541_low_d", "rhsusf_acc_m8541_low_wd", "rhsusf_acc_m8541_mrds", "rhsusf_acc_m8541_wd", "rhsusf_acc_premier_low", "rhsusf_acc_premier", "rhsusf_acc_premier_mrds", "rhsusf_acc_leupoldmk4", "rhsusf_acc_leupoldmk4_2", "rhsusf_acc_leupoldmk4_d", "rhsusf_acc_leupoldmk4_wd", "rhsusf_acc_leupoldmk4_2_d", "rhsusf_acc_leupoldmk4_2_mrds", "rhsusf_acc_mrds", "rhsusf_acc_mrds_c", "rhsusf_acc_rm05", "rhsusf_acc_rx01_nofilter", "rhsusf_acc_rx01", "rhsusf_acc_rx01_nofilter_tan", "rhsusf_acc_rx01_tan", "rhsusf_acc_su230", "rhsusf_acc_su230_c", "rhsusf_acc_su230_mrds", "rhsusf_acc_su230_mrds_c", "rhsusf_acc_su230a", "rhsusf_acc_su230a_c", "rhsusf_acc_su230a_mrds", "rhsusf_acc_su230a_mrds_c", "rhsusf_acc_acog_mdo", "rhsusf_acc_t1_high", "rhsusf_acc_t1_low", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_d", "rhsusf_acc_acog_wd", "rhsusf_acc_eotech_xps3",
	
	/*Accessoire Weapon*/
	"AMF_AN_PEQ_15_green", "AMF_AN_PEQ_15_tan", "AMF_LASER_PIRATE", "AMF_M952_VBK_black", "AMF_M952_VBK_camo", "acc_esd_01_flashlight", "acc_flashlight_pistol", "acc_pointer_IR", "ACE_acc_pointer_green", "acc_flashlight_smg_01", "acc_flashlight", "amf_acc_laserpirat", "amf_an_peq_15_black",

	/*Silencieux*/
	"rhsusf_acc_nt4_black", "muzzle_antenna_03_f", "muzzle_antenna_02_f", "muzzle_antenna_01_f", "ACE_muzzle_mzls_338", "ACE_muzzle_mzls_smg_01", "ACE_muzzle_mzls_L", "ACE_muzzle_mzls_H", "ACE_muzzle_mzls_B", "ACE_muzzle_mzls_smg_02", "ACE_muzzle_mzls_93mmg", "muzzle_snds_acp", "muzzle_snds_M", "muzzle_snds_m_snd_F", "muzzle_snds_H", "muzzle_snds_570", "muzzle_snds_H_snd_F", "muzzle_snds_B", "muzzle_snds_B_snd_F", "muzzle_snds_B_arid_F", "muzzle_snds_L", "muzzle_snds_58_blk_F", "muzzle_snds_65_TI_blk_F", "muzzle_snds_H_MG_blk_F", "muzzle_snds_338_black", "muzzle_snds_338_sand", "bipod_02_F_arid", "bipod_01_F_mtp", "bipod_01_F_blk", "bipod_01_F_snd", "ChemicalDetector_01_tan_F", "ChemicalDetector_01_black_F", "ChemicalDetector_01_olive_F", "rhsusf_acc_saw_bipod", "rhsusf_acc_grip4", "rhsusf_acc_aac_762sd_silencer", "rhsusf_acc_aac_762sdn6_silencer",

	/*Accessoire Spectre*/
	"acc_esd_01_flashlight", "muzzle_antenna_03_f", "muzzle_antenna_02_f", "muzzle_antenna_01_f",

	/*JVN*/
	"A3_GPNVG18_F", "A3_GPNVG18_BLK_F", "NVGoggles", "NVGoggles_OPFOR", "ACE_NVG_Wide", "ACE_NVG_Gen4", "ACE_NVG_Gen2", "ACE_NVG_Gen1", "rhsusf_ANPVS_14", "CUP_NVG_GPNVG_black", "CUP_NVG_GPNVG_Hide"
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
	"B_rhsusf_B_BACKPACK",
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
