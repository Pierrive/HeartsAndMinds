_pathtotoolsClient = "core\fusionsmenu\admin\toolsClient\";

_EXECscriptClient1 = 'player execVM "'+_pathtotoolsClient+'%1"';

if (alive vehicle player) then {
	if (alive vehicle player) then {
		clientmenu =
		[
			["Fusions Client Menu",true],
				["Ouvrir Sous Menu", [2], "#USER:ToolsMenuClient", -5, [["expression", ""]], "1", "1"],
				["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
clientmenu =
[
	["",true],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];};

ToolsMenuClient =
[
	["Outils",true],
        ["Charger Eguipement Joueur", [2],  "", -5, [["expression", format[_EXECscriptClient1,"ChargeLoadoutPlayer.sqf"]]], "1", "1"],
		["Ouvrir Arsenal ACE", [3],  "", -5, [["expression", format[_EXECscriptClient1,"OpenACEarsenal.sqf"]]], "1", "1"],	
		["Preslot : Classique", [4],  "", -5, [["expression", format[_EXECscriptClient1,"Classique.sqf"]]], "1", "1"],
		["Preslot : TP", [5],  "", -5, [["expression", format[_EXECscriptClient1,"TireurPrecision.sqf"]]], "1", "1"],	
        ["Preslot : Medecin", [6],  "", -5, [["expression", format[_EXECscriptClient1,"Medic.sqf"]]], "1", "1"],
		["Preslot : AT Léger", [7],  "", -5, [["expression", format[_EXECscriptClient1,"ATL.sqf"]]], "1", "1"],
		["Preslot : MG", [8],  "", -5, [["expression", format[_EXECscriptClient1,"MG.sqf"]]], "1", "1"],
		["Preslot : GL", [9],  "", -5, [["expression", format[_EXECscriptClient1,"GL.sqf"]]], "1", "1"],
		["Preslot : Sapeur", [10],  "", -5, [["expression", format[_EXECscriptClient1,"Sapeur.sqf"]]], "1", "1"],
		["Preslot : Sniper", [11],  "", -5, [["expression", format[_EXECscriptClient1,"Sniper.sqf"]]], "1", "1"],
		["Preslot : Ajout Item ACE dans Sac", [12],  "", -5, [["expression", format[_EXECscriptClient1,"AddAceItem.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
	
showCommandingMenu "#USER:clientmenu";