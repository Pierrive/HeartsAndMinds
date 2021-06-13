while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "core\fusionsmenu\admin\activate.sqf";


  waitUntil {!alive player};
};