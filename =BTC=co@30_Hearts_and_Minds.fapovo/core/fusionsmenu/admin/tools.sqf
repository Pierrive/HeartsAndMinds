_pathtotools = "core\fusionsmenu\admin\tools\";
_pathtoweapon = "core\fusionsmenu\admin\weapons\";
_pathtovehicles = "core\fusionsmenu\admin\veh\";
_pathtoscripts= "core\fusionsmenu\admin\script\";

_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';
_EXECscript3 = 'player execVM "'+_pathtoweapon+'%1"';
_EXECscript5 = 'player execVM "'+_pathtovehicles+'%1"';
_EXECscript6 = 'player execVM "'+_pathtoscripts+'%1"';


if ((getPlayerUID player) in ["76561198113599115"]) then { //all admins
	if ((getPlayerUID player) in ["76561198113599115"]) then { //Admins Go Here aswell
		adminmenu =
		[
			["Fusions Menu",true],
				["Tools", [4], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["Cars", [4], "#USER:VehicleMenu", -5, [["expression", ""]], "1", "1"],
				["Weapons", [5], "#USER:WeaponMenu", -5, [["expression", ""]], "1", "1"],
				["Other Scripts", [5], "#USER:ScriptsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
adminmenu =
[
	["",true],
		//["Toggle Debug", [2], "", -5, [["expression", format[_execdebug,"playerstats.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];};
ToolsMenu =
[
	["Tools",true],
        ["Teleport", [2],  "", -5, [["expression", format[_EXECscript1,"teleport.sqf"]]], "1", "1"],
		["Reload Headless", [3],  "", -5, [["expression", format[_EXECscript1,"RepeatHeadless.sqf"]]], "1", "1"],	
		["Teleport Me To Player", [4],  "", -5, [["expression", format[_EXECscript1,"tpMeToP.sqf"]]], "1", "1"],
        ["Teleport Player To Me", [5],  "", -5, [["expression", format[_EXECscript1,"tptome.sqf"]]], "1", "1"],
		["Car God Mode", [6],  "", -5, [["expression", format[_EXECscript1,"cargod.sqf"]]], "1", "1"],
		["Heal Self", [7],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		["Heal Player(s)", [8],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["God Mode", [9],  "", -5, [["expression", format[_EXECscript1,"god.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu =
[
	["Weapons",true],
		["Taliban Arme", [2],  "", -5, [["expression", format[_EXECscript3,"TalibanArme.sqf"]]], "1", "1"],
		["Taliban Civil", [3],  "", -5, [["expression", format[_EXECscript3,"TalibanCivil.sqf"]]], "1", "1"],
		["Civ Africain", [4],  "", -5, [["expression", format[_EXECscript3,"CivAfricain.sqf"]]], "1", "1"],
		["Gaz Men", [5],  "", -5, [["expression", format[_EXECscript3,"GazMen.sqf"]]], "1", "1"],
		["Medic", [6],  "", -5, [["expression", format[_EXECscript3,"Medic.sqf"]]], "1", "1"],
		["Officier", [7],  "", -5, [["expression", format[_EXECscript3,"Officier.sqf"]]], "1", "1"],
		["CivIDAP", [8],  "", -5, [["expression", format[_EXECscript3,"CivIDAP.sqf"]]], "1", "1"],			
			["Next page", [12], "#USER:WeaponMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

WeaponMenu2 = 
[
	["Weapons 2",true],
	//Add Weapons Here Gave another page because it could get a little confusing :P
		["", [2],  "", -5, [["expression", format[_EXECscript3,""]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
		
];
VehicleMenu = 
[
	["Vehicles",true],
		["ATV", [2],  "", -5, [["expression", format[_EXECscript5,"ATV.sqf"]]], "1", "1"],
		["Hunter Armed", [3],  "", -5, [["expression", format[_EXECscript5,"hunter.sqf"]]], "1", "1"],
		["Offroad Truck HMG .50", [4],  "", -5, [["expression", format[_EXECscript5,"offroad.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Next page", [12], "#USER:VehicleMenu2", -5, [["expression", ""]], "1", "1"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
VehicleMenu2 = 
[
	["Vehicles 2",true],
		["Example", [2],  "", -5, [["expression", format[_EXECscript5,"Example.sqf"]]], "1", "1"],
		["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
ScriptsMenu = 
[
	["Scripts", true],
		["Renfort Français", [2],  "", -5, [["expression", format[_EXECscript6,"renfortFR.sqf"]]], "1", "1"],
		["Go Para", [3],  "", -5, [["expression", format[_EXECscript6,"goPara.sqf"]]], "1", "1"],
		["Briefing", [4],  "", -5, [["expression", format[_EXECscript6,"briefingStart.sqf"]]], "1", "1"],
		["", [5],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [6],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [7],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [8],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [9],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [10],  "", -5, [["expression", format[_EXECscript6,""]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];
	
showCommandingMenu "#USER:adminmenu";