private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: farkhar"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 if(tolower(_worldName) == "farkhar") then {
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f\naval\piers\pier_small_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_transport_cart.p3d","ca\structures_e\misc\shed_m01_ep1.p3d","a3\structures_f\civ\accessories\timbers_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_wheel_cart.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_bags_stack.p3d","ca\structures_e\housel\house_l_1_ruins_ep1.p3d","ca\data\krater.p3d","ca\structures_e\misc\shed_w02_ep1.p3d","ca\structures_e\misc\shed_m03_ruins_ep1.p3d","ca\buildings\misc\stanek_1.p3d","ca\buildings\kulna.p3d","ca\structures_e\misc\shed_w03_ep1.p3d","ca\structures_e\housek\terrace_k_1_ep1.p3d","ca\buildings\podesta_1_stairs4.p3d","ca\wheeled\skodovka_wrecked.p3d","ca\structures_e\housea\a_minaret\a_minaret_ruins_ep1.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_2_ruins_ep1.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_1_ruins_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_2_ruins_ep1.p3d","ca\structures_e\housel\house_l_9_ruins_ep1.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_1_ep1.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_2_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_ruins_ep1.p3d","ca\structures_e\housel\house_l_3_ruins_ep1.p3d","ca\structures_e\housek\house_k_7_ruins_ep1.p3d","ca\structures_e\wall\wall_l\wall_l3_5m_ruins_ep1.p3d","ca\structures_e\wall\wall_l\wall_l3_pillar_ruins_ep1.p3d","ca\structures\mil\mil_barracks_i.p3d","a3\structures_f\ind\solarpowerplant\spp_transformer_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_crates.p3d","a3\structures_f_heli\furniture\rattantable_01_f.p3d","ca\structures_e\misc\misc_interier\teapot_ep1.p3d","ca\structures_e\misc\misc_market\kiosk_ep1.p3d","ca\structures_e\housea\a_minaret\a_minaret_dam_ep1.p3d","a3\structures_f_argo\military\fortifications\sandbagbarricade_01_f.p3d","a3\structures_f_argo\military\fortifications\sandbagbarricade_01_half_f.p3d","a3\structures_f_argo\military\fortifications\sandbagbarricade_01_hole_f.p3d","ca\structures_e\housek\terrace_k_1_r_ep1.p3d","a3\weapons_f\ammoboxes\proxy_usbasicexplosives.p3d","ca\data\particleeffects\craterlong\craterlong.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_cages.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_crates_stack.p3d","ca\structures_e\housel\house_l_6_ruins_ep1.p3d","a3\structures_f_argo\decals\horizontal\dirtpatch_01_6x8_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_canister.p3d","ca\structures_e\misc\misc_cables\misc_cable_ep1.p3d","ca\misc\radio.p3d","a3\structures_f_heli\civ\constructions\gastank_01_yellow_f.p3d","ca\misc2\explosive\explosive.p3d","a3\structures_f_kart\civ\sportsgrounds\oil_spill.p3d","ca\structures\nav_boathouse\nav_boathouse_piert.p3d","a3\structures_f\households\slum\cargo_house_slum_f.p3d","ca\wheeled\hmmwv_wrecked.p3d","ca\wheeled\data\damagewheel\damagewheel_4.p3d","ca\structures_e\housek\house_k_5_ruins_ep1.p3d","ca\structures_e\housek\house_k_6_ruins_ep1.p3d","ca\structures_e\housek\house_k_3_ruins_ep1.p3d","a3\structures_f\bridges\bridge_01_f.p3d","ca\structures_e\housec\house_c_5_v1_dam_ep1.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["ca\structures_e\housec\house_c_10_dam_ep1.p3d","ca\misc\empty.p3d","ca\structures_e\ind\ind_shed\ind_shed_02_ep1.p3d","ca\buildings\dum_mesto3_istan.p3d","ca\structures_e\housea\a_minaret\a_minaret_ep1.p3d","ca\structures_e\ind\ind_garage01\ind_garage01_ep1.p3d","a3\structures_f\ind\crane\crane_f.p3d","ca\buildings\misc\stanek_1c.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_pneu.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_tires.p3d","ca\structures\misc\armory\pneu\pneu.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_barrel_brown.p3d","a3\structures_f_heli\civ\market\pallettrolley_01_khaki_f.p3d","a3\structures_f_heli\ind\cargo\cargo10_sand_f.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_hopper_ep1.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv2_ep1.p3d","ca\structures_e\housel\house_l_8_ruins_ep1.p3d","ca\structures_e\housel\house_l_7_ruins_ep1.p3d","ca\structures_e\housek\house_k_1_ruins_ep1.p3d","ca\buildings\dum_istan2_02.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_corner_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_addon_ep1.p3d","ca\structures\nav_pier\nav_pier_pneu.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_gate_ruins_ep1.p3d","ca\buildings\bouda_plech_open.p3d","ca\structures_pmc\misc\shed\shed_w02_pmc.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_gate_ep1.p3d","ca\misc2\bagfenceshort.p3d","ca\structures_e\housea\a_citygate1\a_citygate1_ep1.p3d","a3\structures_f_argo\civilian\addons\addon_02_b_white_ruins_f.p3d","a3\structures_f_argo\civilian\stone_shed_01\stone_shed_01_b_raw_ruins_f.p3d","cup\terrains\cup_terrains_cwa_misc\deadbody_ru.p3d","ca\misc2\bagfenceround.p3d","ca\misc2\bagfenceend.p3d","ca\misc2\bagfencecorner.p3d","cup\terrains\cup_terrains_cwa_misc\deadbody_us.p3d","ca\buildings\podesta_1_stairs2.p3d","a3\structures_f_argo\cultural\statues\pedestal_02_f.p3d","ca\buildings\podesta_1_cube.p3d","a3\structures_f_argo\decals\horizontal\roadcrack_01_4x4_f.p3d","a3\structures_f_heli\furniture\officecabinet_01_f.p3d","ca\buildings\dum_istan4_detaily1.p3d","ca\buildings\misc\stanek_1b.p3d","ca\structures_e\misc\misc_interier\table_small_ep1.p3d","ca\structures_pmc\misc\shed\shed_w03_pmc.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_2_ruins_ep1.p3d","ca\buildings\dum_istan2_03.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_shed_small.p3d","ca\buildings\dum_olez_istan2_maly.p3d","a3\structures_f_argo\cultural\statues\statue_02_f.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv1_end_ep1.p3d","ca\buildings\dum_istan2.p3d","ca\structures\furniture\cases\case_bedroom_a\case_bedroom_a.p3d","ca\buildings2\shed_small\shed_w03.p3d","ca\buildings2\shed_small\shed_w01.p3d","a3\structures_f_heli\items\sport\football_01_f.p3d","a3\structures_f_mark\items\sport\airhorn_01_f.p3d","ca\buildings2\shed_small\shed_m01.p3d","ca\buildings2\ind_workshop01\ind_workshop01_box.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f_epb\items\luggage\luggageheap_01_f.p3d","ca\buildings\misc\hrobecek.p3d","ca\buildings\misc\hrobecek_krizekhelma.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_hq_ruins_ep1.p3d","ca\buildings\misc\leseni4x.p3d","ca\buildings\dum_istan2_03a.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_gate_dam_ep1.p3d","ca\buildings2\shed_small\shed_m03.p3d","a3\soft_f_bootcamp\offroad_01\offroad_01_repair_civ_f.p3d","ca\buildings2\ind_garage01\ind_garage01_ruins.p3d","ca\buildings\podesta_1_stairs.p3d","ca\structures\rail\rail_platform\rail_platform_segment.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_2_dam_ep1.p3d","a3\structures_f\households\addons\i_garage_v2_f.p3d","ca\misc2\bighbarrier.p3d","ca\misc2\hbarrier1.p3d","a3\weapons_f\dummyheadgear.p3d","a3\weapons_f\ammoboxes\usbasicammo.p3d","a3\weapons_f\dummyitem.p3d","a3\weapons_f\ammoboxes\bags\backpack_compact.p3d","a3\weapons_f\ammoboxes\bags\backpack_small.p3d","a3\weapons_f\ammoboxes\ammobox_f.p3d","a3\structures_f_heli\items\tools\rope_01_f.p3d","cup\terrains\cup_terrains_cwa_furniture\tables\table_map_noe.p3d","a3\weapons_f\dummyvest.p3d","a3\weapons_f\ammoboxes\usbasicweapons.p3d","ca\misc2\gunrack1.p3d","ca\buildings\garaz.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_stretcher.p3d","ca\misc2\baseball\baseball.p3d","a3\structures_f_epa\items\medical\waterpurificationtablets_f.p3d","ca\structures_e\housec\house_c_10_ruins_ep1.p3d","a3\soft_f_gamma\van_01\van_01_transport_f.p3d","a3\structures_f_argo\cultural\statues\pedestal_01_f.p3d","ca\structures\mil\mil_controltower_ruins.p3d","ca\misc\uh60_crashed.p3d","ca\buildings2\ind_shed_02\ind_shed_02_main.p3d","ca\buildings2\ind_shed_02\ind_shed_02_end.p3d","ca\buildings2\ind_workshop01\ind_workshop01_01.p3d","ca\buildings2\ind_workshop01\ind_workshop01_03.p3d","a3\structures_f_argo\commercial\billboards\billboard_03_ygont_f.p3d","a3\structures_f_argo\commercial\billboards\billboard_04_blank_f.p3d","ca\structures_e\housek\house_k_8_ruins_ep1.p3d","a3\structures_f_argo\decals\horizontal\roadcrack_01_6x2_f.p3d","a3\data_f\particleeffects\craterlong\craterlong_small.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_corner_ruins_ep1.p3d","ca\structures\misc\armory\woodenramp\woodenramp.p3d","a3\structures_f_argo\walls\city\wallcity_01_pillar_grey_f.p3d","ca\buildings\furniture\case_bedroom_b.p3d","ca\misc_e\mikrofon_ep1.p3d","a3\weapons_f\dummycap.p3d","a3\weapons_f\dummyitemhorizontal.p3d","a3\structures_f_heli\items\food\tableware_01_napkin_f.p3d","a3\weapons_f\dummyweapon.p3d","a3\structures_f_heli\items\food\tableware_01_stackofnapkins_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_barrel_grey.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_barrel_white.p3d","ca\buildings\ruins\leseni2x_ruins.p3d","ca\structures_e\misc\misc_interier\cabinet_ep1.p3d","ca\buildings\misc\leseni2x.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["ca\structures_e\housel\house_l_4_ruins_ep1.p3d","ca\buildings\ruins\dum_istan4_detaily1_ruins.p3d","a3\structures_f_argo\military\fortifications\barricade_01_4m_f.p3d","ca\misc_e\fortified_nest_small_ep1.p3d","a3\structures_f\mil\fortification\hbarriertower_f.p3d","a3\structures_f_exp\military\fortifications\bagfence_01_short_green_f.p3d","a3\structures_f\mil\fortification\hbarrier_big_f.p3d","ca\misc_e\wf\wf_hesco_big_10x_ep1.p3d","ca\misc3\wf\wf_depot.p3d","a3\structures_f\mil\helipads\helipadsquare_f.p3d","a3\structures_f_exp\military\fortifications\bagfence_01_end_green_f.p3d","a3\structures_f_exp\military\fortifications\bagfence_01_long_green_f.p3d","ca\buildings\podesta_1_stairs3.p3d","ca\structures\nav_boathouse\nav_boathouse.p3d","ca\structures_e\misc\shed_m01_ruins_ep1.p3d","ca\misc2\table\table.p3d","ca\buildings\budova1.p3d","ca\buildings2\ind_workshop01\ind_workshop01_l.p3d","ca\buildings2\ind_workshop01\ind_workshop01_04.p3d","ca\structures\shed_ind\shed_ind02.p3d","ca\buildings\misc\zavora.p3d","ca\buildings\dum_olez_istan2_open2.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_rail_ep1.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_rail_end_ep1.p3d","a3\structures_f\ind\factory\factory_tunnel_f.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_rail_switch_ep1.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv1_10_ep1.p3d","a3\structures_f\ind\factory\factory_conv2_f.p3d","a3\structures_f_heli\ind\cargo\cargo10_light_green_f.p3d","a3\structures_f_heli\ind\cargo\cargo10_brick_red_f.p3d","ca\buildings\ruins\leseni4x_ruins.p3d","ca\structures\ind_sawmill\ind_sawmill.p3d","ca\structures\ind_quarry\ind_quarry.p3d","a3\structures_f_argo\industrial\materials\woodenplanks_01_messy_pine_f.p3d","ca\structures_e\ind\ind_oil_mine\ind_oil_pump_ep1.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv1_main_ep1.p3d","a3\structures_f_argo\civilian\stone_shed_01\i_stone_shed_01_c_clay_f.p3d","a3\structures_f_argo\military\fortifications\barricade_01_10m_f.p3d","ca\data\library\road_cone.p3d","ca\buildings\misc\zed_civil.p3d","a3\structures_f_exp\civilian\accessories\clothesline_01_f.p3d","ca\buildings\misc\zed_podplaz_civil.p3d","ca\buildings\misc\zed_dira_civil.p3d","a3\structures_f\ind\solarpowerplant\solarpanel_1_f.p3d","a3\structures_f_exp\commercial\addons\addon_05_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_chimney_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_shed_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_crystallizer_f.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv1_10_ruins_ep1.p3d","ca\buildings\furniture\conference_table_a.p3d","a3\structures_f\ind\shed\u_shed_ind_f.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_hopper_ruins_ep1.p3d","ca\structures_e\ind\ind_oil_mine\ind_oil_pump_ruins_ep1.p3d","ca\structures_e\ind\ind_coltan_mine\ind_coltan_conv1_main_ruins_ep1.p3d","a3\structures_f_argo\cultural\statues\statue_01_f.p3d","cup\terrains\cup_terrains_cwa_misc\cwa_barrel_red.p3d","a3\structures_f_heli\civ\constructions\gastank_02_f.p3d","a3\structures_f_heli\ind\cargo\cargo10_military_green_f.p3d","ca\buildings2\ind_tank\ind_tanksmall.p3d","a3\structures_f\ind\shed\shed_big_f.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\structures_f_argo\industrial\agriculture\vineyardfence_01_f.p3d","ca\structures_pmc\ind\hopper_old_pmc.p3d","ca\buildings\ammostore2.p3d","a3\structures_f_argo\walls\military\mil_wallbig_4m_battered_f.p3d","a3\structures_f_argo\walls\military\mil_wallbig_corner_battered_f.p3d","a3\structures_f_argo\walls\military\mil_wallbig_4m_damaged_right_f.p3d","a3\structures_f_argo\walls\military\mil_wallbig_debris_f.p3d","a3\structures_f_argo\walls\military\mil_wallbig_4m_damaged_left_f.p3d","a3\structures_f_argo\walls\military\mil_wallbig_4m_damaged_center_f.p3d","a3\structures_f\ind\fuelstation\fuelstation_feed_f.p3d","a3\structures_f\training\shoot_house_tunnel_f.p3d","a3\structures_f\mil\fortification\hbarrier_3_f.p3d","ca\structures_e\proxy_buildingparts\house_l\house_l_6_dam1_ep1.p3d","ca\misc\data\sidewalks\sidewalkclear.p3d","ca\misc_e\powergenerator.p3d","a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d","a3\structures_f\mil\fortification\hbarrierwall6_f.p3d","ca\roads_pmc\bridge\bridge_asf_pmc.p3d","ca\buildings\tents\astan.p3d","ca\misc\snowman.p3d","ca\misc\data\sidewalks\sidewalk6shortend.p3d","ca\buildings\dum_olez_istan2.p3d","ca\buildings\dum_olez_istan1.p3d","cup\terrains\cup_terrains_cwa_misc\deadbody_fia.p3d","ca\buildings\ruins\statek_hl_bud_ruins.p3d","ca\structures_e\housea\a_citygate1\a_citygate1_ruins_ep1.p3d","ca\misc\mutt_vysilacka.p3d","ca\buildings\furniture\hromada_beden_dekorativnix.p3d","a3\structures_f_argo\military\fortifications\czechhedgehog_01_f.p3d","a3\structures_f_heli\ind\machines\dieselgroundpowerunit_01_f.p3d","ca\misc_e\wf\wf_vehicle_service_point_east_ep1.p3d","a3\weapons_f\items\medikit.p3d","a3\structures_f_heli\ind\machines\waterpump_01_f.p3d","a3\structures_f_heli\items\sport\basketball_01_f.p3d","a3\structures_f_mark\training\shootingmat_01_folded_f.p3d","a3\structures_f\civ\camping\ground_sheet_yellow_f.p3d","a3\structures_f\mil\helipads\helipadrescue_f.p3d","a3\structures_f_heli\items\food\tableware_01_cup_f.p3d","a3\structures_f_heli\items\food\tableware_01_tray_f.p3d","a3\structures_f_heli\items\food\tableware_01_knife_f.p3d","a3\structures_f_bootcamp\items\food\foodcontainer_01_f.p3d","a3\structures_f_heli\items\food\tableware_01_fork_f.p3d","a3\supplies_f_heli\slingload\slingload_01_medevac_f.p3d","ca\buildings\castle\helfenburk_budova2.p3d","a3\props_f_orange\humanitarian\camps\emergencyblanket_01_discarded_f.p3d","a3\props_f_orange\humanitarian\supplies\foodsacks_01_cargonet_f.p3d","a3\props_f_orange\humanitarian\supplies\foodsacks_01_large_f.p3d","a3\props_f_orange\humanitarian\supplies\paperbox_01_small_destroyed_f.p3d","a3\props_f_orange\civilian\constructions\cinderblock_01_f.p3d","ca\desert2\data\prop\sleepingbag.p3d","a3\structures_f\naval\piers\pier_f.p3d","a3\props_f_orange\humanitarian\supplies\paperbox_01_open_water_f.p3d","ca\buildings\podesta_5.p3d","a3\structures_f_argo\walls\city\wallcity_01_pillar_yellow_f.p3d","a3\structures_f_heli\civ\constructions\gastank_01_khaki_f.p3d","a3\structures_f_heli\ind\machines\pressurewasher_01_f.p3d","ca\buildings\podesta_1_mid_cornp.p3d","ca\buildings\podesta_1_mid.p3d","a3\structures_f_argo\walls\city\wallcity_01_4m_blue_f.p3d","ca\buildings\podesta_1_cube_long.p3d"];
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["a3\props_f_orange\humanitarian\camps\intravenstand_01_f.p3d","a3\props_f_orange\humanitarian\camps\intravenbag_01_empty_f.p3d","a3\structures_f_orange\industrial\cargo\cargo20_idap_f.p3d","a3\props_f_orange\humanitarian\camps\emergencyblanket_02_stack_f.p3d","a3\props_f_orange\humanitarian\camps\firstaidkit_01_open_f.p3d","a3\props_f_orange\humanitarian\supplies\foodsacks_01_small_f.p3d","a3\props_f_orange\humanitarian\camps\bodybag_01_empty_f.p3d","a3\props_f_orange\humanitarian\camps\bodybag_01_folded_f.p3d","a3\props_f_orange\humanitarian\camps\bodybag_01_f.p3d","a3\props_f_orange\humanitarian\camps\stretcher_01_f.p3d","a3\props_f_orange\humanitarian\camps\stretcher_01_folded_f.p3d","a3\structures_f_heli\items\luggage\plasticcase_01_medium_f.p3d","a3\props_f_orange\humanitarian\supplies\waterbottle_01_compressed_f.p3d","a3\props_f_orange\humanitarian\supplies\waterbottle_01_pack_f.p3d","a3\structures_f_heli\civ\constructions\tooltrolley_02_f.p3d","a3\structures_f_bootcamp\ind\cargo\cargo20_vr_f.p3d","a3\props_f_orange\humanitarian\supplies\paperbox_01_small_stacked_f.p3d","a3\structures_f_kart\civ\sportsgrounds\plasticbarrier_03_f.p3d","a3\structures_f_heli\civ\constructions\weldingtrolley_01_f.p3d","a3\structures_f_heli\civ\constructions\mobilescafolding_01_f.p3d","a3\props_f_orange\humanitarian\camps\emergencyblanket_01_f.p3d","a3\props_f_orange\humanitarian\supplies\foodsack_01_full_f.p3d","a3\props_f_orange\humanitarian\supplies\foodsack_01_empty_f.p3d","a3\props_f_orange\humanitarian\supplies\waterbottle_01_stack_f.p3d","ca\buildings2\misc_cargo\misc_cargo1g.p3d","ca\buildings\podesta_1_mid_cornl.p3d","ca\buildings\sara_domek03.p3d","a3\structures_f_exp\walls\net\netfence_01_m_d_f.p3d","ca\buildings\podesta_1_cornl.p3d","a3\structures_f_exp\walls\hedges\hedge_01_s_4m_f.p3d","a3\structures_f_exp\walls\net\netfence_01_m_gate_f.p3d","ca\structures_e\housea\a_statue\a_statue_ep1.p3d","a3\structures_f_exp\commercial\shop_town_05\shop_town_05_addon_f.p3d","a3\structures_f_argo\walls\city\wallcity_01_gate_grey_f.p3d","a3\structures_f_argo\industrial\materials\woodenplanks_01_pine_f.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["ca\buildings\hlaska.p3d","ca\structures_e\mil\mil_barracks_ep1.p3d","ca\structures_e\mil\mil_barracks_l_ep1.p3d","ca\structures_e\mil\mil_house_ep1.p3d","ca\misc_e\fortified_nest_big_ep1.p3d","ca\buildings\tents\fortress_02.p3d","ca\buildings\tents\camo_box.p3d","ca\misc_e\stan_east_ep1.p3d","ca\misc_e\barrack2_ep1.p3d","a3\structures_f\mil\cargo\cargo_patrol_v3_f.p3d","ca\structures_e\mil\mil_hangar_ep1.p3d","a3\structures_f\mil\bagbunker\bagbunker_large_f.p3d","a3\structures_f\mil\barracks\u_barracks_v2_f.p3d","ca\buildings\hangar_2.p3d","a3\structures_f\mil\barracks\i_barracks_v2_f.p3d","a3\structures_f\mil\offices\miloffices_v1_f.p3d","a3\structures_f\mil\cargo\medevac_house_v1_f.p3d","a3\structures_f\mil\cargo\medevac_hq_v1_f.p3d","ca\misc3\tent_east.p3d","a3\structures_f\mil\cargo\cargo_patrol_v1_f.p3d","a3\structures_f\mil\bagbunker\bagbunker_small_f.p3d","ca\misc3\a_tent.p3d","ca\misc_e\fort_watchtower_ep1.p3d","ca\misc_e\tent_east_ep1.p3d","a3\structures_f\mil\cargo\cargo_tower_v3_f.p3d","ca\Structures_E\Wall\Wall_L\Wall_L3_5m_EP1.p3d"];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["ca\structures_e\mil\mil_barracks_ep1.p3d","ca\structures_e\mil\mil_house_ep1.p3d"];
ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + ["ca\structures_e\mil\mil_barracks_ep1.p3d","ca\structures_e\mil\mil_house_ep1.p3d"];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["ca\structures_e\housel\house_l_1_ep1.p3d","ca\structures_e\housel\house_l_6_dam_ep1.p3d","ca\structures_e\housel\house_l_7_ep1.p3d","ca\structures_e\housek\house_k_5_dam_ep1.p3d","ca\structures_e\housec\house_c_11_ep1.p3d","ca\structures_e\housek\house_k_6_dam_ep1.p3d","ca\structures_e\housek\house_k_3_ep1.p3d","ca\structures_e\housel\house_l_6_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_2_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_1_ep1.p3d","ca\structures_e\misc\misc_market\market_stalls_01_ep1.p3d","ca\structures_e\housel\house_l_3_ep1.p3d","ca\structures_e\housek\house_k_1_ep1.p3d","ca\structures_e\housek\house_k_7_ep1.p3d","ca\structures_e\housel\house_l_8_ep1.p3d","ca\structures_e\housek\house_k_8_dam_ep1.p3d","ca\structures_e\housek\house_k_3_dam_ep1.p3d","ca\structures_e\housek\house_k_5_ep1.p3d","ca\structures_e\housek\house_k_6_ep1.p3d","ca\structures_e\housec\house_c_5_v3_ep1.p3d","ca\structures_e\housek\house_k_7_dam_ep1.p3d","ca\structures_e\housek\house_k_8_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_1_dam_ep1.p3d","ca\structures_e\housec\house_c_12_ep1.p3d","ca\buildings\dum_istan2b.p3d","ca\buildings\dum_istan3.p3d","ca\structures_e\housec\house_c_4_ep1.p3d","ca\structures_e\housea\a_villa\a_villa_ep1.p3d","ca\structures_e\housec\house_c_5_dam_ep1.p3d","ca\structures_e\housec\house_c_5_v3_dam_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_1_dam_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_hq_ep1.p3d","ca\structures_e\housec\house_c_9_ep1.p3d","ca\buildings\dum_istan3_hromada.p3d","ca\structures_e\housec\house_c_3_ep1.p3d","ca\structures_e\housec\house_c_1_ep1.p3d","ca\buildings\dum_istan4_big.p3d","ca\buildings\dum_istan3_hromada2.p3d","ca\buildings\dum_istan4.p3d","ca\structures_e\housea\a_office01\a_office01_ep1.p3d","a3\structures_f\dominants\wip\wip_f.p3d","a3\structures_f\ind\shed\i_shed_ind_f.p3d","ca\structures_e\housec\house_c_4_dam_ep1.p3d","ca\buildings\dum_istan4_big_inverse.p3d","ca\structures_e\housea\a_minaret_porto\a_minaret_porto_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_2_ep1.p3d","ca\structures_e\housec\house_c_1_v2_dam_ep1.p3d","ca\structures_pmc\ind\fuelstation\fuelstation_build_pmc.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_1_ep1.p3d","ca\structures\house\a_office02\a_office02.p3d","ca\structures\house\a_hospital\a_hospital.p3d","cup\terrains\cup_terrains_cwa_noe_buildings\mbg_tovarna1.p3d","a3\weapons_f\ammoboxes\wpnsbox_f.p3d","ca\structures_e\housec\house_c_12_dam_ep1.p3d","ca\buildings\budova3.p3d","a3\structures_f\ind\carservice\carservice_f.p3d","a3\structures_f_argo\industrial\agriculture\barn_01_brown_f.p3d","a3\structures_f_argo\civilian\stone_house_big_01\i_stone_house_big_01_b_clay_f.p3d"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["ca\structures_e\housel\house_l_6_dam_ep1.p3d","ca\structures_e\housek\house_k_3_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_2_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_1_ep1.p3d","ca\structures_e\housel\house_l_3_ep1.p3d","ca\structures_e\housek\house_k_1_ep1.p3d","ca\structures_e\housek\house_k_7_ep1.p3d","ca\structures_e\housek\house_k_8_dam_ep1.p3d","ca\structures_e\housek\house_k_3_dam_ep1.p3d","ca\structures_e\housek\house_k_6_ep1.p3d","ca\structures_e\housek\house_k_8_ep1.p3d","ca\structures_e\housec\house_c_12_ep1.p3d","ca\structures_e\housec\house_c_4_ep1.p3d","ca\structures_e\housea\a_villa\a_villa_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_hq_ep1.p3d","ca\buildings\dum_istan3_hromada2.p3d","ca\structures_e\housea\a_office01\a_office01_ep1.p3d","a3\structures_f\dominants\wip\wip_f.p3d","ca\structures_e\housec\house_c_4_dam_ep1.p3d","ca\structures\house\a_office02\a_office02.p3d","ca\structures\house\a_hospital\a_hospital.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["ca\structures_e\housel\house_l_1_ep1.p3d","ca\structures_e\housel\house_l_6_dam_ep1.p3d","ca\structures_e\housel\house_l_3_dam_ep1.p3d","ca\structures_e\housel\house_l_7_ep1.p3d","ca\structures_e\housel\house_l_9_ep1.p3d","ca\structures_e\housek\house_k_5_dam_ep1.p3d","ca\structures_e\housec\house_c_11_ep1.p3d","ca\structures_e\housec\house_c_5_ep1.p3d","ca\structures_e\housek\house_k_6_dam_ep1.p3d","ca\structures_e\housek\house_k_3_ep1.p3d","ca\structures_e\housel\house_l_6_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_2_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_1_ep1.p3d","ca\structures_e\housel\house_l_3_ep1.p3d","ca\structures_e\housek\house_k_1_ep1.p3d","ca\structures_e\housel\house_l_4_ep1.p3d","ca\structures_e\housek\house_k_7_ep1.p3d","ca\structures_e\housel\house_l_8_ep1.p3d","ca\structures_e\housel\house_l_7_dam_ep1.p3d","ca\structures_e\housel\house_l_8_dam_ep1.p3d","ca\structures_e\housek\house_k_8_dam_ep1.p3d","ca\structures_e\housek\house_k_3_dam_ep1.p3d","ca\structures_e\housel\house_l_4_dam_ep1.p3d","ca\structures_e\housek\house_k_2_basehide_ep1.p3d","ca\structures_e\housek\house_k_5_ep1.p3d","ca\structures_e\housel\house_l_3_h_ep1.p3d","ca\structures_e\housek\house_k_6_ep1.p3d","ca\structures_e\housec\house_c_5_v3_ep1.p3d","ca\structures_e\housek\house_k_7_dam_ep1.p3d","ca\structures_e\housek\house_k_8_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_2_dam_ep1.p3d","ca\structures_e\housea\a_mosque_small\a_mosque_small_1_dam_ep1.p3d","ca\structures_e\housec\house_c_12_ep1.p3d","ca\structures\mil\mil_guardhouse.p3d","ca\buildings\dum_istan2b.p3d","ca\buildings\dum_istan3.p3d","ca\structures_e\housec\house_c_4_ep1.p3d","ca\structures_e\housea\a_villa\a_villa_ep1.p3d","a3\structures_f\households\slum\slum_house01_f.p3d","ca\structures_e\housec\house_c_5_dam_ep1.p3d","ca\structures_e\housec\house_c_5_v3_dam_ep1.p3d","ca\structures_e\housec\house_c_5_v2_dam_ep1.p3d","ca\structures_e\housec\house_c_11_dam_ep1.p3d","a3\structures_f\households\slum\slum_house02_f.p3d","a3\structures_f\households\slum\slum_house03_f.p3d","ca\desert2\build\r_minaret.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_1_dam_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_hq_ep1.p3d","ca\structures_e\housec\house_c_5_v1_ep1.p3d","ca\structures_e\housec\house_c_5_v2_ep1.p3d","ca\structures_e\housec\house_c_9_ep1.p3d","ca\buildings\dum_istan3_hromada.p3d","ca\structures_e\housec\house_c_3_ep1.p3d","ca\structures_e\housec\house_c_1_v2_ep1.p3d","ca\structures_e\housec\house_c_2_ep1.p3d","ca\structures_e\housec\house_c_1_ep1.p3d","ca\structures_e\housec\house_c_10_ep1.p3d","ca\structures_e\housea\a_stationhouse\a_stationhouse_ep1.p3d","ca\buildings\dum_istan4_big.p3d"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["ca\buildings\dum_istan3_hromada2.p3d","ca\buildings\dum_istan4.p3d","ca\structures_e\housea\a_office01\a_office01_ep1.p3d","a3\structures_f\dominants\wip\wip_f.p3d","a3\structures_f\ind\shed\i_shed_ind_f.p3d","ca\structures_e\housec\house_c_4_dam_ep1.p3d","a3\structures_f\households\wip\unfinished_building_01_f.p3d","a3\structures_f\households\wip\unfinished_building_02_f.p3d","ca\buildings\dum_istan4_big_inverse.p3d","ca\structures_e\housea\a_minaret_porto\a_minaret_porto_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_2_ep1.p3d","ca\buildings\dum_istan2_04a.p3d","ca\buildings\hut06.p3d","ca\buildings\dum_olez_istan1_open.p3d","ca\structures_e\housec\house_c_1_v2_dam_ep1.p3d","ca\structures_pmc\ind\fuelstation\fuelstation_build_pmc.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_1_ep1.p3d","ca\buildings2\ind_garage01\ind_garage01.p3d","ca\structures\house\a_office02\a_office02.p3d","ca\structures\house\a_hospital\a_hospital.p3d","cup\terrains\cup_terrains_cwa_noe_buildings\mbg_hlidac_budka.p3d","cup\terrains\cup_terrains_cwa_noe_buildings\mbg_tovarna1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_minaret_2_dam_ep1.p3d","ca\buildings\zastavka_jih.p3d","ca\structures_e\housec\house_c_2_dam_ep1.p3d","ca\structures_e\housec\house_c_1_dam_ep1.p3d","ca\buildings2\shed_small\shed_w02.p3d","ca\structures_e\housec\house_c_12_dam_ep1.p3d","ca\buildings\aut_zast.p3d","ca\buildings2\ind_workshop01\ind_workshop01_02.p3d","ca\buildings\budova3.p3d","a3\structures_f\ind\carservice\carservice_f.p3d","a3\structures_f_argo\industrial\agriculture\barn_01_brown_f.p3d","a3\structures_f_argo\civilian\stone_house_big_01\i_stone_house_big_01_b_clay_f.p3d","a3\structures_f\dominants\castle\castle_01_tower_f.p3d"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + ["a3\structures_f\ind\solarpowerplant\solarpanel_3_f.p3d","ca\structures_e\ind\ind_powerstation\ind_powerstation_ep1.p3d","ca\structures_e\misc\misc_powerline\powlines_transformer1_ep1.p3d","a3\structures_f\ind\dieselpowerplant\dp_transformer_f.p3d","ca\buildings2\misc_waterstation\misc_waterstation.p3d","ca\buildings2\misc_powerstation\misc_powerstation.p3d","a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d","ca\buildings\trafostanica_velka.p3d","a3\structures_f_exp\industrial\dieselpowerplant_01\dpp_01_transformer_f.p3d"];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + ["a3\structures_f\ind\transmitter_tower\tbox_f.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_hq_ep1.p3d","a3\structures_f\ind\transmitter_tower\ttowerbig_2_f.p3d"];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + ["ca\structures_e\ind\ind_coltan_mine\ind_coltan_main_ep1.p3d","ca\structures_pmc\ind\fuelstation\fuelstation_build_pmc.p3d","ca\buildings\benzina_schnell.p3d","ca\structures_e\mil\mil_repair_center_ep1.p3d","ca\structures_pmc\ind\fuelstation\fuelstation_feed_pmc.p3d","a3\structures_f\ind\factory\factory_main_f.p3d","ca\structures_e\ind\ind_oil_mine\ind_oil_tower_ep1.p3d","a3\structures_f\ind\carservice\carservice_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_storagebin_medium_f.p3d","ca\structures_e\ind\ind_fuelstation\ind_fuelstation_feed_ep1.p3d","a3\structures_f\ind\fuelstation\fuelstation_shed_f.p3d","ca\buildings2\ind_tank\ind_tankbig.p3d","a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d","a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d","ca\buildings\watertower1.p3d"];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + ["a3\structures_f\dominants\wip\wip_f.p3d","a3\structures_f\households\wip\unfinished_building_01_f.p3d","a3\structures_f\households\wip\unfinished_building_02_f.p3d"];
};