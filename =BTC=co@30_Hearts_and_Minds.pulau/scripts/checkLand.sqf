params ["_vehicleSpawn"];

private _positionVehicle = getpos _vehicleSpawn;
private _checkVehicleOnLand = nearestObjects [_positionVehicle, [typeOf _vehicleSpawn], 10];

if ((count _checkVehicleOnLand) > 0) exitWith {deleteVehicle (_checkVehicleOnLand select 0)};
