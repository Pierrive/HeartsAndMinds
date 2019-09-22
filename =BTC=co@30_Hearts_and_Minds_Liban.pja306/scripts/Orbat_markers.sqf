/*
Called using	: 	_VAR = [GROUP, GroupIcon , Icon size, colour, icon text, visible Boolean] call F_OrbatGroup
Example      : { _m1 = [_grp, [_gLevel] call Txu_CORE_fDefine_string , 0.7, _colourChecked, _txt, TRUE] call F_OrbatGroup};
Description	:	Creates a BIS Group Icon, used to mark the location of the group leader in map view and also in game if 3d option is used
Typically this is called twice per group creating 2 icons that fit into one n other.
Once for the nato group size, eg Platoon, Squad etc
Once for the nato group type, eg Infantry, Recon etc
*/

 private ["_grp", "_type", "_colour", "_txt", "_size", "_visible", "_m"];

 _grp 		= _this select 0;
 _type 		= _this select 1;	// Limited to certain cfgclasses
 _size		= _this select 2;	// single number eg 0.7
 _colour	= _this select 3;	// array of type [r,g,b,Alpha]
 _txt		= _this select 4;	// Use short string, ideally 1 char
 _visible	= _this select 5;

 _m = _grp addGroupIcon [_type,[0,0]];
 _grp setgroupIconParams [_colour,_txt,_size,_visible];