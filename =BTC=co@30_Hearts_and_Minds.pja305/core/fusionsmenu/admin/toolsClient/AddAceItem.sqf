for "_i" from 1 to 2 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 2 do {player addItemToBackpack "adv_aceSplint_splint";};
player addItemToBackpack "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItemToBackpack "ACE_tourniquet";};
player addItemToBackpack "ACE_Flashlight_XL50";
player addItemToBackpack "ACE_microDAGR";
player addItemToBackpack "ACE_MapTools";
for "_i" from 1 to 3 do {player addItemToBackpack "ACE_CableTie";};

comment "Add Radio";
player linkItem "tf_anprc152";
["tf_anprc152", 1, "30"] call TFAR_fnc_SetChannelFrequency;