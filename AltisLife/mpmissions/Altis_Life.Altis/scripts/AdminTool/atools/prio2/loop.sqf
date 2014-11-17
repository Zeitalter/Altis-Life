while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "scripts\AdminTool\atools\prio2\activate.sqf";


  waitUntil {!alive player};
};