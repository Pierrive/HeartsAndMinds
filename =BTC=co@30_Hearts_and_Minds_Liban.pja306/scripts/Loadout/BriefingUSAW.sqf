comment "Remove existing items";
removeAllWeapons player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhsusf_weap_m1911a1";
player addHandgunItem "rhsusf_mag_7x45acp_MHP";

comment "Add containers";
player forceAddUniform "usm_bdu_srh_wdl";
player addVest "V_Rangemaster_belt";

comment "Add binoculars";
player addWeapon "rhssaf_zrak_rd7j";

comment "Add items to containers";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_salineIV";
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_7x45acp_MHP";};
player addItemToVest "rhs_mag_f1";
player addHeadgear "usm_bdu_8point_wdl";
player addGoggles "G_Aviator";