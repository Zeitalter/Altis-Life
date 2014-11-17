while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "scripts\AdminTool\atools\prio3\activate.sqf";


  waitUntil {!alive player};
};