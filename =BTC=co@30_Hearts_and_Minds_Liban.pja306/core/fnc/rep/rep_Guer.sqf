/* ----------------------------------------------------------------------------
Function: btc_fnc_rep_Guer

Description:
	change relationship with resistance

Parameters:

Returns:

Examples:
    (begin example)
        [] call btc_fnc_rep_Guer;
    (end)

Author:
    Pierrive

---------------------------------------------------------------------------- */

while {true} do {

	if (btc_global_reputation < 500) then {
		Resistance setFriend [East, 0];
		East setFriend [Resistance, 0];
		Resistance setFriend [West, 0];
		West setFriend [Resistance, 0];
	};
/*	
	if (btc_global_reputation > 300 && btc_global_reputation < 500) then {
		Resistance setFriend [East, 1];
		East setFriend [Resistance, 1];
		Resistance setFriend [West, 1];
		West setFriend [Resistance, 1];
	};
*/
	if (btc_global_reputation >= 500) then {
		Resistance setFriend [East, 0];
		East setFriend [Resistance, 0];
		Resistance setFriend [West, 1];
		West setFriend [Resistance, 1];
	};
	
	uisleep 60;
};