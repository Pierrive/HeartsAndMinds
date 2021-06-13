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
player addWeapon "AMF_Perseis_II_01_F";
player addPrimaryWeaponItem "optic_LRPS";
player addPrimaryWeaponItem "7Rnd_Perseis_II_mag";

comment "Add containers";
player forceAddUniform "CUP_U_B_CZ_WDL_Ghillie";
player addVest "CUP_V_O_SLA_M23_1_OD";

comment "Add binoculars";
player addMagazine "Laserbatteries";
player addWeapon "Laserdesignator";

comment "Add items to containers";
for "_i" from 1 to 9 do {player addItemToUniform "7Rnd_Perseis_II_mag";};
for "_i" from 1 to 6 do {player addItemToUniform "7Rnd_Perseis_II_mag_Tracer_red";};
for "_i" from 1 to 4 do {player addItemToVest "ACE_epinephrine";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_morphine";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_elasticBandage";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_splint";};
for "_i" from 1 to 2 do {player addItemToVest "ACE_CableTie";};
player addItemToVest "ACE_MapTools";
player addItemToVest "ACE_ATragMX";
player addItemToVest "ACE_RangeCard";
for "_i" from 1 to 2 do {player addItemToVest "ACE_tourniquet";};
for "_i" from 1 to 10 do {player addItemToVest "ACE_packingBandage";};
player addItemToVest "ACE_microDAGR";
player addItemToVest "ACE_Kestrel4500";
player addItemToVest "ACE_Flashlight_XL50";
player addItemToVest "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {player addItemToVest "SmokeShell";};
player addItemToVest "SmokeShellGreen";
player addItemToVest "HandGrenade";
player addItemToVest "B_IR_Grenade";
for "_i" from 1 to 2 do {player addItemToVest "ACE_M84";};

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "TFAR_anprc152_8";
player linkItem "ItemGPS";
player linkItem "ACE_NVG_Wide";