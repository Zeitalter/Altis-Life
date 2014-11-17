
while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "scripts\AdminTool\atools\prio1\activate.sqf";


  waitUntil {!alive player};
};
