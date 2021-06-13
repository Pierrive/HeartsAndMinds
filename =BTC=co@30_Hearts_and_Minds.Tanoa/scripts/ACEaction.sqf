///////////////////////////////////////////////////
///////////Remote Control SSS Aircraft/////////////
///////////////////////////////////////////////////

_actionControlMain = ['Remote_Controle','Controle Pilote','',{},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions"], _actionControlMain] call ace_interact_menu_fnc_addActionToObject; 

//IrmaOne
_actionControlChild = ['Take_control','Prendre Control Huron','',{
	params ["_target", "_player", "_params"];
	_player remoteControl (driver IrmaOne);
	(driver IrmaOne) switchCamera "External";
	[IrmaOne, false] remoteExec ["allowDamage", 0, false];
	[
		{
			!((name (_this select 0)) isEqualTo name ((UAVControl IrmaOne) select 0))
		},
		{
			[IrmaOne, true] remoteExec ["allowDamage", 0, false];
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Remote_Controle"], _actionControlChild] call ace_interact_menu_fnc_addActionToObject;

//IrmaTwo
_actionControlChild1 = ['Take_control','Prendre Control UH-1Y','',{
	params ["_target", "_player", "_params"];
	_player remoteControl (driver IrmaTwo);
	(driver IrmaTwo) switchCamera "External";
	[IrmaTwo, false] remoteExec ["allowDamage", 0, false];
	[
		{
			!((name (_this select 0)) isEqualTo name ((UAVControl IrmaTwo) select 0))
		},
		{
			[IrmaTwo, true] remoteExec ["allowDamage", 0, false];
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Remote_Controle"], _actionControlChild1] call ace_interact_menu_fnc_addActionToObject;

//IrmaThree
_actionControlChild2 = ['Take_control','Prendre Control Uh-60','',{
	params ["_target", "_player", "_params"];
	_player remoteControl (driver IrmaThree);
	(driver IrmaThree) switchCamera "External";
	[IrmaThree, false] remoteExec ["allowDamage", 0, false];
	[
		{
			!((name (_this select 0)) isEqualTo name ((UAVControl IrmaThree) select 0))
		},
		{
			[IrmaThree, true] remoteExec ["allowDamage", 0, false];
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Remote_Controle"], _actionControlChild2] call ace_interact_menu_fnc_addActionToObject;

//IrmaFour
_actionControlChild3 = ['Take_control','Prendre Control MH-6','',{
	params ["_target", "_player", "_params"];
	_player remoteControl (driver IrmaFour);
	(driver IrmaFour) switchCamera "External";
	[IrmaFour, false] remoteExec ["allowDamage", 0, false];
	[
		{
			!((name (_this select 0)) isEqualTo name ((UAVControl IrmaFour) select 0))
		},
		{
			[IrmaFour, true] remoteExec ["allowDamage", 0, false];
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Remote_Controle"], _actionControlChild3] call ace_interact_menu_fnc_addActionToObject;

//Medevac
_actionControlChild4 = ['Take_control','Prendre Control Medevac','',{
	params ["_target", "_player", "_params"];
	_player remoteControl (driver Medevac);
	(driver Medevac) switchCamera "External";
	[Medevac, false] remoteExec ["allowDamage", 0, false];
	[
		{
			!((name (_this select 0)) isEqualTo name ((UAVControl Medevac) select 0))
		},
		{
			[Medevac, true] remoteExec ["allowDamage", 0, false];
		},
		[_player]
	] call CBA_fnc_waitUntilAndExecute;
},{serverCommandAvailable "#kick"}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Remote_Controle"], _actionControlChild4] call ace_interact_menu_fnc_addActionToObject;

///////////////////////////////////////////////////
//////////////Repair With Container////////////////
///////////////////////////////////////////////////

_actionRecycleMain = ['Recycle_Controle','Logistic Wreck','',{},{true}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions"], _actionRecycleMain] call ace_interact_menu_fnc_addActionToObject; 

//Pack Wreck
_actionRecycleChild = ['Recycle_Action','Pack Wreck For Transport','',{
	params ["_target", "_player", "_params"];
	_allVehicleNear = nearestObjects [_player, ["Car", "Tank", "Air", "Ship"], 10];
	_vehicleNear = _allVehicleNear select 0;
	[
		20,
		[_vehicleNear],
		{
			(_this select 0) params ["_vehicleNear"];
			[_vehicleNear,true] remoteExec ["hideObjectGlobal", 0, true];
			_container = "B_Slingload_01_Cargo_F" createVehicle (getPosATL _vehicleNear);
			_vehicleNear attachTo [_container, [0, 0, 1]];
			[_container, true, [0, 2, 1], 90] remoteExecCall ["ace_dragging_fnc_setCarryable", 0, true];
			[_container, 0] remoteExecCall ["ace_cargo_fnc_setSpace", 2, true];
		}, 
		{hint "Failure!"}, 
		"Déploiement du container..."
	] call ace_common_fnc_progressBar
},{true}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Recycle_Controle"], _actionRecycleChild] call ace_interact_menu_fnc_addActionToObject;

//Unpack Wreck
_actionRecycleChild1 = ['Recycle_Action','Unpack Wreck','',{
	params ["_target", "_player", "_params"];
	_allObjectNear = nearestObjects [_player, ["All"], 10];
	{
		if ((typeOf _x) isEqualTo "B_Slingload_01_Cargo_F") then {
			_container = _x;
			[
				20,
				[_container],
				{
					(_this select 0) params ["_container"];
					[_container, true] remoteExec ["hideObjectGlobal", 0, true];
					{
						detach _x;
						_x setPosATL [(getPosATL _container) select 0,(getPosATL _container) select 1, 1];
						[_x, false] remoteExec ["hideObjectGlobal", 0, true];
					} forEach attachedObjects _container;
					deleteVehicle _container;
				}, 
				{hint "Failure!"}, 
				"Déchargement ..."
			] call ace_common_fnc_progressBar		
		};
	} foreach _allObjectNear;
},{true}] call ace_interact_menu_fnc_createAction; 
[player, 1, ["ACE_SelfActions", "Recycle_Controle"], _actionRecycleChild1] call ace_interact_menu_fnc_addActionToObject;