waituntil {!alive player ; !isnull (finddisplay 46)};

if ((getPlayerUID player) in ["76561198113599115"]) then {
	act = player addaction [("<t color=""#0074E8"">" + ("Tools Menu") +"</t>"),"core\fusionsmenu\admin\tools.sqf","",5,false,true,"","_target isEqualTo _this",0,false,""];
};

player addaction [("<t size='1.5' shadow='2' color=""#0074E8"">" + ("Ouvrir Menu Joueur") +"</t>"),"core\fusionsmenu\admin\toolsClient.sqf", [], 6, false, true, "","alive _target and (getposatl player distance getposatl baseAction) < 100"];
