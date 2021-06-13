removeAllWeapons player;
removeAllItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "amf_uniform_01_CE";
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
for "_i" from 1 to 2 do {player addItemToUniform "HandGrenade";};
player addItemToUniform "SmokeShellGreen";

player addVest "amf_smb_in_grn";
player addItemToVest "B_IR_Grenade";
player addItemToVest "acc_pointer_IR";
player addItemToVest "bipod_01_f_blk";
for "_i" from 1 to 8 do {player addItemToVest "30Rnd_556x45_Stanag";};
player addBackpack "AMF_FELIN_BACKPACK";
for "_i" from 1 to 6 do {player addItemToBackpack "30Rnd_556x45_Stanag";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_splint";};
player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_Flashlight_XL50";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_CableTie";};
player addHeadgear "amf_felin_cover";

comment "Add weapons";
player addWeapon "AMF_614_short_ag_01_F";
player addPrimaryWeaponItem "30Rnd_556x45_Stanag";
player addPrimaryWeaponItem "optic_erco_blk_f";
player addPrimaryWeaponItem "muzzle_snds_m";
player addWeapon "rhs_weap_M136";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";
player linkItem "ACE_NVG_Wide";