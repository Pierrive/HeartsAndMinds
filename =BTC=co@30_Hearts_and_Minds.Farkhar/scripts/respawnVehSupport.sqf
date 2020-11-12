if (isServer) then {
	params ["_veh"];
	
	[_veh] spawn {
		params ["_veh"];
		
		_typeHeli = typeOf _veh;
		_veh setdammage 0;
		_veh allowDammage false;
		
		if (_typeHeli == "RHS_UH60M_d") then {
			_veh addItemCargoGlobal ['MineDetector', 1];
			_veh addItemCargoGlobal ['SmokeShellWhite', 20];
			_veh addItemCargoGlobal ['SmokeShellGreen', 10];
			_veh addItemCargoGlobal ['ACE_M14', 10];
			_veh addItemCargoGlobal ['DemoCharge_Remote_Mag', 5];
			_veh addItemCargoGlobal ['ACE_EarPlugs', 4];			
			_veh addItemCargoGlobal ['ACE_CableTie', 6];
			_veh addItemCargoGlobal ['ACE_DefusalKit', 2];
		};

		if (_typeHeli == "B_Heli_Light_01_F") then {
			_veh addItemCargoGlobal ['MineDetector', 1];
			_veh addItemCargoGlobal ['SmokeShellWhite', 20];
			_veh addItemCargoGlobal ['SmokeShellGreen', 10];
			_veh addItemCargoGlobal ['ACE_M14', 10];
			_veh addItemCargoGlobal ['DemoCharge_Remote_Mag', 5];
			_veh addItemCargoGlobal ['ACE_EarPlugs', 4];			
			_veh addItemCargoGlobal ['ACE_CableTie', 6];
			_veh addItemCargoGlobal ['ACE_DefusalKit', 2];
		};		

		if (_typeHeli == "RHS_UH1Y_FFAR_d") then {
			_veh addItemCargoGlobal ['MineDetector', 1];
			_veh addItemCargoGlobal ['SmokeShellWhite', 20];
			_veh addItemCargoGlobal ['SmokeShellGreen', 10];
			_veh addItemCargoGlobal ['ACE_M14', 10];
			_veh addItemCargoGlobal ['DemoCharge_Remote_Mag', 5];
			_veh addItemCargoGlobal ['ACE_EarPlugs', 4];			
			_veh addItemCargoGlobal ['ACE_CableTie', 6];
			_veh addItemCargoGlobal ['ACE_DefusalKit', 2];
		};		

		if (_typeHeli == "RHS_CH_47F_10") then {
			_veh addItemCargoGlobal ['MineDetector', 1];
			_veh addItemCargoGlobal ['SmokeShellWhite', 20];
			_veh addItemCargoGlobal ['SmokeShellGreen', 10];
			_veh addItemCargoGlobal ['ACE_M14', 10];
			_veh addItemCargoGlobal ['DemoCharge_Remote_Mag', 5];
			_veh addItemCargoGlobal ['ACE_EarPlugs', 4];			
			_veh addItemCargoGlobal ['ACE_CableTie', 6];
			_veh addItemCargoGlobal ['ACE_DefusalKit', 2];
		};	
		
		if (_typeHeli == "RHS_UH60M_MEV2") then {
			clearWeaponCargoGlobal _veh;
			clearMagazineCargoGlobal _veh;
			clearItemCargoGlobal _veh;
			_veh setVariable ['ace_medical_medicClass', 1];
			_veh addItemCargoGlobal ['ACE_fieldDressing', 40];
			_veh addItemCargoGlobal ['ACE_elasticBandage', 40];
			_veh addItemCargoGlobal ['ACE_bloodIV', 10];
			_veh addItemCargoGlobal ['ACE_bodyBag', 4];
			_veh addItemCargoGlobal ['ACE_CableTie', 6];
			_veh addItemCargoGlobal ['ACE_DefusalKit', 2];
			_veh addItemCargoGlobal ['ACE_epinephrine', 20];
			_veh addItemCargoGlobal ['ACE_morphine', 20];
			_veh addItemCargoGlobal ['ACE_packingBandage', 40];
			_veh addItemCargoGlobal ['ACE_personalAidKit', 4];
			_veh addItemCargoGlobal ['ACE_plasmaIV', 10];
			_veh addItemCargoGlobal ['ACE_salineIV', 10];
			_veh addItemCargoGlobal ['ACE_tourniquet', 10];
			_veh addItemCargoGlobal ['ACE_surgicalKit', 1];
			_veh addItemCargoGlobal ['ACE_EarPlugs', 4];
			_veh addItemCargoGlobal ['MineDetector', 1];
			_veh addItemCargoGlobal ['SmokeShellWhite', 20];
			_veh addItemCargoGlobal ['SmokeShellGreen', 10];
			_veh addItemCargoGlobal ['ACE_M14', 10];
			_veh addItemCargoGlobal ['DemoCharge_Remote_Mag', 5];
			_veh addItemCargoGlobal ['ACE_Clacker', 5];
			_veh addItemCargoGlobal ['adv_aceCPR_AED', 1];
		};

		sleep 2;
		_veh setdammage 0;
		_veh allowDammage false;
	};
};

