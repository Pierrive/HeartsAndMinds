[{!isNull (findDisplay 46)}, {
    (findDisplay 46) displayAddEventHandler ["KeyDown", {
        params ["_display", "_key"];

		if (inputAction "CuratorInterface" > 0) then {
			[btc_curator, [0, (getPosATL (getAssignedCuratorUnit btc_curator)), 10]] remoteExec ["addCuratorCameraArea", 2];
			[btc_curator, 10] remoteExec ["setCuratorCameraAreaCeiling", 2];
			_objects = curatorEditableObjects btc_curator;
			[btc_curator, [_objects,true]] remoteExec ["removeCuratorEditableObjects", 2];
			[btc_curator,[allplayers,true]] remoteExec ["addCuratorEditableObjects", 2];
		};
    }];
}] call CBA_fnc_waitUntilAndExecute;