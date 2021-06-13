private _headlessClients = entities "HeadlessClient_F";
private _humanPlayers = allPlayers - _headlessClients;
private _MenPlayerArray = [];
private _AirPlayerArray = [];
private _TankPlayerArray = [];
private _CarPlayerArray = [];
typeRandom = "Men";

{
	if ((vehicle _x) isKindOf "Man") then {
		_MenPlayerArray pushBack _x;
	};

	if ((vehicle _x) isKindOf "Air") then {
		_AirPlayerArray pushBack _x;
	};

	if ((vehicle _x) isKindOf "Tank") then {
		_TankPlayerArray pushBack _x;
	};

	if ((vehicle _x) isKindOf "Car") then {
		_CarPlayerArray pushBack _x;
	};
} forEach _humanPlayers;

private _ArrayAllPercent = [];

private _percentMenPlayer = ((count _MenPlayerArray) / (count _humanPlayers)) * 100;
_ArrayAllPercent pushBack _percentMenPlayer;

private _percentAirPlayer = ((count _AirPlayerArray) / (count _humanPlayers)) * 100;
_ArrayAllPercent pushBack _percentAirPlayer;

private _percentTankPlayer = ((count _TankPlayerArray) / (count _humanPlayers)) * 100;
_ArrayAllPercent pushBack _percentTankPlayer;

private _percentCarPlayer = ((count _CarPlayerArray) / (count _humanPlayers)) * 100;
_ArrayAllPercent pushBack _percentCarPlayer;

_typeRandomNum = _ArrayAllPercent find (selectMax _ArrayAllPercent);

if (_typeRandomNum == 0) then {
	typeRandom = "Men";
};

if (_typeRandomNum == 1) then {
	typeRandom = "Air";
};

if (_typeRandomNum == 2) then {
	typeRandom = "Tank";
};

if (_typeRandomNum == 3) then {
	typeRandom = "Car";
};

if (debug_VLR) then {diag_log format ["Function checkTypeSpawn (1): Men : %1 and Air : %2 and Tank : %3 and Car : %4 and pourcentage : %5", _MenPlayerArray, _AirPlayerArray, _TankPlayerArray, _CarPlayerArray, typeRandom]};

typeRandom