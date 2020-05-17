class Params {
    class btc_p_time_title {  // << Time options >>
        title = $STR_BTC_HAM_PARAM_TIME_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_time { // Set the start time:
        title = __EVAL(format ["      %1", localize "STR_A3_CFGVEHICLES_MODULEDATE_F_ARGUMENTS_HOUR_0"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
        default = 7;
    };
    class btc_p_acctime { // Acceleration time multiplier:
        title = __EVAL(format ["      %1", localize "STR_USRACT_TIME_INC"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12"};
        default = 4;
    };
    class btc_p_load { // Load the savegame (if available)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_LOAD"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_auto_db { // Auto savegame (can break player immersion)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_ASAVE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,24,48,72};
        texts[]={$STR_DISABLED,"1h","2h","3h","4h","5h","6h","7h","8h","9h","10h","11h","12h","24h","48h","72h"}; // texts[]={"Off","1h","2h","3h","4h","5h","6h","7h","8h","9h","10h","11h","12h","24h","48h","72h"};
        default = 0;
    };
    class btc_p_type_title { // << Faction options >>
        title = $STR_BTC_HAM_PARAM_FAC_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_en { // Enemy type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETYPE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87};
        texts[]={"0 - Bohemia Interactive: OTAN (Side: WEST)","1 - Bohemia Interactive: FIA (Side: WEST)","2 - Bohemia Interactive: Charlieco89's Mods (Side: WEST)","3 - Bohemia Interactive: AAF (Side: GUER)","4 - Bohemia Interactive: FIA (Side: GUER)","5 - Bohemia Interactive: CSAT (Side: EAST)","6 - Bohemia Interactive: FIA (Side: EAST)","7 -BLU Qinetix: Gendarmerie (Side: WEST)","8 -BLU Qinetix: OTAN (Pacifique) (Side: WEST)","9 -Expansion Bohemia Interactive: CTRG (Side: WEST)","10 -Expansion Bohemia Interactive: Syndikat (Side: GUER)","11 -Expansion Bohemia Interactive: CSAT (Pacifique) (Side: EAST)","12 -FR2035 Hector Corral: France (Side: WEST)","13 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Multi) (Side: WEST)","14 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Desert) (Side: WEST)","15 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Wood) (Side: WEST)","16 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Arctic) (Side: WEST)","17 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Special-Troops) (Side: WEST)","18 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Divers) (Side: WEST)","19 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Paras) (Side: WEST)","20 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(CT) (Side: WEST)","21 -FRASOF_LITE_mas massi & authors in credits: FRA-COS(Legion Etrangere) (Side: WEST)","22 -LOP_LeightsOPFOR Project OPFOR: Afghan National Army and Police (Side: WEST)","23 -LOP_LeightsOPFOR Project OPFOR: African Militia (Side: GUER)","24 -LOP_LeightsOPFOR Project OPFOR: African Militia (Side: EAST)","25 -LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: GUER)","26 -LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: EAST)","27 -LOP_LeightsOPFOR Project OPFOR: Boko Haram (Side: EAST)","28 -LOP_LeightsOPFOR Project OPFOR: Chernarussian Defence Forces (Side: WEST)","29 -LOP_LeightsOPFOR Project OPFOR: ChDKZ (Side: EAST)","30 -LOP_LeightsOPFOR Project OPFOR: Iraqi Armed Forces (Side: WEST)","31 -LOP_LeightsOPFOR Project OPFOR: Irish Republican Army (Side: EAST)","32 -LOP_LeightsOPFOR Project OPFOR: Iranian Armed Forces (Side: GUER)","33 -LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: GUER)","34 -LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: EAST)","35 -LOP_LeightsOPFOR Project OPFOR: Chernarussian National Insurgents (Side: GUER)","36 -LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: WEST)","37 -LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: GUER)","38 -LOP_LeightsOPFOR Project OPFOR: Private Military Company (Side: GUER)","39 -LOP_LeightsOPFOR Project OPFOR: Royal Army Corps of Sahrani (Side: GUER)","40 -LOP_LeightsOPFOR Project OPFOR: Sahrani Liberation Army (Side: EAST)","41 -LOP_LeightsOPFOR Project OPFOR: Takistani Armed Forces (Side: EAST)","42 -LOP_LeightsOPFOR Project OPFOR: Ultranationalists (Side: GUER)","43 -LOP_LeightsOPFOR Project OPFOR: Ukrainian Armed Forces (Side: GUER)","44 -LOP_LeightsOPFOR Project OPFOR: United Nations (Side: GUER)","45 -LOP_LeightsOPFOR Project OPFOR: United Armed Forces of Novorossiya (Side: EAST)","46 -LOP_LeightsOPFOR Project OPFOR: Ulster Volunteer Force (Side: GUER)","47 -MAS massi & authors in credits: South African Forces (Side: WEST)","48 -MAS massi & authors in credits: South African Forces(HD) (Side: WEST)","49 -MAS massi & authors in credits: African Governatives Forces (Side: GUER)","50 -MAS massi & authors in credits: African Governatives Forces(HD) (Side: GUER)","51 -MAS massi & authors in credits: African Rhodesian Forces (Side: GUER)","52 -MAS massi & authors in credits: African Rhodesian Forces(HD) (Side: GUER)","53 -MAS massi & authors in credits: African UN Forces (Side: WEST)","54 -MAS massi & authors in credits: African UN Forces(HD) (Side: WEST)","55 -MAS massi & authors in credits: African Rebel Forces (Side: EAST)","56 -MAS massi & authors in credits: African Rebel Forces(HD) (Side: EAST)","57 -RHS_AFRF Red Hammer Studios: Russia (MSV) (Side: EAST)","58 -RHS_AFRF Red Hammer Studios: Russia (RVA) (Side: EAST)","59 -RHS_AFRF Red Hammer Studios: Russia (TV) (Side: EAST)","60 -RHS_AFRF Red Hammer Studios: Russia (VDV) (Side: EAST)","61 -RHS_AFRF Red Hammer Studios: Russia (VMF) (Side: EAST)","62 -RHS_AFRF Red Hammer Studios: Russia (VPVO) (Side: EAST)","63 -RHS_AFRF Red Hammer Studios: Russia (VV) (Side: EAST)","64 -RHS_AFRF Red Hammer Studios: Russia (VVS - Grey) (Side: EAST)","65 -RHS_AFRF Red Hammer Studios: Russia (VVS - Camo) (Side: EAST)","66 -RHS_GREF Red Hammer Studios: Chernarus (Air Force) (Side: GUER)","67 -RHS_GREF Red Hammer Studios: Chernarus (Air Force) (Side: WEST)","68 -RHS_GREF RHS (A2 port): Chernarus (Ground Forces) (Side: GUER)","69 -RHS_GREF Red Hammer Studios: Chernarus (Ground Forces) (Side: WEST)","70 -RHS_GREF Red Hammer Studios: Chernarus (National Guard) (Side: GUER)","71 -RHS_GREF Red Hammer Studios: Chernarus (National Guard) (Side: WEST)","72 -RHS_GREF Red Hammer Studios: ChDKZ Insurgents (Side: EAST)","73 -RHS_GREF Red Hammer Studios: ChDKZ Insurgents (Side: GUER)","74 -RHS_SAF Red Hammer Studios: SAF (RVIPVO) (Side: GUER)","75 -RHS_SAF Red Hammer Studios: SAF (KOV) (Side: GUER)","76 -RHS_SAF Red Hammer Studios: SAF (Casques Bleus) (Side: GUER)","77 -RHS_USAF Red Hammer Studios: USA (SOCOM) (Side: WEST)","78 -RHS_USAF Red Hammer Studios: USA (USAF) (Side: WEST)","79 -RHS_USAF Red Hammer Studios: USA (Army - D) (Side: WEST)","80 -RHS_USAF Red Hammer Studios: USA (Army - W) (Side: WEST)","81 -RHS_USAF Red Hammer Studios: USA (USMC - D) (Side: WEST)","82 -RHS_USAF Red Hammer Studios: USA (USMC - W) (Side: WEST)","83 -RHS_USAF Red Hammer Studios: USA (Navy) (Side: WEST)","84 -RHSGREF Red Hammer Studios: Horizon Islands Defence Force (Side: WEST)","85 -RHSGREF Red Hammer Studios: Nationalist Troops (Side: GUER)","86 -RHSGREF Red Hammer Studios: Chernarus (U.N. Peacekeepers) (Side: GUER)","87 -VSM VanSchmoozin: VSM - Gear Pack (Side: WEST)"};
        default = 55;
    };
    class btc_p_AA { // Anti-Air infantry:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_EAA"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_tank { // Enemy uses Tank:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETANK"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_civ { // Civil type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};
        texts[]={"0 - EricJ: Afghan Civilians (Side: CIV)","1 - Bohemia Interactive: Civils (Side: CIV)","2 - Bohemia Interactive: Autre (Side: CIV)","3 -btc_militia_mod Giallustio: Afghan Civilians (Side: CIV)","4 -CFP Drew: Civilians (Afghanistan) (Side: CIV)","5 -CFP Drew: Civilians (African Christian) (Side: CIV)","6 -CFP Drew: Civilians (African Islamic) (Side: CIV)","7 -CFP Drew: Civilians (Asian) (Side: CIV)","8 -CFP Drew: Civilians (Middle Eastern) (Side: CIV)","9 -CUP_Units Community Upgrade Project: Civilians (Russian) (Side: CIV)","10 -CUP_Vehicles Community Upgrade Project: Civilians (Chernarus) (Side: CIV)","11 -CUP_Vehicles Community Upgrade Project: Civilians (Sahrani) (Side: CIV)","12 -CUP_Vehicles Community Upgrade Project: Civilians (Takistan) (Side: CIV)","13 -Expansion Bohemia Interactive: Civilians (UEG) (Side: CIV)","14 -LIB Reyhard & Joarius: 40s Civilians (Side: CIV)","15 -LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","16 -LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","17 -LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","18 -ORANGE Bohemia Interactive: IDAP (Side: CIV)","19 -RDS_CIV_PACK RDS (BIS A2 Port): Russians (Side: CIV)","20 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","21 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)","22 -UNSUNG Bohemia Interactive: Vietnamese (UNSUNG) (Side: CIV)"};
        default = 15;
    };
    class btc_p_civ_veh { // Civil vehicle type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPEVEH"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22};
        texts[]={"0 - EricJ: Afghan Civilians (Side: CIV)","1 - Bohemia Interactive: Civils (Side: CIV)","2 - Bohemia Interactive: Autre (Side: CIV)","3 -btc_militia_mod Giallustio: Afghan Civilians (Side: CIV)","4 -CFP Drew: Civilians (Afghanistan) (Side: CIV)","5 -CFP Drew: Civilians (African Christian) (Side: CIV)","6 -CFP Drew: Civilians (African Islamic) (Side: CIV)","7 -CFP Drew: Civilians (Asian) (Side: CIV)","8 -CFP Drew: Civilians (Middle Eastern) (Side: CIV)","9 -CUP_Units Community Upgrade Project: Civilians (Russian) (Side: CIV)","10 -CUP_Vehicles Community Upgrade Project: Civilians (Chernarus) (Side: CIV)","11 -CUP_Vehicles Community Upgrade Project: Civilians (Sahrani) (Side: CIV)","12 -CUP_Vehicles Community Upgrade Project: Civilians (Takistan) (Side: CIV)","13 -Expansion Bohemia Interactive: Civilians (UEG) (Side: CIV)","14 -LIB Reyhard & Joarius: 40s Civilians (Side: CIV)","15 -LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","16 -LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","17 -LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","18 -ORANGE Bohemia Interactive: IDAP (Side: CIV)","19 -RDS_CIV_PACK RDS (BIS A2 Port): Russians (Side: CIV)","20 -UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","21 -UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)","22 -UNSUNG Bohemia Interactive: Vietnamese (UNSUNG) (Side: CIV)"};
        default = 19;
    };
    class btc_p_spawn_title { // << Spawn options >>
        title = $STR_BTC_HAM_PARAM_SPAWN_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_mil_group_ratio { // Enemy density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ENEMY_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 70;
    };
    class btc_p_civ_group_ratio { // Civilian density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIVILIAN_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 100;
    };
    class btc_p_wp_house_probability { // Density of military in house:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_MIL_INHOUSE_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 50;
    };
    class btc_p_veh_armed_ho { // Add armed vehicles in Hideout:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDHIDEOUT"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_veh_armed_spawn_more { // Add armed vehicles in Side mission/Cache:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDOTHER"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_patrol_max { // Maximum number of military patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_PATROL_MAX"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 10;
    };
    class btc_p_civ_max_veh { // Maximum number of civilian patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIV_MAX_VEH"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 10;
    };
    class btc_p_IED_title { // << IED options >>
        title = $STR_BTC_HAM_PARAM_IED_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_ied { // IEDs ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_RATIO"]);
        values[]={0, 1, 2, 3};
        texts[]={$STR_DISABLED,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Off","Low","Normal","High"};
        default = 2;
    };
    class btc_p_ied_spot { // IEDs spotting difficulty:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_SPOT"]);
        values[]={0, 1, 2};
        texts[]={$STR_BTC_HAM_PARAM_IED_SPOT_VERYEASY,$STR_BTC_HAM_PARAM_IED_SPOT_EASY,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL}; //texts[]={"Very easy","Easy","Normal"};
        default = 1;
    };
    class btc_p_ied_drone { // Drone bomber:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_DRONE"]);
        values[]={0, 1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_hideout_cache_title { // << Hideout/Cache options >>
        title = $STR_BTC_HAM_PARAM_HIDE_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_hideout_n { // Hideout numbers:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_HIDE_NUMBERS"]);
        values[]={99,1,2,3,4,5};
        texts[]={$STR_3DEN_ATTRIBUTES_OBJECTTEXTURE_RANDOM_TEXT,"1","2","3","4","5"}; //texts[]={"Random","1","2","3","4","5"};
        default = 5;
    };
    class btc_p_cache_info_def { // Info cache distance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DISTANCE"]);
        values[]={500,1000,1500,2000,2500,3000,3500,4000,5000};
        texts[]={"500 m","1000 m","1500 m","2000 m","2500 m","3000 m","3500 m","4000 m","5000 m"};
        default = 3000;
    };
    class btc_p_cache_info_ratio { //Cache info ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_RATIO"]);
        values[]={50,100};
        texts[]={"50 m","100 m"};
        default = 100;
    };
    class btc_p_info_chance { // Intel from dead bodies chance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DEADINFO"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"100 %","90 %","80 %","70 %","60 %","50 %","40 %","30 %","20 %","10 %","0 %"};
        default = 90;
    };
    class btc_p_medical_title { // << Medical options >>
        title = $STR_BTC_HAM_MEDI_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_redeploy { // Allow re-deploy?
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_MEDI_REDEPLOY"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_skill_title { // << A3 Skill options >>
        title = $STR_BTC_HAM_PARAM_SKILL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_set_skill { // Set skill?
        title = __EVAL(format ["      %1?", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_set_skill_general {  // Set skill, general
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_3DEN_SCENARIO_TEXTSINGULAR"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 0;
    };
    class btc_p_set_skill_aimingAccuracy { // Set skill, aimingAccuracy
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMACC"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 1;
    };
    class btc_p_set_skill_aimingShake {  // Set skill, aimingShake
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSKILL"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 4;
    };
    class btc_p_set_skill_aimingSpeed { // Set skill, aimingSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSPEED"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 3;
    };
    class btc_p_set_skill_endurance { // Set skill, endurance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_VR_STAMINA"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 5;
    };
    class btc_p_set_skill_spotDistance { // Set skill, spotDistance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTDIST"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 9;
    };
    class btc_p_set_skill_spotTime { // Set skill, spotTime
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTTIME"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 7;
    };
    class btc_p_set_skill_courage { // Set skill, courage
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_COURAGE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 2;
    };
    class btc_p_set_skill_reloadSpeed { // Set skill, reloadSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_RELOAD"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 10;
    };
    class btc_p_set_skill_commanding { // Set skill, commanding
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_CFGHINTS0"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 7;
    };
    class btc_p_gameplay_title { // << Gameplay options >>
        title = $STR_BTC_HAM_PARAM_GAMEPLAY_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_sea { // Extend battlefield to sea:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SEA"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_side_mission_cycle {  // Side mission cycle:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SIDEM"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_arsenal_title { // << Arsenal options >>
        title = $STR_BTC_HAM_PARAM_ARSENAL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_arsenal_Type { // Type of the arsenal:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE"]);
        values[]={0,1,2,3,4};
        texts[]={$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BIS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA_PLUS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE_PLUS}; //texts[]={"BIS - Vanilla","BIS - Vanilla and ACE 3","BIS - Vanilla and ACE 3 (scroll wheel action)","ACE 3","ACE 3 (scroll wheel action)"};
        default = 2;
    };
    class btc_p_arsenal_Restrict { // Restricted arsenal (See /define_mod.sqf):
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR"]);
        values[]={0,1,2,3};
        texts[] = {$STR_DISABLED,$STR_3DEN_ATTRIBUTES_SPEEDMODE_FULL,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_REMOVEONLY,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_FILTER}; //texts[]={"Off","Full","Remove only (works only with ACE3-Arsenal)","Filter on player role (works only with ACE3-Arsenal)"};
        default = 0;
    };
    class btc_p_autoloadout { // Automatic loadout:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_AUTOLOADOUT"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_garage { // Activate garage for admin:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_GARAGEADMIN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_main_title { // << Other options >>
        title = $STR_BTC_HAM_PARAM_OTHER_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_rep { // Reputation at start:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_REPSTART"]);
        values[]={0, 200, 500, 750};
        texts[]={$STR_ACE_ViewDistance_object_verylow,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Very Low","Low","Normal","High"};
        default = 0;
    };
    class btc_p_city_radius { // Spawn city radius offset:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_SPAWNRAD"]);
        values[]={0,1,2,3,4,5,6,7,8};
        texts[]={"0 m","100 m","200 m",$STR_BTC_HAM_PARAM_OTHER_SPAWNRAD_DEF,"400 m","500 m (Takistan)","600 m","700 m","800 m"}; // texts[]={"0 m","100 m","200 m","300 m","400 m","500 m (Takistan)","600 m","700 m","800 m"};
        default = 5;
    };
    class btc_p_trigger { // Disable city activation when a plane or helicopter (>190Km/h) is flying above:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DISABLESPAWN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_debug { // Debug:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DEBUG"]);
        values[]={0,1,2};
        texts[]={$STR_DISABLED,$STR_ENABLED, $STR_BTC_HAM_PARAM_OTHER_DEBUG_LOGONLY}; // texts[]={"Off","On","Log only"};
        default = 0;
    };
};
