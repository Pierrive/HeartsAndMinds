params [
    ["_posBombs", [0,0,0]]
];

if (!hasInterface) exitWith {};

if ((player distance _posBombs) < 100) then {
	["ace_glassesCracked", [player]] call CBA_fnc_localEvent;
	[player, 0.2] call ace_hearing_fnc_explosionNear;
	50 cutFadeOut 8;
	enableCamShake true;
	private _power_sh = linearConversion [0, 500, (player distance _posBombs), 15, 0.1, true];
	addCamShake [_power_sh, 2, 50];
};
