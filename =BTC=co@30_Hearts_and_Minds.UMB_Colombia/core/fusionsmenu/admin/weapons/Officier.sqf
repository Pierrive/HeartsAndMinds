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
player forceAddUniform "R3F_uniform_off_DA";
player addItemToUniform "FirstAidKit";
player addItemToUniform "R3F_15Rnd_9x19_PAMAS";
player addVest "R3F_veste_off";
player addHeadgear "R3F_casquette_off_DA";

comment "Add weapons";
player addWeapon "R3F_PAMAS";
player addWeapon "Binocular";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";
player linkItem "ItemGPS";

comment "Set identity";
player setFace "WhiteHead_21";
player setSpeaker "male12eng";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;
