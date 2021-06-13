hint format ["Healing..."];
sleep 2;
[objNull, player] call ace_medical_fnc_treatmentAdvanced_fullHealLocal;
player setDamage 0;
hint format ["Done"];