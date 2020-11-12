_unit = _this select 0;
_pos = getPosATL _unit;

_lift = [_pos select 0, _pos select 1, (_pos select 2) + 5];


_unit allowDamage false;
_unit setPos _lift;

waitUntil {sleep 0.1; isTouchingGround _unit};
_unit allowDamage true;

_onSoil = terrainIntersect [getPosATL _unit, [(getPosATL _unit) select 0, (getPosATL _unit) select 1, ((getPosATL _unit) select 2) - 1]];

if (not _onSoil) then
{
	doStop _unit;
	_unit setUnitPos "middle";
};
