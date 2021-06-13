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

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";

comment "Set identity";
player setFace "PersianHead_A3_01";
player setSpeaker "male01gre";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;