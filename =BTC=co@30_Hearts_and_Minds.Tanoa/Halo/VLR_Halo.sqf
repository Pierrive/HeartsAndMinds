/*
//Ajouter cette première ligne de commande sur n'importe qu'elle objet.

this addAction ["<t color='#0B2D12' size='1.5'>Effectuer un Halo Jump</t>",{ 
 params ["_target", "_caller", "_actionId", "_arguments"];
 [_caller] execVM "Halo\VLR_Halo.sqf"; 
}, [], 1, false, true, "","_this distance _target < 5"]; 


*/

params [
    ["_player", objNull]
];

private [ "_dialog", "_backpack", "_backpackcontents", "_C130_halo" ];

if (isNull _player) exitWith {};

_dialog = createDialog "vlr_halo_diag";
_C130_halo = missionNamespace getVariable "Halo_Veh";
dojump = 0;
halo_position = getpos _player;

_backpackcontents = [];

[ "halo_map_event", "onMapSingleClick", { halo_position = _pos } ] call BIS_fnc_addStackedEventHandler;

_nameMarker = format ["halo_%1", (round (random 5000))];
_marker = createMarkerLocal [_nameMarker, [0,0,0]];
_marker setMarkerColorLocal "ColorGreen";
_marker setMarkerTypeLocal "Select";
_marker setMarkerTextLocal "Saut HALO";

waitUntil { dialog };

while { dialog && alive _player && dojump == 0 } do {
    _marker setMarkerPosLocal halo_position;
    sleep 0.1;
};

if ( dialog ) then {
    closeDialog 0;
    sleep 0.1;
};

deleteMarkerLocal _marker;
[ "halo_map_event", "onMapSingleClick" ] call BIS_fnc_removeStackedEventHandler;

if ( dojump > 0 ) then {
	_backpack = backpack _player;
	_loadoutP = getUnitLoadout _player;
	cutText ["", "BLACK", 2, true, false]; 
	["<t color='#ffffff' size='3'>Embarquement ...</t>",0,0.3,4,4,0,791] spawn BIS_fnc_dynamicText;

	sleep 2;
	
    if ( _backpack != "" && _backpack != "B_Parachute" ) then {
        removeBackpack _player;
        sleep 0.1;
    };
	
    _player addBackpack "B_Parachute";
	
	_player setPosASL [(getPosASL _C130_halo) select 0, (getPosASL _C130_halo) select 1, (((getPosASL _C130_halo) select 2) + 2)];
	sleep 4;
	_player playActionNow "Stand";
	sleep 2;
	cutText ["", "BLACK IN", 1, true, true];
	sleep 2;
	[_player,_C130_halo] spawn {
		_player = _this select 0;
		_C130_halo = _this select 1;
		//playSound3d [getMissionPath "\sounds\hotesse.ogg", _C130_halo, true, (getpos _C130_halo), 5, random [0.9, 1, 1.2], 100];
		_C130_halo say3D ["Hotesse", 100, 1, false, 0];
			[_C130_halo] spawn {
				_C130_halo = _this select 0;
				sleep 22;
				if ((_C130_halo animationPhase "ramp_bottom") == 0) then {_C130_halo animate ["ramp_bottom",1]};
				if ((_C130_halo animationPhase "ramp_top") == 0) then {_C130_halo animate ["ramp_top",1]};
				if (sunOrMoon < 1) then {
					[_C130_halo] spawn {
						_C130_halo = _this select 0;
						_light = "#lightpoint" createVehicleLocal position _C130_halo;
						_light setLightBrightness 1.0;
						_light setLightAmbient [1.0, 0.0, 0.0];
						_light setLightColor [1.0, 0.0, 0.0];
						_light lightAttachObject [_C130_halo, [0,0,0]]; 
					};
				};
				
				sleep 3;
				//playSound3d [getMissionPath "\sounds\goHalo.ogg", _C130_halo, true, (getpos _C130_halo), 5, random [0.9, 1, 1.2], 100];
				_C130_halo say3D ["goHalo", 100, 1, false, 0];
				sleep 2;
				
				if (sunOrMoon < 1) then {
					[_C130_halo] spawn {
						_C130_halo = _this select 0;
						_light = "#lightpoint" createVehicleLocal position _C130_halo;
						_light setLightBrightness 1.0;
						_light setLightAmbient [0.0, 1.0, 0.0];
						_light setLightColor [0.0, 1.0, 0.0];
						_light lightAttachObject [_C130_halo, [0,0,0]];
					};
				};
			};
		while {(count (lineIntersectsObjs [(getposASL _player), [(getposASL _player select 0),(getposASL _player select 1),((getposASL _player select 2) + 4)]]) > 0)} do {
			//playSound3d [getMissionPath "\sounds\soundPlane.ogg", _C130_halo, false, (getpos _C130_halo), 5, random [0.9, 1, 1.2], 100];
			_C130_halo say3D ["soundPlane", 100, 1, false, 0];
			sleep 6;
		};
	};
	
	waitUntil {(count (lineIntersectsObjs [(getposASL _player), [(getposASL _player select 0),(getposASL _player select 1),((getposASL _player select 2) + 4)]]) == 0)};

    halo_position = [halo_position select 0, halo_position select 1, 2000];
	
    sleep 3;
	
    _player setpos halo_position;

    sleep 4;
	
    waitUntil { !alive _player || isTouchingGround _player || (((getPos _player) select 2) < 0.5)};
	
	_C130_halo animate ["ramp_bottom",1];
	_C130_halo animate ["ramp_top",1];
	
    if ( _backpack != "" && _backpack != "B_Parachute" ) then {
        sleep 2;
		removeBackpack _player;
        _player addBackpack _backpack;
        clearAllItemsFromBackpack _player;
		_player setUnitLoadout [_loadoutP, false];
    };
};