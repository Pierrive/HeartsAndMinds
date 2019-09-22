//FPS
[] execVM "scripts\FpsServer\SerCliFps.sqf";
[] execVM "scripts\FpsServer\Dfps.sqf";

//orbat
F_OrbatGroup = compileFinal preprocessFileLineNumbers "scripts\Orbat_markers.sqf";

//BFT group
setGroupIconsVisible  [true,false];
[[],"scripts\Orbat_Script.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];