["ace_unconscious", { // global event (runs on all machines)
    params ["_unit", "_isUnconscious"];

    _allHCs = entities "HeadlessClient_F";
    _allHPs = allPlayers - _allHCs;
    _aliveCount = 0;
    _allCount = count _allHPs;

    { 
        if (_x getVariable "ACE_isUnconscious" isEqualTo false) then { _aliveCount = _aliveCount + 1; }; 
    } foreach _allHPs;

    if ((_isUnconscious) && (_unit in _allHPs)) then { 
        (format ["%1 is down!  %2/%3 alive.", name _unit, _aliveCount, _allCount]) remoteExec ["systemChat", 0];
		// condition while deleted _unit getVariable "ACE_isUnconscious" isEqualTo true) || !(alive player)
    };
	
    if ( (! _isUnconscious) && (_unit in _allHPs)) then { 
        (format ["%1 has woken up.  %2/%3 alive.", name _unit, _aliveCount, _allCount]) remoteExec ["systemChat", 0];
    };
    
}] call CBA_fnc_addEventHandler;