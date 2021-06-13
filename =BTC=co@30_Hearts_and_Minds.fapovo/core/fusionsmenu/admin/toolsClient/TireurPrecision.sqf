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
player addWeapon "AMF_714_Long_01_F";
player addPrimaryWeaponItem "muzzle_snds_B";
player addPrimaryWeaponItem "acc_pointer_IR";
player addPrimaryWeaponItem "optic_SOS";
player addPrimaryWeaponItem "20Rnd_762x51_HK417_mag";
player addPrimaryWeaponItem "bipod_01_F_blk";

comment "Add containers";
player forceAddUniform "amf_uniform_01_CE";
player addVest "amf_smb_tp_hk417_grn";
player addBackpack "AMF_FELIN_BACKPACK";

comment "Add binoculars";
player addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 4 do {player addItemToUniform "SmokeShell";};
player addItemToUniform "HandGrenade";
player addItemToUniform "SmokeShellGreen";
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 8 do {player addItemToVest "20Rnd_762x51_HK417_mag";};
for "_i" from 1 to 6 do {player addItemToVest "20Rnd_762x51_HK417_Tracer_yellow_mag";};
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 10 do {player addItemToBackpack "ACE_packingBandage";};
player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_Flashlight_XL50";
player addItemToBackpack "ACE_microDAGR";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_CableTie";};
player addItemToBackpack "ACE_ATragMX";
player addItemToBackpack "ACE_MapTools";
player addItemToBackpack "ACE_Kestrel4500";
player addItemToBackpack "ACE_RangeCard";
player addItemToBackpack "ACE_Tripod";
player addHeadgear "amf_felin_cover";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_2";
player linkItem "ItemGPS";
player linkItem "ACE_NVG_Wide";