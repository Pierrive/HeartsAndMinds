/********************************************
	   _   __   _______  _______   ___    _     _ 
	 (__)_(__) (_______)(__ _ __)_(___)_ (_)   (_)
	(_) (_) (_)   (_)      (_)  (_)   (_)(_)___(_)
	(_) (_) (_)   (_)      (_)  (_)    _ (_______)
	(_)     (_) __(_)__    (_)  (_)___(_)(_)   (_)
	(_)     (_)(_______)   (_)    (___)  (_)   (_)
												  
********************************************/
/*******************************************/
/* Notes
Quand on monte dans un h�licoptere, une nouvelle action appara�t : "prepare for jump"
En utilisant l'action, on remplace le backpack par un parachute
en prenant soin de sauvegarder le backpack et les items pr�sents dedans
Quand on atterit on r�cup�re le backpack et les items enregistr�s pr�c�demment au moment 
o� on pose le pied au sol.
Si on monte dans un h�licopt�re qui n'a pas d�coll� et qu'on utilise l'action,
au moment o� l'on en descend (sans sauter) on r�cup�re �galement le backpack et les items.
/*******************************************/

if (!hasInterface) exitWith {};
	
MITCH_JUMP_PARACHUTE_CLASS = "B_Parachute";

waitUntil{alive player};

MITCH_JUMP_prepareForJump = {
	player removeAction MITCH_JUMP_a select 2;
	_b = backpack player;
	_s = getUnitLoadout player;
	_o = unitBackpack player;
	removeBackpack player;
	player addBackpack MITCH_JUMP_PARACHUTE_CLASS;
	while { ((getPos player) select 2) > 0.25 }do{ sleep 0.1; };
	_t = backpack player;
	if(_t == MITCH_JUMP_PARACHUTE_CLASS) then {
		_p = unitBackpack player;
		removeBackpack player;
	};
	player addBackpack _b;
	player setUnitLoadout [_s, false];
};

player addEventHandler ["GetInMan",{
	_unit = _this select 2;
	if(_unit isKindOf "Helicopter") then {
		MITCH_JUMP_a = player addAction["Mettre le parachute", {[] spawn MITCH_JUMP_prepareForJump;}];
	};
}];

player addEventHandler ["GetOutMan",{
	_unit = _this select 2;
	if(_unit isKindOf "Helicopter") then {
		player removeAction MITCH_JUMP_a select 2;
	}
}];

player addEventHandler ["GetInMan",{
	_unit = _this select 2;
	if(_unit isKindOf "plane") then {
		MITCH_JUMP_a = player addAction ["Mettre le parachute", {[] spawn MITCH_JUMP_prepareForJump;}];
	};
}];

player addEventHandler ["GetOutMan",{
	_unit = _this select 2;
	if(_unit isKindOf "plane") then {
		player removeAction MITCH_JUMP_a select 2;
	}
}];