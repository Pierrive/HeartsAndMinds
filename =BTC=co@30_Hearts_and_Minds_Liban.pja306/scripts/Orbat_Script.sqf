_justPlayers = allPlayers - entities "HeadlessClient_F";
	
while {true} do {
	{
		if !(leader group _x == leader _x && ("ItemGPS" in (assigneditems _x))) then {
			clearGroupIcons (group _x);
		};
		
		if (leader group _x == leader _x && ("ItemGPS" in (assigneditems _x))) then {
			clearGroupIcons (group _x);
			private _grp = group leader _x;
			private _nameGrp = format ["%1", group leader _x];
			typeVeh = "";
			
			if ((vehicle _x) isKindOf "Man") then {
				typeVeh = "b_inf";
			};
			
			if ((vehicle _x) isKindOf "Tank") then {
				typeVeh = "b_armor";
			};
				
			if ((vehicle _x) isKindOf "Car") then {
				typeVeh = "b_support";
			};
				
			if ((vehicle _x) isKindOf "Air") then {
				typeVeh = "b_air";
			};
				
			if (typeVeh isEqualTo "") then {typeVeh = "b_inf"};
				
			[_grp, typeVeh, 1, [0.063,0.467,0.149,1], _nameGrp, true] call F_OrbatGroup;
		};
	} foreach _justPlayers;
	uisleep 20;
};
