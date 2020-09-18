
/* ----------------------------------------------------------------------------
Function: btc_fnc_ied_create

Description:
    Create wreck and add an IED when it is not a fake. True IED is added to the btc_ied_list to check if player is around.

Parameters:
    _pos - Position of wreck. [Array]
    _type - Shape name of the wreck. [String]
    _dir - Direction of the wreck. [Number]
    _active - Does the wreck has an IED around it. [Boolean]
    _ied_list - Globale variable which store current active IED and delete them when there are removed. [Array]

Returns:
    _wreck - Simple object of the wreck. [Object]
    _type - Shape name of the wreck. [String]
    _ied - The IED object created. If fake, objNull is returned. [Object]

Examples:
    (begin example)
        [_wreck, _type, _ied] = [[0,0,0], "a3\armor_f_beta\apc_tracked_01\apc_tracked_01_rcws_f.p3d", 90, true] call btc_fnc_ied_create;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

params [
    ["_pos", [0, 0, 0], [[]]],
    ["_type", "", [""]],
    ["_dir", 0, [0]],
    ["_active", false, [false]],
    ["_ied_list", btc_ied_list, [[]]]
];

if (btc_debug_log) then {
    [format ["%1", _this], __FILE__, [false]] call btc_fnc_debug_message;
};

//private _wreck = createSimpleObject [_type, _pos];
private _garbage = selectRandom ["Land_Wreck_UAZ_F", "Land_Wreck_Ural_F", "Land_Wreck_Truck_dropside_F", "Land_Wreck_Truck_F", "Land_Wreck_HMMWV_F", "Land_Wreck_Hunter_F", "Land_Wreck_Skodovka_F", "Land_Wreck_Car2_F", "Land_Wreck_Car3_F", "Land_Wreck_Car_F", "Land_Wreck_Offroad_F", "Land_Wreck_Offroad2_F", "Land_Wreck_T72_hull_F", "Land_Wreck_BRDM2_F", "Land_Wreck_BMP2_F", "Land_JunkPile_F", "Land_GarbageContainer_closed_F", "Land_GarbageHeap_01_F", "Land_GarbageHeap_02_F", "Land_GarbageHeap_03_F", "Land_GarbageHeap_04_F", "Land_Misc_Garb_Heap_EP1", "Land_Fortress_01_bricks_v2_F", "Misc_Backpackheap", "Misc_Backpackheap_EP1", "Land_tires_EP1", "Land_Tyres_F", "Land_GarbageBags_F", "Land_WheelieBin_01_F", "Land_GarbageBarrel_01_F", "Land_GarbageWashingMachine_F", "Land_GarbagePallet_F", "Land_JunkPile_F", "Land_GarbageContainer_closed_F", "Land_GarbageHeap_01_F", "Land_GarbageHeap_02_F", "Land_GarbageHeap_03_F", "Land_GarbageHeap_04_F", "Land_Misc_Garb_Heap_EP1", "Land_Fortress_01_bricks_v2_F", "Misc_Backpackheap", "Misc_Backpackheap_EP1", "Land_tires_EP1", "Land_Tyres_F", "Land_GarbageBags_F", "Land_WheelieBin_01_F", "Land_GarbageBarrel_01_F", "Land_GarbageWashingMachine_F", "Land_GarbagePallet_F"];
private _wreck = _garbage createVehicle _pos;
_wreck setPosATL [_pos select 0, _pos select 1, 0];
_wreck setDir _dir;
_wreck setVectorUp surfaceNormal _pos;


[_wreck,["Delete object suspicion",{
	params ["_target", "_caller", "_actionId", "_arguments"];
	deleteVehicle _target;
},[],1.5,true,true,"","true",3,false,"",""]] remoteExec ["addaction",0,true];


if !(_active) exitWith {[_wreck, _type, objNull]};

private _ied = createMine [selectRandom btc_type_ieds_ace, [_pos select 0, _pos select 1, btc_ied_offset], [], 2];
_ied setVectorUp surfaceNormal _pos;

_pos params ["_xx", "_yy", "_zz"];
_ied_list pushBack [_ied, _wreck, [_xx, _yy, _zz + 0.5]];

[_wreck, _type, _ied]
