cutText ["Godmode activated for 3min.", "PLAIN"];
player removeAllEventHandlers "handleDamage";
player addEventHandler ["handleDamage", {false}];
sleep 180;
cutText ["Godmode Disactivated", "PLAIN"];
player addEventHandler ["handleDamage", {true}];
	player removeAction line1;
	player removeAction line2;
	player removeAction godmode;
	player removeAction tele;
	player removeAction guns;
	player removeAction mainveh;
	player removeAction cgod;
	player removeAction hplay;