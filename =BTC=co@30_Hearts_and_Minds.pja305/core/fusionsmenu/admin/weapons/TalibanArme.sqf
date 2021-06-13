comment "Exported from Arsenal by Pierrive";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "U_Afghan06";
player addItemToUniform "FirstAidKit";
player addItemToUniform "HandGrenade";
for "_i" from 1 to 2 do {player addItemToUniform "SmokeShell";};
player addItemToUniform "SmokeShellRed";
player addVest "V_Chestrig_blk";
for "_i" from 1 to 2 do {player addItemToVest "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 2 do {player addItemToVest "1Rnd_Smoke_Grenade_shell";};
player addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
player addItemToVest "1Rnd_SmokeRed_Grenade_shell";
player addItemToVest "1Rnd_SmokeBlue_Grenade_shell";
for "_i" from 1 to 8 do {player addItemToVest "hlc_30Rnd_762x39_b_ak";};

comment "Add weapons";
player addWeapon "hlc_rifle_akm";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";

comment "Set identity";
player setFace "PersianHead_A3_01";
player setSpeaker "male01gre";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;