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
player forceAddUniform "U_C_Man_casual_4_F";
player addItemToUniform "FirstAidKit";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";

comment "Set identity";
player setFace "AfricanHead_03";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;