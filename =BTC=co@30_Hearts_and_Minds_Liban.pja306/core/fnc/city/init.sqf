
/* ----------------------------------------------------------------------------
Function: btc_fnc_city_init

Description:
    Create cities all over the map and store those properties.

Parameters:

Returns:

Examples:
    (begin example)
        [] call btc_fnc_city_init;
    (end)

Author:
    Giallustio

---------------------------------------------------------------------------- */

private _locations = configfile >> "cfgworlds" >> worldname >> "names";
private _locationsMe = ["small_cities", "small_cities_1", "small_cities_2", "small_cities_3", "small_cities_4", "small_cities_5", "small_cities_6", "small_cities_7", "small_cities_8", "small_cities_9", "small_cities_10", "small_cities_11", "small_cities_12", "small_cities_13", "small_cities_14", "small_cities_15", "small_cities_16", "small_cities_17", "small_cities_18", "small_cities_19", "small_cities_20", "small_cities_21", "small_cities_22", "small_cities_23", "small_cities_24", "small_cities_25", "small_cities_26", "small_cities_27", "small_cities_28", "small_cities_29", "small_cities_30", "small_cities_31", "small_cities_32", "small_cities_33", "small_cities_34", "small_cities_35", "small_cities_36", "small_cities_37", "small_cities_38", "small_cities_39", "small_cities_40", "small_cities_41", "small_cities_42", "small_cities_43", "small_cities_44", "small_cities_45", "small_cities_46", "small_cities_47", "small_cities_48", "small_cities_49", "small_cities_50", "small_cities_51", "small_cities_52", "small_cities_53", "small_cities_54", "small_cities_55", "small_cities_56", "small_cities_57", "small_cities_58", "small_cities_59", "small_cities_60", "small_cities_61", "small_cities_62", "small_cities_63", "small_cities_64", "small_cities_65", "small_cities_66", "small_cities_67"];

private _cities = ["NameVillage", "NameCity", "NameCityCapital", "NameLocal", "Hill", "Airport"];

private _currentID = (count _locations);

if (btc_p_sea) then {_cities pushBack "NameMarine";};

btc_city_all = [];

for "_i" from 0 to (count _locations - 1) do {
    private _current = _locations select _i;

    private _type = getText (_current >> "type");

    if (_type in _cities) then {
        private _position = getArray (_current >> "position");
        if (surfaceIsWater _position) then {
            if !(_type isEqualTo "NameMarine") then {
                private _church = nearestTerrainObjects [_position, ["CHURCH"], 470];
                if (_church isEqualTo []) then {
                    private _area = 50;
                    for "_i" from 0 to 3 do {
                        private _new_position = [_position, 0, _area, 0.5, 0, -1, 0] call BIS_fnc_findSafePos;
                        if (count _new_position isEqualTo 2) exitWith {
                            _position = _new_position;
                        };
                        _area = _area * 2;
                    };
                } else {
                    _position = getPos (_church select 0);
                };
            };
        };
        private _name = getText(_current >> "name");
        private _radius_x = getNumber(_current >> "RadiusA");
        private _radius_y = getNumber(_current >> "RadiusB");

        if (btc_city_blacklist find _name >= 0) exitWith {};

        //if you want a safe area
        if ((getMarkerPos "BaseOTAN") inArea [_position, 600, 400, 0, false]) exitWith {};

        if (_radius_x < 80 || _radius_y < 80) then {
            _radius_x = 80;
            _radius_y = 80;
        };

        [_position, _type, _name, _radius_x, _radius_y, random 1 > 0.45] call btc_fnc_city_create;
    };
};

for "_i" from 0 to (count _locationsMe - 1) do {
    private _current = _locationsMe select _i;

	private _position = getMarkerPos _current;
	private _type = "NameVillage";
		
	_nameAll = ["Le Village du Cure Chasseur", "Montcuq", "Le Pont du Noyer", "Les 4 Fermes de la Riviere", "Deux Verges", "Longcochon", "Anus", "Arnac la Poste", "La Beviere", "La Trique", "Le Fion", "Monteton", "Bidon", "Charleroy", "Trecon", "Le Bois Tillant", "Le Rocher Morin", "Le Glandeur", "Le Marouinais", "Le Pont Sec", "La Goupille", "Le Gravier", "Le Bois Gama", "La Blancherie", "Fouteau Mabon", "Le Bourny", "Les Brosses", "Le Chatelier", "Le Saint Sauveur", "L'Ardrier", "La Mine", "L'Angerie", "Cul Mont", "Barber", "La Carrie", "Cote a Cote", "Le Grand Bucher", "La Demi Lieu", "La Boussardiere", "Le Chant du Bout", "La Chevre", "La Belle Mouleuse", "La Baleine", "La Pinerie", "La Fistiniere", "Le Bleu du Moine", "La Gaufre Bleu", "Les Deux Noyaus", "La Piloterie", "La Barbarie", "Chibraltar", "Le Village de la Gorge", "Profondeville", "La Trogne", "Mollendall", "Gwenou", "Schiplacken", "La Demi Moule", "Castrer", "Mezieu", "Mezidont", "Angoisse", "Andouille", "Bezons", "Bizou", "Froid Cul", "Fionne"];
		
	private _name = selectRandom _nameAll;
	private _radius_x = 150;
	private _radius_y = 150;
		
	[_position, _type, _name, _radius_x, _radius_y, random 1 > 0.45] call btc_fnc_city_create;
		
};

if !(isNil "btc_custom_loc") then {
    {_x call btc_fnc_city_create} forEach btc_custom_loc;
};
