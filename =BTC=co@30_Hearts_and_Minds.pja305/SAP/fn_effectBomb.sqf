private _bombix = _this select 0;
private _size_rad = _this select 1;
private _jdam_bomb = _this select 2; 

if ((player distance _bombix < 500) && ((getPosATL player select 2) < 50)) then {
	enableCamShake true;
	_power_sh = linearConversion [0, 500, player distance _bombix, 15, 0.1, true];
	addCamShake [_power_sh,2, 50];
};

[_jdam_bomb,_size_rad] spawn {
	//fumée
	private ["_jdam_bomb","_size_rad"];
	_jdam_bomb = _this select 0;
	_size_rad = _this select 1;
	_val_fum = "#particlesource" createVehicleLocal getPosATL _jdam_bomb; 
	_val_fum setParticleCircle [_size_rad, [10,10,0]]; 
	_val_fum setParticleRandom [3,[0,0,30],[-6,-6,1],0,0.5,[0, 0, 0, 0.1],1,0]; 
	_val_fum setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal_02.p3d",8,0,24,1], "", "Billboard", 1, 6, [0,0,10],[0,0,0],5,3,1,0.1, [3,4,5], [[0, 0, 0, 1],[0.349,0.231,0.122,0.5],[0.349,0.231,0.122,0]], [1], 1, 0, "", "",_jdam_bomb]; 
	_val_fum setDropInterval 0.0001; 
	sleep 0.5; 
	deleteVehicle _val_fum;
};

[_jdam_bomb] spawn {
	//sable
	private ["_jdam_bomb"]; 
	_sursa_storm = _this select 0; 
	_fum_negru = "#particlesource" createVehicleLocal getPosATL _sursa_storm;  
	_fum_negru setParticleRandom [5,[0,0,15],[5,5,5],7,2,[0,0,0,0.1],0,0]; 
	_fum_negru setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1, 9, [0,0,0], [0,0,5], 45, 2, 1, 0.1, [3.5,2.5,5,7],[[0,0,0,0.5],[0.3,0.2,0.1,0.7],[0.9,0.75,0.6,0.8],[0,0,0,0]],[0.08], 0.1, 0.1, "", "", _sursa_storm];
	_fum_negru setDropInterval 0.005; 
	sleep 1; 
	deleteVehicle _fum_negru
};

[_jdam_bomb] spawn {
	//fum white
	private ["_jdam_bomb"];
	_jdam_bomb = _this select 0;
	_fum_buc = "#particlesource" createVehicleLocal getpos _jdam_bomb; 
	_fum_buc setParticleCircle [0, [0, 0, 0]]; 
	_fum_buc setParticleRandom [1,[0.1,0.1,0],[0.5,0.5,0], 0.3, 2.5, [0, 0, 0, 0.5], 0, 0]; 
	_fum_buc setParticleParams [["\A3\data_f\cl_basic.p3d", 1, 0, 1], "", "Billboard", 1,3+random 7, [0,0,0],[0,0,1],0,10.2,7.9,0.01,[0.5,1,2],[[1,1,1,1],[1,1,1,0.5],[1,1,1,0]], [0.125], 1, 0, "", "", _jdam_bomb]; 
	_fum_buc setDropInterval 0.01;  
	sleep 3; 
	deleteVehicle _fum_buc
};

[_jdam_bomb] spawn {
	_loc = getpos (_this select 0); 
	_aslLoc = [_loc select 0, _loc select 1, getTerrainHeightASL [_loc select 0, _loc select 1]]; 
	_col = [0,0,0]; 
	_c1 = _col select 0; 
	_c2 = _col select 1; 
	_c3 = _col select 2; 

	_rocks1 = "#particlesource" createVehicleLocal _aslLoc; 
	_rocks1 setposasl _aslLoc; 
	_rocks1 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Mud.p3d", 1, 0, 1], "", "SpaceObject", 1, 12.5, [0, 0, 0], [0, 0, 15], 1, 100, 7.9, 1, [.45, .45], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _aslLoc,0,false,0.3]; 
	_rocks1 setParticleRandom [0, [1, 1, 0], [20, 20, 15], 3, 1, [0, 0, 0, 0.1], 0, 0]; 
	_rocks1 setDropInterval 0.01; 
	_rocks1 setParticleCircle [0, [0, 0, 0]]; 

	_rocks2 = "#particlesource" createVehicleLocal _aslLoc; 
	_rocks2 setposasl _aslLoc; 
	_rocks2 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Mud.p3d", 1, 0, 1], "", "SpaceObject", 1, 12.5, [0, 0, 0], [0, 0, 15], 5, 100, 7.9, 1, [.27, .27], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _aslLoc,0,false,0.3]; 
	_rocks2 setParticleRandom [0, [1, 1, 0], [25, 25, 15], 3, 2, [0, 0, 0, 0.1], 0, 0]; 
	_rocks2 setDropInterval 0.01; 
	_rocks2 setParticleCircle [0, [0, 0, 0]]; 

	_rocks3 = "#particlesource" createVehicleLocal _aslLoc; 
	_rocks3 setposasl _aslLoc; 
	_rocks3 setParticleParams [["\A3\data_f\ParticleEffects\Universal\Mud.p3d", 1, 0, 1], "", "SpaceObject", 1, 12.5, [0, 0, 0], [0, 0, 15], 5, 100, 7.9, 1, [.09, .09], [[0.1, 0.1, 0.1, 1], [0.25, 0.25, 0.25, 0.5], [0.5, 0.5, 0.5, 0]], [0.08], 1, 0, "", "", _aslLoc,0,false,0.3]; 
	_rocks3 setParticleRandom [0, [1, 1, 0], [30, 30, 15], 3, 3, [0, 0, 0, 0.1], 0, 0]; 
	_rocks3 setDropInterval 0.01; 
	_rocks3 setParticleCircle [0, [0, 0, 0]]; 
	_rocks = [_rocks1,_rocks2, _rocks3]; 
	sleep 0.3; 
	
	{ 
	deletevehicle _x;
	} foreach _rocks;
};

