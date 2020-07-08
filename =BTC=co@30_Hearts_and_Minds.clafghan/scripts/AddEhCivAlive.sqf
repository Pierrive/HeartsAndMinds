private "_this";
_this = _this select 0;

if ((side _this == civilian) and (!isPlayer _this) and (faction _this isEqualTo "LOP_TAK_Civ")) then {
	_this addEventHandler ["Killed", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		btc_rep_malus_civ_killed call btc_fnc_rep_change;
		["Les Français ont tué un CIVIL"] remoteExec ["hintSilent",0,false];
		//parseText format ["<t color='#cc0808' align='center'>%1 has killed a civilian.<br/><t color='#dddddd'>(%2, age %3)</t></t>",(name _instigator), (name _unit), ((round random 50)+20)] remoteExec ["hintSilent",0,false]; 
	}];
};