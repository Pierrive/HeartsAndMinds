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
        _VoiceArr = ["Person0","Person1","Person2","Person3"];
        _randomVoice = selectRandom _VoiceArr;

        _timeDown = time;
        _unit setVariable ["timeDown",_timeDown];

        _handle = [_unit, _isUnconscious, _randomVoice, _timeDown] spawn {
            _unit = (_this select 0);
            _isUnconscious = (_this select 1);
            _randomVoice = (_this select 2);
            _timeDown = (_this select 3);

            while { (_unit getVariable "ACE_isUnconscious" isEqualTo true) && (_unit getVariable "timeDown" isEqualTo _timeDown) } do {
                // Create Marker at dead player position
                _downMarker = createMarker [name _unit, position _unit];
                _downMarker setMarkerShape "ICON";
                _downMarker setMarkerType "hd_dot";
                _downMarker setMarkerColor "ColorRed";
                _downMarker setMarkerText (name _unit);

                // Select associated player voice
                _P = switch _randomVoice do {
                    case "Person0" : { "P0" };
                    case "Person1" : { "P1" };
                    case "Person2" : { "P2" };
                    case "Person3" : { "P3" };
                };

                // Select random sound for the associated player voice
                _N = switch _P do {
                    case "P0" : { selectRandom [13,14,15,16,17,18,19,20] };
                    case "P1" : { selectRandom [19,20,21,22,23,24,25,26,27,28,29,30,31,32,33] };
                    case "P2" : { selectRandom [14,15,16,17,18,19,20,21] };
                    case "P3" : { selectRandom [10,11,12,13,14,15,16,17,18,19,20] };
                };

                // Play Sound at dead player position
                playSound3D ["A3\Sounds_F\Characters\human-sfx\" + _randomVoice + "\" + _P + "_moan_" + str(_N) + "_words.wss", _unit, false, getPosASL _unit, 5, 1, 30];

                // Sleep before next run
                sleep 15;

                // Delete marker in preparation for recreation
                deleteMarker (name _unit);
            };
        };
    };
    if ( (! _isUnconscious) && (_unit in _allHPs)) then { 
        (format ["%1 has woken up.  %2/%3 alive.", name _unit, _aliveCount, _allCount]) remoteExec ["systemChat", 0];
        deleteMarker (name _unit);
        _unit setVariable ["timeDown", nil];
    };
    
}] call CBA_fnc_addEventHandler;