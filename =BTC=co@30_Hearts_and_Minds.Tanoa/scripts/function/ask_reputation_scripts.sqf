/*

_action = [
	"Ask_Reputation", 
	"Demander la réputation", 
	"\A3\ui_f\data\igui\cfg\simpleTasks\types\talk_ca.paa", 
	{[_this select 0] spawn fnc_ask_reputation;}, 
	{Alive (_this select 0) && {[_this select 0] call ace_common_fnc_isAwake}}
] call ace_interact_menu_fnc_createAction;
[civRepBase, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

*/


params [
    ["_man", objNull, [objNull]]
];

btc_int_ask_data = nil;
["btc_global_reputation"] remoteExecCall ["btc_fnc_int_ask_var", 2];

waitUntil {!(isNil "btc_int_ask_data")};

private _rep = btc_int_ask_data;

private _info_type = switch (true) do {
    case (_rep < 200): {localize "STR_BTC_HAM_CON_INFO_ASKREP_VLOW"}; //very low
    case (_rep >= 200 && _rep < 500): {localize "STR_BTC_HAM_CON_INFO_ASKREP_LOW"}; //low
    case (_rep >= 500 && _rep < 750): {toLower localize "str_a3_firing_drills_rule_normal"}; //normal
    case (_rep >= 750): {localize "STR_BTC_HAM_CON_INFO_ASKREP_HIGH"}; //high
};

private _text = selectRandom [
    localize "STR_BTC_HAM_CON_INFO_ASKREP_ASK1", //Sir, your reputation is
    localize "STR_BTC_HAM_CON_INFO_ASKREP_ASK2", //Hello ! Your reputation is
    localize "STR_BTC_HAM_CON_INFO_ASKREP_ASK3"  //I think your reputation is
];

[name _man, format ["%1 %2. (%3)", _text, _info_type, _rep]] call btc_fnc_showSubtitle;
