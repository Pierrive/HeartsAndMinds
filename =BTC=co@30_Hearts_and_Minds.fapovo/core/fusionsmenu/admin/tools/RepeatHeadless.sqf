if ((getPlayerUID player) in ["76561198113599115"]) then {
	hint "Relancement Headless";
};

ExitHeadlessScript = true;
publicVariable "ExitHeadlessScript";

sleep 10;

fn_StopScript = {terminate HeadlessScript};
[] remoteExecCall ["fn_StopScript",[0,2],true];

sleep 5;

_recurrent = true;
publicVariable "_recurrent";
ExitHeadlessScript = false;
publicVariable "ExitHeadlessScript";

sleep 5;

HeadlessScript = [[true,5,false,false,15,1,true,["AresGroupe","CyclopeGroupe","PegaseGroupe","ZeusGroup"]], "core\Server\WerthlesHeadless.sqf"] remoteExec ["execVM",2,true];

sleep 40;

[] remoteExecCall ["fn_StopScript",[0,2],true];

sleep 5;

_recurrent = false;
publicVariable "_recurrent";
HeadlessScript = [[false,5,false,false,15,1,true,["AresGroupe","CyclopeGroupe","PegaseGroupe","ZeusGroup"]], "core\Server\WerthlesHeadless.sqf"] remoteExec ["execVM",2,true];

if ((getPlayerUID player) in ["76561198113599115"]) then {
	hint "Relancement Headless done";
};