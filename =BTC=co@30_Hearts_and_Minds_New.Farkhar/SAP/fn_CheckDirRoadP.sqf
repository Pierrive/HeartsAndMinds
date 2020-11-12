params [
	["_player", (selectRandom allplayers)]
];

private _ArrayPosAmbush = [];

if ( ((getdir (vehicle _player)) >= 0) && ((getdir (vehicle _player)) < 22.5)) then { //N NE
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 224), ((getPos (vehicle _player) select 1) + 973), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 22.5) && ((getdir (vehicle _player)) < 45)) then { // NE E
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 616), ((getPos (vehicle _player) select 1) + 788), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 45) && ((getdir (vehicle _player)) < 67.5)) then { // E SE
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 862), ((getPos (vehicle _player) select 1) + 504), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 67.5) && ((getdir (vehicle _player)) < 90)) then { // SE S
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 981), ((getPos (vehicle _player) select 1) + 186), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 90) && ((getdir (vehicle _player)) < 112.5)) then { // S SW
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 979), ((getPos (vehicle _player) select 1) - 200), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 112.5) && ((getdir (vehicle _player)) < 135)) then { // SW W
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 839), ((getPos (vehicle _player) select 1) - 544), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 135) && ((getdir (vehicle _player)) < 157.5)) then { // W NW
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 607), ((getPos (vehicle _player) select 1) - 793), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 157.5) && ((getdir (vehicle _player)) < 180)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) + 220), ((getPos (vehicle _player) select 1) - 971), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 180) && ((getdir (vehicle _player)) < 202.5)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 204), ((getPos (vehicle _player) select 1) - 980), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 202.5) && ((getdir (vehicle _player)) < 225)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 544), ((getPos (vehicle _player) select 1) - 839), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 225) && ((getdir (vehicle _player)) < 247.5)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 806), ((getPos (vehicle _player) select 1) - 591), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 247.5) && ((getdir (vehicle _player)) < 270)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 979), ((getPos (vehicle _player) select 1) - 211), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 270) && ((getdir (vehicle _player)) < 292.5)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 960), ((getPos (vehicle _player) select 1) + 269), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 292.5) && ((getdir (vehicle _player)) < 315)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 758), ((getPos (vehicle _player) select 1) + 645), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 315) && ((getdir (vehicle _player)) < 337.5)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 463), ((getPos (vehicle _player) select 1) + 885), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

if ( ((getdir (vehicle _player)) >= 337.5) && ((getdir (vehicle _player)) < 360)) then { // NW N
	_selectPosAmbush = [((getPos (vehicle _player) select 0) - 149), ((getPos (vehicle _player) select 1) + 987), (getPos (vehicle _player) select 2)];
	_ArrayPosAmbush pushBack _selectPosAmbush;
};

_PosOnRoad = (_ArrayPosAmbush select 0) nearRoads 100;

_PosOnRoad