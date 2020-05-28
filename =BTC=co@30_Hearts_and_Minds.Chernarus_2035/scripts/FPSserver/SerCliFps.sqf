while {true} do {
	if (isDedicated || isServer) then {
		test_broadcastServerFPS = true;
		waitUntil {
			// Send the current Server FPS to every client, stored in the variable "test_serverFPS".
			test_serverFPS = diag_fps;
			publicVariable "test_serverFPS";
			sleep 3;
			!test_broadcastServerFPS
		};
	};
};

