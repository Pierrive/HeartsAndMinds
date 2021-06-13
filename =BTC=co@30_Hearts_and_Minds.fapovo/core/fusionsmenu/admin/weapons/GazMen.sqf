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
player forceAddUniform "skn_u_nbc_opf_blue";
player addItemToUniform "FirstAidKit";
player addItemToUniform "SmokeShell";
player addVest "skn_o_elbv_worn";
player addGoggles "skn_s10_balaclava_blue_dry";

comment "Add weapons";
player addWeapon "hlc_rifle_RPK12";
player addPrimaryWeaponItem "acc_flashlight";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";

comment "Set identity";
player setFace "PersianHead_A3_01";
player setSpeaker "male01gre";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;