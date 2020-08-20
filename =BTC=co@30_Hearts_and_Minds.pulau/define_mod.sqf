btc_custom_loc = [
/*
    DESCRIPTION: [POS(Array),TYPE(String),NAME(String),RADIUS X(Number),RADIUS X(Number),IS OCCUPIED(Bool)]
    Possible types: "NameVillage","NameCity","NameCityCapital","NameLocal","Hill","Airport","NameMarine"
    EXAMPLE: [[13132.8,3315.07,0.00128174],"NameVillage","Mountain 1",800,800,true]
*/

	[[4589.77,8431.31,0],"NameVillage","Taloqan",50,50,true],
	[[6117.45,4689.46,0],"NameVillage","Baglan",50,50,true],
	[[5105.55,5067.6,0],"NameVillage","Balkh",50,50,true],
	[[3333.83,352.107,0],"NameVillage","Rustaq",50,50,true],
	[[5688.39,8228.86,0],"NameVillage","Kushk",50,50,true],
	[[7099.19,3301.75,0],"NameCity","Balalon",100,100,true],
	[[5533.2,9699.29,0],"NameCity","Apal",100,100,true],
	[[3560.32,8943.58,0],"NameCity","Minanga",100,100,true],
	[[4510.57,10122.7,0],"NameCity","Lalomo",100,100,true],
	[[4844.45,7292.28,0],"NameCity","Kambani",100,100,true],
	[[7257.26,7126.32,0],"NameCity","Kinandal",100,100,true]
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
	"rhs_weap_hk416d10",
	"rhs_weap_hk416d10_m320",
	"rhs_weap_hk416d10_LMT",
	"rhs_weap_hk416d10_LMT_d",
	"rhs_weap_hk416d10_LMT_wd",
	"rhs_weap_hk416d145",
	"rhs_weap_hk416d145_d",
	"rhs_weap_hk416d145_d_2",
	"rhs_weap_hk416d145_m320",
	"rhs_weap_hk416d145_wd",
	"rhs_weap_hk416d145_wd_2",
	"rhs_weap_M107",
	"rhs_weap_M107_d",
	"rhs_weap_M107_w",
	"rhs_weap_m14",
	"rhs_weap_m14_d",
	"rhs_weap_m14_fiberglass",
	"rhs_weap_m14_rail",
	"rhs_weap_m14_rail_d",
	"rhs_weap_m14_rail_fiberglass",
	"rhs_weap_m14_rail_wd",
	"rhs_weap_m14_ris",
	"rhs_weap_m14_ris_d",
	"rhs_weap_m14_ris_fiberglass",
	"rhs_weap_m14_ris_wd",
	"rhs_weap_m14_wd",
	"rhs_weap_m14ebrri",
	"rhs_weap_m16a4",
	"rhs_weap_m16a4_carryhandle",
	"rhs_weap_m16a4_carryhandle_M203",
	"rhs_weap_m16a4_imod",
	"rhs_weap_m16a4_imod_M203",
	"rhs_weap_XM2010",
	"rhs_weap_XM2010_wd",
	"rhs_weap_XM2010_d",
	"rhs_weap_XM2010_sa",
	"rhs_weap_m24sws",
	"rhs_weap_m24sws_d",
	"rhs_weap_m24sws_wd",
	"rhs_weap_m240B",
	"rhs_weap_m240G",
	"rhs_weap_m249",
	"rhs_weap_m249_pip",
	"rhs_weap_m249_light_L",
	"rhs_weap_m249_pip_L_para",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m249_pip_ris",
	"rhs_weap_m249_light_S",
	"rhs_weap_m249_pip_S_para",
	"rhs_weap_m249_pip_S",
	"rhs_weap_m27iar",
	"rhs_weap_m27iar_grip",
	"rhs_weap_m32",
	"rhs_weap_m4",
	"rhs_weap_m4_carryhandle",
	"rhs_weap_m4_carryhandle_m203",
	"rhs_weap_m4_carryhandle_m203S",
	"rhs_weap_m4_carryhandle_mstock",
	"rhs_weap_m4_m203",
	"rhs_weap_m4_m203S",
	"rhs_weap_m4_m320",
	"rhs_weap_m4_mstock",
	"rhs_weap_m40a5",
	"rhs_weap_m40a5_d",
	"rhs_weap_m40a5_wd",
	"rhs_weap_m4a1_carryhandle",
	"rhs_weap_m4a1_carryhandle_m203",
	"rhs_weap_m4a1_carryhandle_m203S",
	"rhs_weap_m4a1_carryhandle_mstock",
	"rhs_weap_m4a1_blockII",
	"rhs_weap_m4a1_blockII_d",
	"rhs_weap_m4a1_blockII_M203_d",
	"rhs_weap_m4a1_blockII_KAC_d",
	"rhs_weap_m4a1_blockII_M203",
	"rhs_weap_m4a1_blockII_bk",
	"rhs_weap_m4a1_blockII_M203_bk",
	"rhs_weap_m4a1_blockII_KAC_bk",
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m4a1_blockII_wd",
	"rhs_weap_m4a1_blockII_M203_wd",
	"rhs_weap_m4a1_blockII_KAC_wd",
	"rhs_weap_m4a1",
	"rhs_weap_m4a1_d",
	"rhs_weap_m4a1_m203s_d",
	"rhs_weap_m4a1_d_mstock",
	"rhs_weap_m4a1_m203",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1_m320",
	"rhs_weap_m4a1_mstock",
	"rhs_weap_m4a1_wd",
	"rhs_weap_m4a1_m203s_wd",
	"rhs_weap_m4a1_wd_mstock",
	"rhs_weap_M590_8RD",
	"rhs_weap_M590_5RD",
	"rhs_weap_sr25",
	"rhs_weap_sr25_d",
	"rhs_weap_sr25_ec",
	"rhs_weap_sr25_ec_d",
	"rhs_weap_sr25_ec_wd",
	"rhs_weap_sr25_wd",
	"rhs_weap_mk17_CQC",
	"rhs_weap_mk17_LB",
	"rhs_weap_mk17_STD",
	"rhs_weap_mk18",
	"rhs_weap_mk18_d",
	"rhs_weap_mk18_KAC_d",
	"rhs_weap_mk18_bk",
	"rhs_weap_mk18_KAC_bk",
	"rhs_weap_mk18_KAC",
	"rhs_weap_mk18_wd",
	"rhs_weap_mk18_KAC_wd",
	"rhsusf_weap_MP7A2",
	"rhsusf_weap_MP7A2_aor1",
	"rhsusf_weap_MP7A2_desert",
	"rhsusf_weap_MP7A2_winter",
	"rhs_weap_SCARH_USA_CQC",
	"rhs_weap_SCARH_USA_LB",
	"rhs_weap_SCARH_USA_STD",
	"rhs_weap_m14_socom",
	"rhs_weap_m14_socom_rail",
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
	"1Rnd_SmokeYellow_Grenade_shell",
	"20Rnd_762x51_HK417_mag",
	"20Rnd_762x51_HK417_Tracer_green_mag",
	"20Rnd_762x51_HK417_Tracer_red_mag",
	"20Rnd_762x51_HK417_Tracer_yellow_mag",
	"150Rnd_MINI_MG_mag",
	"150Rnd_MINI_MG_mag_Tracer_green",
	"150Rnd_MINI_MG_mag_Tracer_red",
	"150Rnd_MINI_MG_mag_tracer_yellow",
	"rhsusf_200rnd_556x45_mixed_box",
	"rhsusf_200Rnd_556x45_box",
	"ACE_HuntIR_M203",
	"ACE_40mm_Flare_ir",
	"Laserbatteries",
	"rhs_mag_30Rnd_556x45_M855A1_EPM",
	"rhs_mag_30Rnd_556x45_M855A1_EPM_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag",
	"rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"ACE_30Rnd_556x45_Stanag_Tracer_Dim",
	"rhs_weap_M107",
	"rhsusf_mag_10Rnd_STD_50BMG_mk211",
	"rhsusf_mag_10Rnd_STD_50BMG_M33",
	"rhsusf_5Rnd_300winmag_xm2010",
	"rhsusf_5Rnd_762x51_m118_special_Mag",
	"rhsusf_5Rnd_762x51_m62_Mag",
	"rhsusf_100Rnd_762x51_m80a1epr",
	"rhsusf_100Rnd_762x51_m62_tracer",
	"rhsusf_mag_6Rnd_M397_HET",
	"rhsusf_mag_6Rnd_M441_HE",
	"rhsusf_mag_6Rnd_M433_HEDP",
	"rhsusf_mag_6Rnd_m4009",
	"rhsusf_mag_6Rnd_M585_white",
	"rhsusf_mag_6Rnd_m661_green",
	"rhsusf_mag_6Rnd_m662_red",
	"rhsusf_mag_6Rnd_M713_red",
	"rhsusf_mag_6Rnd_M714_white",
	"rhsusf_mag_6Rnd_M715_green",
	"rhsusf_mag_6Rnd_M716_yellow",
	"rhsusf_10Rnd_762x51_m62_Mag",
	"rhsusf_10Rnd_762x51_m118_special_Mag",
	"rhsusf_5Rnd_762x51_AICS_m118_special_Mag",
	"rhsusf_5Rnd_762x51_AICS_m62_Mag",
	"rhsusf_8Rnd_00Buck",
	"rhsusf_8Rnd_FRAG",
	"rhsusf_8Rnd_HE",
	"rhsusf_8Rnd_Slug",
	"rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
	"rhsusf_20Rnd_762x51_SR25_m62_Mag",
	"rhs_mag_20Rnd_SCAR_762x51_m61_ap",
	"rhs_mag_20Rnd_SCAR_762x51_m62_tracer",
	"rhsusf_mag_40Rnd_46x30_AP",
	"rhsusf_mag_40Rnd_46x30_FMJ",
	"rhsusf_20Rnd_762x51_m118_special_Mag",
	"rhsusf_20Rnd_762x51_m62_Mag",
	"rhsusf_20Rnd_762x51_m80_Mag",
	"rhsusf_20Rnd_762x51_m993_Mag",
	"rhsusf_mag_17Rnd_9x19_FMJ",
	"rhsusf_mag_7x45acp_MHP",
	"rhs_mag_m4009",
	"rhsusf_mag_15Rnd_9x19_JHP",
	"rhsusf_mag_15Rnd_9x19_FMJ",
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
	"V_Press_F", "V_PlateCarrier1_wdl", "V_Rangemaster_belt", "V_PlateCarrier2_blk", "V_PlateCarrier2_rgr", "V_RebreatherB", "V_TacVest_gen_F", "rhsusf_iotv_ocp_Grenadier", "rhsusf_iotv_ucp_Grenadier", "rhsusf_iotv_ocp_Medic", "rhsusf_iotv_ucp_Medic", "rhsusf_iotv_ocp", "rhsusf_iotv_ocp_Repair", "rhsusf_iotv_ucp_Repair", "rhsusf_iotv_ocp_Rifleman", "rhsusf_iotv_ucp_Rifleman", "rhsusf_iotv_ocp_SAW", "rhsusf_iotv_ucp_SAW", "rhsusf_iotv_ocp_Squadleader", "rhsusf_iotv_ucp_Squadleader", "rhsusf_iotv_ocp_Teamleader", "rhsusf_iotv_ucp_Teamleader", "rhsusf_iotv_ucp", "rhsusf_mbav", "rhsusf_mbav_grenadier", "rhsusf_mbav_light", "rhsusf_mbav_mg", "rhsusf_mbav_medic", "rhsusf_mbav_rifleman", "rhsusf_plateframe_sapi", "rhsusf_plateframe_grenadier", "rhsusf_plateframe_light", "rhsusf_plateframe_machinegunner", "rhsusf_plateframe_marksman", "rhsusf_plateframe_medic", "rhsusf_plateframe_rifleman", "rhsusf_plateframe_teamleader", "rhsusf_spc", "rhsusf_spc_corpsman", "rhsusf_spc_crewman", "rhsusf_spc_iar", "rhsusf_spc_light", "rhsusf_spc_mg", "rhsusf_spc_marksman", "rhsusf_spc_patchless", "rhsusf_spc_patchless_radio", "rhsusf_spc_rifleman", "rhsusf_spc_sniper", "rhsusf_spc_squadleader", "rhsusf_spc_teamleader", "rhsusf_spcs_ocp_crewman", "rhsusf_spcs_ucp_crewman", "rhsusf_spcs_ocp_grenadier", "rhsusf_spcs_ucp_grenadier", "rhsusf_spcs_ocp_machinegunner", "rhsusf_spcs_ucp_machinegunner", "rhsusf_spcs_ocp_medic", "rhsusf_spcs_ucp_medic", "rhsusf_spcs_ocp", "rhsusf_spcs_ocp_rifleman_alt", "rhsusf_spcs_ucp_rifleman_alt", "rhsusf_spcs_ocp_rifleman", "rhsusf_spcs_ucp_rifleman", "rhsusf_spcs_ocp_saw", "rhsusf_spcs_ucp_saw", "rhsusf_spcs_ocp_sniper", "rhsusf_spcs_ucp_sniper", "rhsusf_spcs_ocp_squadleader", "rhsusf_spcs_ucp_squadleader", "rhsusf_spcs_ocp_teamleader_alt", "rhsusf_spcs_ucp_teamleader_alt", "rhsusf_spcs_ocp_teamleader", "rhsusf_spcs_ucp_teamleader", "rhsusf_spcs_ucp",	
	
	/*Lunette*/
	"G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_khk", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Shades_Blue", "G_Shades_Black", "G_Shades_Red", "G_Shades_Green", "G_Squares_Tinted", "G_Lady_Blue", "G_Sport_Red", "G_Sport_Checkered", "G_Sport_Greenblack", "G_Tactical_Black", "G_Sport_Blackred", "G_Tactical_Clear", "G_Lowprofile", "G_Squares", "G_Spectacles", "G_Aviator", "G_Combat", "G_Diving", "G_B_Diving", "G_Goggles_VR", "G_Spectacles_Tinted", "G_AirPurifyingRespirator_01_F", "G_Blindfold_01_white_F", "G_Blindfold_01_black_F", "G_RegulatorMask_F", "G_WirelessEarpiece_F", "G_Respirator_white_F",
	
	/*uniform*/
	"U_B_FullGhillie_ard", "U_B_FullGhillie_sard", "U_C_WorkerCoveralls", "U_B_GhillieSuit", "U_B_PilotCoveralls", "U_B_Wetsuit", "U_B_HeliPilotCoveralls", "U_BG_Guerrilla_6_1", "U_B_GEN_Commander_F", "U_B_GEN_Soldier_F", "U_I_E_CBRN_Suit_01_EAF_F", "U_B_CBRN_Suit_01_MTP_F", "U_O_R_Gorka_01_black_F", "U_C_IDAP_Man_casual_F", "rhs_uniform_abu", "rhs_uniform_acu_ocp", "rhs_uniform_acu_oefcp", "rhs_uniform_acu_ucpd", "rhs_uniform_acu_ucp", "rhs_uniform_bdu_erdl", "rhs_uniform_cu_ocp", "rhs_uniform_cu_ucp", "rhs_uniform_FROG01_d", "rhs_uniform_FROG01_wd", "rhs_uniform_g3_aor2", "rhs_uniform_g3_blk", "rhs_uniform_g3_m81", "rhs_uniform_g3_mc", "rhs_uniform_g3_rgr", "rhs_uniform_g3_tan",

	/*casque*/
	"H_PilotHelmetHeli_B", "H_PilotHelmetFighter_B", "H_Watchcap_khk", "H_Watchcap_blk", "H_Watchcap_cbr", "H_Booniehat_khk", "H_Booniehat_khk_hs", "H_Booniehat_mcamo", "H_Booniehat_tan", "H_HeadBandage_clean_F", "H_HeadBandage_stained_F", "H_HeadBandage_bloody_F", "H_Hat_Safari_sand_F", "rhsusf_ach_bare", "rhsusf_ach_bare_des", "rhsusf_ach_bare_des_ess", "rhsusf_ach_bare_des_headset", "rhsusf_ach_bare_des_headset_ess", "rhsusf_ach_bare_headset", "rhsusf_ach_bare_semi", "rhsusf_ach_bare_semi_headset", "rhsusf_ach_bare_tan", "rhsusf_ach_bare_tan_headset", "rhsusf_ach_bare_wood", "rhsusf_ach_bare_wood_headset", "rhsusf_ach_helmet_DCU", "rhsusf_ach_helmet_DCU_early_rhino", "rhsusf_ach_helmet_M81", "rhsusf_ach_helmet_ocp_alt", "rhsusf_ach_helmet_ESS_ocp_alt", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_headset_ocp_alt", "rhsusf_ach_helmet_headset_ess_ocp", "rhsusf_ach_helmet_headset_ess_ocp_alt", "rhsusf_ach_helmet_camo_ocp", "rhsusf_ach_helmet_ocp_norotos", "rhsusf_ach_helmet_ucp", "rhsusf_ach_helmet_ucp_alt", "rhsusf_ach_helmet_ESS_ucp", "rhsusf_ach_helmet_ESS_ucp_alt", "rhsusf_ach_helmet_headset_ucp", "rhsusf_ach_helmet_headset_ucp_alt", "rhsusf_ach_helmet_headset_ess_ucp", "rhsusf_ach_helmet_headset_ess_ucp_alt", "rhsusf_ach_helmet_ucp_norotos", "rhsusf_cvc_green_alt_helmet", "rhsusf_cvc_green_ess", "rhsusf_cvc_helmet", "rhsusf_cvc_alt_helmet", "rhsusf_cvc_ess", "rhs_Booniehat_m81", "rhs_booniehat2_marpatd", "rhs_booniehat2_marpatwd", "rhs_Booniehat_ocp", "rhs_Booniehat_ucp", "rhsusf_Bowman", "rhsusf_bowman_cap", "rhsusf_opscore_aor1", "rhsusf_opscore_aor1_pelt", "rhsusf_opscore_aor1_pelt_nsw", "rhsusf_opscore_aor2", "rhsusf_opscore_aor2_pelt", "rhsusf_opscore_aor2_pelt_nsw", "rhsusf_opscore_bk", "rhsusf_opscore_bk_pelt", "rhsusf_opscore_coy_cover", "rhsusf_opscore_coy_cover_pelt", "rhsusf_opscore_fg", "rhsusf_opscore_fg_pelt", "rhsusf_opscore_fg_pelt_cam", "rhsusf_opscore_fg_pelt_nsw", "rhsusf_opscore_mc_cover", "rhsusf_opscore_mc_cover_pelt", "rhsusf_opscore_mc_cover_pelt_nsw", "rhsusf_opscore_mc_cover_pelt_cam", "rhsusf_opscore_mc", "rhsusf_opscore_mc_pelt", "rhsusf_opscore_mc_pelt_nsw", "rhsusf_opscore_paint", "rhsusf_opscore_paint_pelt", "rhsusf_opscore_paint_pelt_nsw", "rhsusf_opscore_paint_pelt_nsw_cam", "rhsusf_opscore_rg_cover", "rhsusf_opscore_rg_cover_pelt", "rhsusf_opscore_ut", "rhsusf_opscore_ut_pelt", "rhsusf_opscore_ut_pelt_cam", "rhsusf_opscore_ut_pelt_nsw", "rhsusf_opscore_ut_pelt_nsw_cam", "rhsusf_opscore_mar_fg", "rhsusf_opscore_mar_fg_pelt", "rhsusf_opscore_mar_ut", "rhsusf_opscore_mar_ut_pelt", "rhsusf_hgu56p_black", "rhsusf_hgu56p_mask_black", "rhsusf_hgu56p_mask_black_skull", "rhsusf_hgu56p_visor_black", "rhsusf_hgu56p_visor_mask_black", "rhsusf_hgu56p_visor_mask_Empire_black", "rhsusf_hgu56p_visor_mask_black_skull", "rhsusf_hgu56p_green", "rhsusf_hgu56p_mask_green", "rhsusf_hgu56p_mask_green_mo", "rhsusf_hgu56p_visor_green", "rhsusf_hgu56p_visor_mask_green", "rhsusf_hgu56p_visor_mask_green_mo", "rhsusf_hgu56p", "rhsusf_hgu56p_mask", "rhsusf_hgu56p_mask_mo", "rhsusf_hgu56p_mask_skull", "rhsusf_hgu56p_visor", "rhsusf_hgu56p_visor_mask", "rhsusf_hgu56p_visor_mask_mo", "rhsusf_hgu56p_visor_mask_skull", "rhsusf_hgu56p_pink", "rhsusf_hgu56p_mask_pink", "rhsusf_hgu56p_visor_pink", "rhsusf_hgu56p_visor_mask_pink", "rhsusf_hgu56p_saf", "rhsusf_hgu56p_mask_saf", "rhsusf_hgu56p_visor_saf", "rhsusf_hgu56p_visor_mask_saf", "rhsusf_hgu56p_mask_smiley", "rhsusf_hgu56p_visor_mask_smiley", "rhsusf_hgu56p_tan", "rhsusf_hgu56p_mask_tan", "rhsusf_hgu56p_visor_tan", "rhsusf_hgu56p_visor_mask_tan", "rhsusf_hgu56p_usa", "rhsusf_hgu56p_visor_usa", "rhsusf_hgu56p_white", "rhsusf_hgu56p_visor_white", "rhsusf_ihadss", "RHS_jetpilot_usaf", "rhsusf_lwh_helmet_M1942", "rhsusf_lwh_helmet_marpatd", "rhsusf_lwh_helmet_marpatd_ess", "rhsusf_lwh_helmet_marpatd_headset", "rhsusf_lwh_helmet_marpatwd", "rhsusf_lwh_helmet_marpatwd_blk_ess", "rhsusf_lwh_helmet_marpatwd_headset_blk2", "rhsusf_lwh_helmet_marpatwd_headset_blk", "rhsusf_lwh_helmet_marpatwd_headset", "rhsusf_lwh_helmet_marpatwd_ess", "rhsusf_mich_bare", "rhsusf_mich_bare_alt", "rhsusf_mich_bare_headset", "rhsusf_mich_bare_norotos", "rhsusf_mich_bare_norotos_alt", "rhsusf_mich_bare_norotos_alt_headset", "rhsusf_mich_bare_norotos_arc", "rhsusf_mich_bare_norotos_arc_alt", "rhsusf_mich_bare_norotos_arc_alt_headset", "rhsusf_mich_bare_norotos_arc_headset", "rhsusf_mich_bare_norotos_headset", "rhsusf_mich_bare_semi", "rhsusf_mich_bare_alt_semi", "rhsusf_mich_bare_semi_headset", "rhsusf_mich_bare_norotos_semi", "rhsusf_mich_bare_norotos_alt_semi", "rhsusf_mich_bare_norotos_alt_semi_headset", "rhsusf_mich_bare_norotos_arc_semi", "rhsusf_mich_bare_norotos_arc_alt_semi", "rhsusf_mich_bare_norotos_arc_alt_semi_headset", "rhsusf_mich_bare_norotos_arc_semi_headset", "rhsusf_mich_bare_norotos_semi_headset", "rhsusf_mich_bare_tan", "rhsusf_mich_bare_alt_tan", "rhsusf_mich_bare_tan_headset", "rhsusf_mich_bare_norotos_tan", "rhsusf_mich_bare_norotos_alt_tan", "rhsusf_mich_bare_norotos_alt_tan_headset", "rhsusf_mich_bare_norotos_arc_tan", "rhsusf_mich_bare_norotos_arc_alt_tan", "rhsusf_mich_bare_norotos_arc_alt_tan_headset", "rhsusf_mich_bare_norotos_tan_headset", "rhsusf_mich_helmet_marpatd", "rhsusf_mich_helmet_marpatd_alt", "rhsusf_mich_helmet_marpatd_alt_headset", "rhsusf_mich_helmet_marpatd_headset", "rhsusf_mich_helmet_marpatd_norotos", "rhsusf_mich_helmet_marpatd_norotos_arc", "rhsusf_mich_helmet_marpatd_norotos_arc_headset", "rhsusf_mich_helmet_marpatd_norotos_headset", "rhsusf_mich_helmet_marpatwd", "rhsusf_mich_helmet_marpatwd_alt", "rhsusf_mich_helmet_marpatwd_alt_headset", "rhsusf_mich_helmet_marpatwd_headset", "rhsusf_mich_helmet_marpatwd_norotos", "rhsusf_mich_helmet_marpatwd_norotos_arc", "rhsusf_mich_helmet_marpatwd_norotos_arc_headset", "rhsusf_mich_helmet_marpatwd_norotos_headset", "rhsusf_patrolcap_ocp", "rhsusf_patrolcap_ucp", "rhsusf_protech_helmet", "rhsusf_protech_helmet_ess", "rhsusf_protech_helmet_rhino", "rhsusf_protech_helmet_rhino_ess", "rhs_8point_marpatd", "rhs_8point_marpatwd",

	/*jumelle*/
	"Laserdesignator", "Binocular", "Rangefinder", "ACE_MX2A", "ace_dragon_sight", "ACE_VectorDay", "ACE_Vector", "ACE_Yardage450",
	
	/*another item*/
	"ItemMap", "B_UavTerminal", "ItemGPS", "TFAR_anprc152", "ItemCompass", "ItemWatch", "ChemicalDetector_01_watch_F", "ACE_Altimeter", "TFAR_microdagr",
	
	/*ACE Item*/
	"FirstAidKit", "ACE_ATragMX", "ACE_splint", "ACE_epinephrine", "ACE_adenosine", "ACE_morphine", "ACE_IR_Strobe_Item", "ACE_packingBandage", "ACE_elasticBandage", "ACE_UAVBattery", "ACE_EarPlugs", "ACE_WaterBottle", "ACE_WaterBottle_Half", "amp_slingload_CargoSling", "ALIVE_Tablet", "ACE_rope12", "ACE_rope15", "ACE_rope18", "ACE_rope27", "ACE_rope36", "ACE_bloodIV", "ACE_bloodIV_250", "ACE_bloodIV_500", "adv_aceCPR_AED", "MineDetector", "ACE_DeadManSwitch", "ACE_DAGR", "ACE_M26_Clacker", "ACE_Clacker", "ACE_HuntIR_monitor", "ACE_Chemlight_Shield", "ACE_Fortify", "ACE_Flashlight_MX991", "ACE_tourniquet", "ACE_bodyBag", "ACE_Kestrel4500", "ACE_DefusalKit", "ACE_Tripod", "ACE_Flashlight_KSF1", "ACE_SpottingScope", "ACE_Flashlight_XL50", "ACE_microDAGR", "ACE_MapTools", "ACE_quikclot", "ACE_fieldDressing", "ACE_SpraypaintBlue", "ACE_SpraypaintBlack", "ACE_SpraypaintRed", "ACE_SpraypaintGreen", "ACE_EntrenchingTool", "ACE_wirecutter", "ACE_plasmaIV", "ACE_plasmaIV_250", "ACE_plasmaIV_500", "ACE_CableTie", "ACE_salineIV", "ACE_salineIV_250", "ACE_salineIV_500", "ACE_RangeCard", "ACE_RangeTable_82mm", "ACE_artilleryTable", "ToolKit", "ACE_surgicalKit", "Medikit", "ACE_personalAidKit",

	/*Viseur*/
	"rhsusf_acc_acog_rmr", "optic_arco_blk_f", "optic_erco_blk_f", "rhsusf_acc_elcan", "rhsusf_acc_eotech_552", "rhsusf_acc_eotech_552_d", "rhsusf_acc_compm4", "rhsusf_acc_su230_mrds", "rhsusf_acc_eotech_xps3", "optic_Arco_arid_F", "optic_Yorris", "optic_DMS", "optic_Aco", "optic_ACO_grn", "optic_Arco", "optic_Holosight", "optic_Holosight_arid_F", "optic_MRCO", "optic_KHS_tan", "optic_Hamr", "optic_SOS", "optic_MRD", "optic_LRPS", "optic_Nightstalker", "optic_NVS", "optic_ERCO_snd_F", "rhsusf_acc_g33_t1", "rhsusf_acc_g33_xps3", "rhsusf_acc_g33_xps3_tan", "rhsusf_acc_m2a1", "rhsusf_acc_m8541", "rhsusf_acc_m8541_mrds", "rhsusf_acc_su230_mrds_c", "rhsusf_acc_acog_d", "rhsusf_acc_acog_wd", "rhsusf_acc_LEUPOLDMK4", "optic_ams", "optic_ams_snd", "rhsusf_acc_premier_mrds", "rhsusf_acc_premier_anpvs27",

	/*Accessoire Weapon*/
	"acc_esd_01_flashlight", "acc_flashlight_pistol", "acc_pointer_IR", "ACE_acc_pointer_green", "acc_flashlight_smg_01", "acc_flashlight", "rhsusf_acc_anpeq15side", "rhsusf_acc_anpeq15_top", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_bk_top", "rhsusf_acc_anpeq15", "rhsusf_acc_anpeq15_light", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15a", "rhsusf_acc_anpeq16a", "rhsusf_acc_anpeq16a_light", "rhsusf_acc_anpeq16a_top", "rhsusf_acc_anpeq16a_light_top",

	/*Silencieux Bipied*/
	"rhsusf_acc_nt4_black", "muzzle_antenna_03_f", "muzzle_antenna_02_f", "muzzle_antenna_01_f", "ACE_muzzle_mzls_338", "ACE_muzzle_mzls_smg_01", "ACE_muzzle_mzls_L", "ACE_muzzle_mzls_H", "ACE_muzzle_mzls_B", "ACE_muzzle_mzls_smg_02", "ACE_muzzle_mzls_93mmg", "muzzle_snds_acp", "muzzle_snds_M", "muzzle_snds_m_snd_F", "muzzle_snds_H", "muzzle_snds_570", "muzzle_snds_H_snd_F", "muzzle_snds_B", "muzzle_snds_B_snd_F", "muzzle_snds_B_arid_F", "muzzle_snds_L", "muzzle_snds_58_blk_F", "muzzle_snds_65_TI_blk_F", "muzzle_snds_H_MG_blk_F", "muzzle_snds_338_black", "muzzle_snds_338_sand", "bipod_02_F_arid", "bipod_01_F_mtp", "bipod_01_F_blk", "bipod_01_F_snd", "ChemicalDetector_01_tan_F", "ChemicalDetector_01_black_F", "ChemicalDetector_01_olive_F", "rhsusf_acc_saw_bipod", "rhsusf_acc_grip4", "rhsusf_acc_m952v", "rhsusf_acc_wmx", "rhsusf_acc_wmx_bk", "rhsusf_acc_nt4_tan", "rhsusf_acc_aac_m14dcqd_silencer", "rhsusf_acc_aac_m14dcqd_silencer_d", "rhsusf_acc_m2010s", "rhsusf_acc_m2010s_d", "rhsusf_acc_m2010s_wd", "rhsusf_acc_m24_silencer_black", "rhsusf_acc_m24_muzzlehider_black", "rhsusf_acc_ardec_m240", "rhsusf_acc_aac_762sd_silencer", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_sdn6_suppressor", "rhsusf_acc_sr25s", "rhsusf_acc_sr25s_wd", "rhsusf_acc_sr25s_d", "rhsusf_acc_rotex_mp7", "rhsusf_acc_rotex5_tan", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3", "rhsusf_acc_harris_bipod", "rhsusf_acc_grip2", "rhsusf_acc_grip1",

	/*JVN*/
	"NVGoggles", "NVGoggles_OPFOR", "ACE_NVG_Wide", "rhsusf_ANPVS_14", "rhsusf_ANPVS_15", "rhsusf_Rhino"
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
	"TFAR_rt1523g_sage",
	"rhsusf_assault_eagleaiii_coy",
	"B_rhsusf_B_BACKPACK",
	"rhsusf_assault_eagleaiii_ocp",
	"rhsusf_assault_eagleaiii_ucp",
	"rhsusf_falconii_coy",
	"rhsusf_falconii_mc",
	"rhsusf_falconii",
	"rhsusf_eject_Parachute_backpack",
	"TCGM_BikePack_nht",
	"TCGM_BikePack_hexa",
	"TCGM_BikePack_hex",
	"TCGM_BikePack_hexw",
	"TCGM_BikePack_oli",
	"TCGM_BikePack_snd",
	"TCGM_BikePack_win"
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
