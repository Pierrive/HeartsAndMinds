comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add weapons";
player addWeapon "rhs_weap_m249_pip_S";
player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_ERCO_blk_F";
player addPrimaryWeaponItem "rhsusf_200Rnd_556x45_box";
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";

comment "Add containers";
player forceAddUniform "amf_uniform_01_CE";
player addVest "amf_smb_mc_grn";
player addBackpack "AMF_FELIN_BACKPACK";

comment "Add items to containers";
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
player addItemToUniform "HandGrenade";
player addItemToUniform "SmokeShellGreen";
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_200Rnd_556x45_box";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_Flashlight_XL50";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_CableTie";};
for "_i" from 1 to 3 do {player addItemToBackpack "rhsusf_200rnd_556x45_mixed_box";};
player addHeadgear "amf_felin_cover";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_5";
player linkItem "ItemGPS";
player linkItem "ACE_NVG_Wide";