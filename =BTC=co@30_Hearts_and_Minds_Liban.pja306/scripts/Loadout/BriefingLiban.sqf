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
player forceAddUniform "usm_bdu_srh_portliz";
player addVest "UK3CB_V_Pouch";

comment "Add binoculars";
player addWeapon "rhssaf_zrak_rd7j";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 2 do {player addItemToUniform "adv_aceSplint_splint";};
player addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_elasticBandage";};
player addItemToUniform "ACE_Fortify";
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 4 do {player addItemToVest "rhsusf_mag_7x45acp_MHP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgd5";};
player addHeadgear "UK3CB_ANA_B_H_OFF_Beret_GRN";
player addGoggles "UK3CB_G_Neck_Shemag";