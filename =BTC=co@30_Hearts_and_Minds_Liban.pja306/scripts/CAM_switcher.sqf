waitUntil {alive player};

while {true} do {
	waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};
	
	if (((vehicle player) == player) && (currentWeapon player != '') && (getPlayerUID player != "76561198010371977")) then {
			player switchCamera "INTERNAL";
	};
	sleep 0.1;
};

/*
while {true} do {
	waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};
	if (((vehicle player) == player) && (currentWeapon player != '') && (getPlayerUID player != "76561198010371977")) then
	{
		player switchCamera "INTERNAL";
	}
	else
	{
		if (player != driver (vehicle player)) then 
		{
			player switchCamera "INTERNAL";
		};
	};
	sleep 0.1;
};
*/