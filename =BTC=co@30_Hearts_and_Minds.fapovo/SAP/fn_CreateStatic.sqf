private ["_StaticSMweps","_amount","_nposition","_RedSecteur_Local","_RedSide_Local"];

_StaticSMweps = ["O_GMG_01_F","O_HMG_01_F"];

_amount = _this select 0;
_MarkerGuerrePos = _this select 1;
_Marker = _this select 2;

_RedSecteur_Local = ["lowtown_1","lowtown_5","mediumtown","lowtown","lowtown_3","mediumtown_2","mediumtown_4","mediumtown_1","highttown"];
_RedSide_Local = ["SideRed","SideRed_1","SideRed_2","SideRed_3","SideRed_4","SideRed_5","SideRed_6","SideRed_7","SideRed_8","SideRed_9","SideRed_10"];

for "_i" from 0 to _amount do
{
	_StaticWep = _StaticSMweps call BIS_fnc_selectRandom;
	
	//_nposition = [_MarkerGuerrePos,random 10,100, 1, 0, 60 * (pi / 180), 0, []] call BIS_fnc_findSafePos;
	_nposition = [_Marker,100] call Pierrive_fnc_findSafePos;
	
	_Static = _staticWep createVehicle _nposition;
	_groupStatic = createGroup [btc_enemy_side, true];
	_CrewMan = "I_C_Soldier_Para_1_F" createUnit [_nposition, _groupStatic];
	
	if (_Marker in _RedSecteur_Local || _Marker in _RedSide_Local) then {
		{[_x] call Pierrive_fnc_UniformRedZone;} foreach units _groupStatic;
	};
	
	{_x moveInAny _Static} foreach units _groupStatic;

	{_x addCuratorEditableObjects [allUnits + vehicles,true]} count allCurators;
};
