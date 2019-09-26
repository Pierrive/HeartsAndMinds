comment "Remove existing items";
removeAllWeapons player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

comment "Add containers";
player forceAddUniform "usm_bdu_srh_odg";
player addVest "rhs_vest_pistol_holster";

comment "Add binoculars";
player addWeapon "rhssaf_zrak_rd7j";

comment "Add items to containers";
for "_i" from 1 to 2 do {player addItemToUniform "ACE_EarPlugs";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {player addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 10 do {player addItemToUniform "ACE_elasticBandage";};
player addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 5 do {player addItemToUniform "ACE_tourniquet";};
player addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 2 do {player addItemToUniform "adv_aceSplint_splint";};
player addItemToUniform "KNB_Notebook";
player addItemToUniform "ACE_fieldDressing";
player addItemToUniform "ACE_packingBandage";
player addItemToVest "rhs_grenade_mkii_mag";
player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
player addHeadgear "H_mas_fra_Beret_p";