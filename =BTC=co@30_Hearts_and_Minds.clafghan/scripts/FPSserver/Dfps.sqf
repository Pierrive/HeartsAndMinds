while {true} do {
	uiSleep 3;
	disableSerialization;
	private _disp = uiNamespace getVariable "d_fpsresource";
	if (isNil "_disp" || {isNull _disp}) then {
		"d_fpsresource" cutRsc ["d_fpsresource", "PLAIN"];
		_disp = uiNamespace getVariable "d_fpsresource";
	};
	(_disp displayCtrl 50) ctrlSetText str (round test_serverFPS);
	(_disp displayCtrl 51) ctrlSetText str (round diag_fps);
};