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
player forceAddUniform "U_C_IDAP_Man_cargo_F";
for "_i" from 1 to 2 do {player addItemToUniform "FirstAidKit";};
player addVest "V_Safety_yellow_F";
player addHeadgear "H_MilCap_gry";
player addGoggles "G_Shades_Black";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "tf_anprc152";

comment "Set identity";
player setFace "GreekHead_A3_06";
player setSpeaker "male02eng";

["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;