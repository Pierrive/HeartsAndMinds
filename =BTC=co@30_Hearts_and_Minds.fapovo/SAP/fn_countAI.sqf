params["_player", "_radius"];

private _ArrayAI = [];
private _pos = getPos _player;

_list = _pos nearEntities [["Man", "Car", "Tank"], _radius];


// *******improve with countSide??*******
{
	if (side(_x) isEqualTo btc_enemy_side) then{
		_ArrayAI pushBack (_x);
	};
} forEach _list;

if (debug_VLR) then {diag_log format ["Function countAi (1): Number : %1", _ArrayAI]};

_ArrayAI